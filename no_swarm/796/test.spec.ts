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
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([0.5, 0.5, -1.0, -0.25, 1.0, -0.5, -0.25, 0.75, -0.75, 0.5, 0.0, -0.5, 0.5, 1.0, 1.0, 0.25, 1.0, 0.25, -0.5, -1.0, -0.25, -0.75, 0.25, 0.5, 1.0, 0.25, -0.25, -0.75, -0.5, -1.0, 0.0, 0.0, -0.75, -0.25, -0.5, 0.0, -1.0, 0.0, 0.0, 1.0, 0.0, 0.25, -0.25, -1.0, 0.25, -0.75, -0.75, 0.25, -1.0, -0.5, 1.0, -0.5, -1.0, 1.0, -0.75, 0.5, 0.0, 0.25, 0.5, 1.0, 0.5, 0.25, 0.5, 0.25, -0.5, 1.0, -0.25, -0.75, 1.0, -0.25, 1.0, -0.75, 0.25, -1.0, -0.25, -0.25, 0.5, 0.0, 0.0, -0.75, 1.0, 0.75, -0.5, -0.25, -0.75, 1.0, 0.5, -0.75, 1.0, 0.0, 1.0, 0.0, 0.75, 0.75, 0.75, 0.5, 0.5, -0.5, -0.75, -0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([1.0, 1.0, 0.5, -0.5, 0.0, 0.0, -1.0, 0.0, 0.5, 1.0, 0.25, 0.25, 0.25, 0.5, 0.25, 0.75, 0.75, 0.75, 0.5, 0.75, 1.0, -0.75, 0.5, 1.0, -1.0, 0.25, 1.0, 0.75, -0.75, 0.0, -0.25, -1.0, -0.75, -0.75, 0.0, -0.5, 0.25, 0.0, -1.0, -0.5, 0.25, 1.0, -0.5, -0.75, 1.0, -1.0, -0.5, 0.75, 0.5, 0.5, -0.75, -0.75, 0.25, -0.5, 0.75, 0.25, 0.75, 0.75, -0.5, 0.25, -1.0, 1.0, -0.5, 0.25, 0.25, -0.75, -0.75, 0.75, 0.25, 1.0, 0.75, 0.25, 1.0, -1.0, 0.25, -0.5, 0.25, -1.0, 1.0, 1.0, -0.25, 0.0, -0.5, -1.0, 0.25, -1.0, -0.5, 0.0, -0.75, -0.25, -0.25, 0.75, 0.75, 1.0, -0.5, 0.75, -1.0, -0.75, -0.5, -0.75, ]);
    device20.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.submit([command_buffer200, ]);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([-0.75, 0.25, 0.75, -1.0, -0.5, 0.0, -0.5, 0.0, 0.0, -0.75, -0.75, -0.25, 0.5, 0.75, 0.0, 0.25, 0.5, 0.5, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, -0.75, -0.5, -0.5, 0.25, -0.5, 1.0, -1.0, -1.0, 0.0, 1.0, -0.75, 0.25, 0.0, -0.75, 1.0, 0.25, 0.75, -0.5, 0.5, -1.0, 1.0, -1.0, -0.5, -1.0, 0.0, 0.0, -1.0, -1.0, -0.25, 0.0, -0.75, 1.0, -0.25, 1.0, -0.75, 0.0, 0.25, 0.75, 0.0, 1.0, 0.75, 0.5, -0.75, -0.75, 0.25, -0.25, 1.0, -0.5, 0.5, -0.5, 0.0, 0.5, -0.25, -0.75, -0.75, -0.5, 0.25, 0.5, 0.0, -0.75, -1.0, 0.5, 0.5, -0.75, 0.0, -0.75, -1.0, -1.0, 0.0, 0.5, 0.0, -0.5, 0.25, -0.5, -0.25, 0.25, ]);
    
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder200.popDebugGroup();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer200.destroy()
    
    
    device20.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.pushErrorScope("out-of-memory");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query100.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device30.pushErrorScope("internal");
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture100.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    query100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device10.pushErrorScope("validation");
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
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer100.destroy()
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const array3 = new Float32Array([0.75, 0.5, 0.0, -0.5, -1.0, 0.25, 0.25, -0.5, 0.75, -0.75, 0.25, -1.0, -1.0, 1.0, 0.5, -0.5, -0.5, -1.0, -1.0, -1.0, -0.25, -1.0, 0.75, 0.75, 0.25, 1.0, -0.5, 0.5, 0.75, -0.75, 0.5, -0.25, -0.25, 0.75, 0.0, 1.0, 0.75, -0.25, 1.0, -1.0, 1.0, 0.0, 0.25, 0.75, -1.0, 0.75, -0.75, 1.0, -1.0, 1.0, -1.0, -0.75, 0.25, 0.0, -0.5, 0.5, 1.0, -0.75, 0.25, -1.0, -0.25, -0.25, -0.5, -1.0, 0.75, 0.0, 0.75, -1.0, -1.0, 0.25, -0.75, 1.0, 0.0, -1.0, 0.75, -0.75, -0.5, -0.25, -0.75, 0.5, -1.0, 0.0, 0.25, 0.25, -1.0, 0.75, 0.25, -0.25, 0.5, 0.0, 0.5, 0.5, 0.0, 0.75, -0.25, 0.25, -0.75, -0.75, 0.75, -0.25, ]);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const array4 = new Float32Array([-1.0, 1.0, -1.0, 0.0, 0.75, 0.0, -0.25, 0.0, 1.0, -0.75, -0.5, 0.25, 0.75, 1.0, 1.0, -0.25, 1.0, -0.25, -0.75, 0.5, 0.25, -0.75, 0.0, -0.75, 0.75, 0.75, 0.75, -0.75, -1.0, -0.25, -0.25, 0.0, 0.25, -0.75, 0.0, -0.5, -0.5, -0.25, 1.0, -1.0, 0.5, -1.0, 0.0, 0.0, 0.25, 1.0, -0.25, 0.25, 0.5, 1.0, 0.5, -0.5, 0.5, 0.0, 0.75, 0.25, -0.5, 1.0, -0.5, -0.75, -1.0, 0.25, 0.0, 0.25, -1.0, -0.5, 1.0, 0.75, 0.75, 0.25, 0.75, -0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.75, -1.0, 0.0, 0.25, -0.25, -1.0, -1.0, 0.75, -0.25, -0.25, -0.75, 0.25, 0.75, 0.0, 1.0, 1.0, 0.5, 0.0, 1.0, 1.0, -0.25, 1.0, 0.5, ]);
    
    const command_buffer301 = command_encoder301.finish();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder3000.popDebugGroup()
    query102.destroy()
    device40.destroy();
    query102.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline101);
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder102.setPipeline(render_pipeline100);
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    buffer102.destroy()
    command_encoder303.popDebugGroup()
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    texture300.destroy();
    
    command_encoder304.insertDebugMarker("mymarker");
    const array5 = new Float32Array([-0.25, 0.25, 0.0, 0.25, 0.0, 0.25, 0.0, 0.5, 0.5, -1.0, -0.25, -0.25, 0.5, 0.0, 0.5, 0.0, -0.5, -0.75, 0.0, 0.5, 0.75, -0.25, -0.25, 0.0, 1.0, 0.75, 0.5, 0.25, 1.0, -0.5, -0.5, -1.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.5, -0.5, -1.0, 0.5, 0.75, -1.0, 0.5, 0.5, 1.0, 0.25, -0.25, 1.0, 0.25, 0.5, -0.25, 0.5, -1.0, -0.5, -0.5, 0.5, 1.0, -1.0, 0.75, -1.0, 0.0, 0.0, 0.75, 0.0, 1.0, 0.5, -0.5, 0.25, 0.0, -1.0, 0.25, 1.0, 0.75, -0.25, -0.75, 0.0, -0.5, 0.0, 0.75, 0.75, -0.75, 0.0, 0.25, -0.5, 1.0, 0.75, -1.0, 0.25, 0.25, 0.5, 0.75, -0.75, 0.5, -0.25, 0.75, 0.25, -0.75, 1.0, 0.0, ]);
    const array6 = new Float32Array([0.25, -0.5, -1.0, -1.0, -0.75, 0.75, 0.75, 1.0, -1.0, -0.25, 1.0, -0.5, 0.75, 1.0, 0.75, -0.75, 0.5, -0.25, 0.0, 0.5, 0.25, 1.0, -0.25, 1.0, 1.0, 0.75, 0.75, -1.0, -0.25, 0.75, 0.0, 1.0, 1.0, 0.0, 0.25, -0.5, -1.0, 0.75, 0.0, -0.5, 0.0, 0.75, -0.5, 0.75, 0.0, 0.75, -0.75, 1.0, -0.25, 0.25, 0.0, 0.5, 0.75, 0.75, -0.25, -1.0, -1.0, 0.0, -0.25, -0.75, 1.0, -1.0, 1.0, 0.5, 0.0, 0.5, -0.75, 0.0, 1.0, 0.0, -0.75, -0.5, -0.75, 0.5, 1.0, -0.5, -0.75, -0.75, 0.25, -0.25, -0.75, -0.25, 0.25, -0.5, -0.75, 0.25, -1.0, 0.5, 1.0, 1.0, 1.0, -0.5, 0.75, 0.5, 0.25, -1.0, -0.5, -1.0, -0.75, -0.5, ]);
    query101.destroy()
    
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
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
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
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    compute_pass_encoder3000.dispatchWorkgroups(100);
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
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.popDebugGroup();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer103.destroy()
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    
    query100.destroy()
    command_encoder303.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    const command_buffer101 = command_encoder101.finish();
    
    
    device10.queue.submit([command_buffer101, ]);
    
    
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    buffer105.destroy()
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    compute_pass_encoder3020.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    query300.destroy()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    compute_pass_encoder3040.setPipeline(compute_pipeline301);
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    
    device30.pushErrorScope("validation");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder303.clearBuffer(buffer303);
    
    compute_pass_encoder3020.dispatchWorkgroups(100);
    command_encoder303.clearBuffer(buffer304);
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
    command_encoder303.clearBuffer(buffer304);
    buffer300.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    buffer306.destroy()
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3020.popDebugGroup()
    render_bundle_encoder102.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    
    const array7 = new Float32Array([0.0, 0.75, -0.5, 1.0, 0.75, -1.0, 1.0, -0.75, 1.0, 1.0, -0.75, 0.0, 0.5, 0.0, 0.5, -0.25, -0.25, -0.75, 0.5, 0.0, -0.25, 0.5, -1.0, 0.0, -1.0, -0.5, 1.0, -1.0, -0.25, 0.5, 0.75, 0.5, 0.5, 0.25, 1.0, 0.5, 0.25, 1.0, 1.0, 0.75, 0.0, 0.0, 0.25, -0.75, 0.75, 0.0, 0.75, -0.25, 0.5, 1.0, -0.25, 0.0, 0.25, -0.25, -0.5, -0.75, 0.25, -0.75, 1.0, 1.0, 0.25, -0.5, 0.75, 0.75, 0.0, 0.5, -0.25, -1.0, 0.0, 0.75, -1.0, 0.5, -0.25, 0.25, -1.0, -0.5, -0.75, 1.0, -1.0, -0.5, -0.5, 0.0, 0.0, 0.0, 0.0, -0.5, -0.75, 0.75, 0.0, -0.25, -0.5, -0.25, 0.25, 0.0, -0.75, 0.0, -1.0, -0.75, 0.75, 0.25, ]);
    compute_pass_encoder3020.end();
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    buffer302.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder302.popDebugGroup()
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
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
    command_encoder302.clearBuffer(buffer304);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group302);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    
    buffer301.destroy()
    buffer305.destroy()
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group303);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    query103.destroy()
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    buffer3011.destroy()
    const array8 = new Float32Array([0.75, 0.25, 0.5, 1.0, 0.25, -0.5, 1.0, 0.5, -0.5, 1.0, -1.0, 1.0, 0.5, -0.25, -0.25, 0.75, 0.25, 1.0, -0.5, 1.0, 0.25, 0.75, 0.75, -0.75, -0.5, -0.5, 0.25, -1.0, 0.5, 0.75, 0.5, 0.75, -1.0, -0.75, 0.0, -0.75, 0.75, -0.25, 0.5, -1.0, 0.5, -0.75, 0.25, -0.25, 0.0, 0.75, -0.75, -0.5, 0.0, 0.25, 0.25, 0.25, 0.25, 1.0, 0.0, -0.25, -0.25, 1.0, 0.5, 0.75, 0.75, 0.75, 0.0, 0.75, -0.75, -0.5, -0.5, -0.5, 0.0, 1.0, -0.25, 0.25, 0.0, -1.0, 0.0, 0.75, -0.75, 0.5, -1.0, -1.0, 0.5, 0.75, -0.75, -0.75, -1.0, 0.25, 0.75, 1.0, -0.75, 0.0, 0.75, 0.5, -0.75, 1.0, -1.0, -0.5, -0.25, 0.75, 0.5, -0.25, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    query100.destroy()
    texture101.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    command_encoder302.clearBuffer(buffer304);
    buffer104.destroy()
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device30.queue.writeBuffer(buffer304, 0, array8, 0, array8.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    command_encoder302.clearBuffer(buffer304);
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    command_encoder305.pushDebugGroup("mygroupmarker")
    
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder302.popDebugGroup()
    
    buffer309.destroy()
    
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder305.clearBuffer(buffer3012);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    const array9 = new Float32Array([0.5, -0.25, -1.0, -0.5, 1.0, -0.5, 0.5, -0.75, -0.25, 0.0, 0.5, 0.5, -0.5, -0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -1.0, 0.25, 0.75, 0.0, -0.75, -0.75, 0.5, -1.0, -0.25, -0.75, -0.75, -0.5, 0.25, -1.0, -0.75, -1.0, -0.5, -1.0, 1.0, 0.0, -1.0, 0.75, -0.5, 0.75, -0.25, 0.5, -0.25, -0.5, 0.0, -0.75, 0.75, -0.75, -1.0, -1.0, 0.25, -0.25, 0.5, 0.25, -0.75, -1.0, 1.0, -0.5, 0.75, -0.75, 0.5, 0.0, 1.0, 0.5, -0.5, -0.75, 0.5, -1.0, 0.0, 0.0, 0.25, -0.25, 0.0, -0.75, 0.0, -0.5, -0.75, -0.25, -1.0, -1.0, -0.25, -0.75, 0.75, -0.75, -1.0, -1.0, -0.5, 0.25, 0.5, 0.5, -0.25, -0.5, -1.0, -0.25, 0.5, 1.0, 0.5, ]);
    
    device30.queue.writeBuffer(buffer3012, 0, array3, 0, array3.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query103.destroy()
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    buffer304.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder302.clearBuffer(buffer3012);
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const array10 = new Float32Array([-1.0, -1.0, 0.75, -0.5, 1.0, 0.75, 0.75, 0.75, 0.0, 0.75, -0.75, 0.5, -0.25, -1.0, -0.5, 1.0, 0.25, 0.75, 0.5, 0.5, -0.5, 0.5, 1.0, -0.75, -1.0, -0.5, 0.75, 0.5, -0.5, -0.25, 0.25, 0.75, 0.75, 0.5, 0.5, -0.25, 1.0, -0.5, 0.75, -0.75, -0.75, 0.0, 0.5, 0.0, 0.5, 0.25, 0.75, -0.5, -0.25, 0.5, -0.5, -0.75, 0.5, -0.5, 0.25, 0.75, 0.25, 0.0, 0.25, 1.0, -0.25, 0.25, 0.5, 1.0, -0.25, -0.5, 0.25, 0.5, 0.25, 0.75, 0.5, 1.0, 0.0, 0.25, 0.75, -0.25, -0.5, -0.5, -0.5, -1.0, 1.0, -0.25, 0.75, 0.5, 1.0, 0.0, 0.25, 0.75, 0.25, -0.75, 0.75, 0.25, -1.0, -0.75, -0.75, 1.0, -0.25, 0.5, -0.5, 0.75, ]);
    command_encoder302.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    query101.destroy()
    
    
    device50.destroy();
    
    device30.queue.writeBuffer(buffer3012, 0, array3, 0, array3.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder305.copyBufferToBuffer(
        buffer307,
        0,
        buffer3012,
        0,
        400
    );
    compute_pass_encoder3040.dispatchWorkgroups(100);
    
    const command_buffer306 = command_encoder306.finish();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer3012, 0, array8, 0, array8.length);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3013, 0);
    device30.queue.writeBuffer(buffer3013, 0, array3, 0, array3.length);
    command_encoder305.clearBuffer(buffer3013);
    device30.queue.writeBuffer(buffer3013, 0, array8, 0, array8.length);
    device10.queue.writeTexture({ texture: texture102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer303.destroy()
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    command_encoder302.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder307.copyBufferToBuffer(
        buffer307,
        0,
        buffer3013,
        0,
        400
    );
    command_encoder302.clearBuffer(buffer3012);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer3012, 0, array8, 0, array8.length);
    
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    render_bundle_encoder102.popDebugGroup();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    buffer307.destroy()
    device30.queue.writeBuffer(buffer3012, 0, array5, 0, array5.length);
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    command_encoder302.clearBuffer(buffer3012);
    buffer308.destroy()
    device30.queue.writeBuffer(buffer3012, 0, array7, 0, array7.length);
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    texture301.destroy();
    device30.queue.writeBuffer(buffer3013, 0, array10, 0, array10.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer306, ]);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
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
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3050.setPipeline(compute_pipeline300);
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer3012, 0, array10, 0, array10.length);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    buffer3013.destroy()
    
    command_encoder307.clearBuffer(buffer3012);
    device10.queue.writeTexture({ texture: texture102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder307.insertDebugMarker("mymarker");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder102.popDebugGroup();
    device30.queue.writeBuffer(buffer3012, 0, array9, 0, array9.length);
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder3030.popDebugGroup()
    buffer108.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    texture302.destroy();
    render_pass_encoder1020.setPipeline(render_pipeline107);
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
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
    
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder307.insertDebugMarker("mymarker");
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group304);
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query303.destroy()
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query104.destroy()
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    compute_pass_encoder3000.popDebugGroup()
    command_encoder302.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder3000.end();
    compute_pass_encoder3040.end();
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3030.end();
    const command_buffer304 = command_encoder304.finish();
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group305);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    const command_buffer307 = command_encoder307.finish();
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group104);
    device30.queue.submit([command_buffer301, command_buffer304, command_buffer307, ]);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1013, 0);
    command_encoder303.popDebugGroup()
    compute_pass_encoder1000.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3050.end();
    command_encoder305.popDebugGroup()
    command_encoder100.popDebugGroup()
    const command_buffer305 = command_encoder305.finish();
    const command_buffer303 = command_encoder303.finish();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer305, ]);
}