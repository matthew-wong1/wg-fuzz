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
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device20.destroy();
    
    
    
    device00.pushErrorScope("internal");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query000.destroy()
    
    device00.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("out-of-memory");
    
    const array0 = new Float32Array([-0.25, 0.25, 0.75, 0.75, 0.5, 0.75, -0.25, 0.75, 0.75, 0.75, 0.5, -1.0, -0.25, -0.25, -0.75, -0.5, 1.0, 0.0, 0.5, -1.0, -1.0, 0.25, -0.25, -1.0, -1.0, -0.25, -0.25, -1.0, -0.25, -0.25, -0.25, -1.0, 1.0, -0.5, 0.75, -0.75, 0.75, 0.0, -0.75, 0.0, 1.0, -0.25, 0.75, -0.25, -0.5, -0.5, -1.0, 1.0, -0.75, 0.0, 1.0, 0.5, -0.5, 1.0, 1.0, -0.25, -0.25, 0.5, 0.5, 0.25, 1.0, 0.5, 0.75, -0.5, 0.25, 0.75, -0.25, 0.0, -0.25, 0.25, -0.25, -0.5, -1.0, -0.5, 0.5, -1.0, 1.0, -0.5, 0.25, 0.75, 0.5, -0.25, 0.5, 0.25, 0.75, 0.75, 0.5, -0.75, 0.25, 0.75, 0.5, -0.75, -0.5, 0.75, 0.5, 0.5, 0.5, 0.25, 1.0, -1.0, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    device50.pushErrorScope("out-of-memory");
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query500.destroy()
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder500.insertDebugMarker("mymarker");
    const command_buffer500 = command_encoder500.finish();
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    
    
    
    device40.pushErrorScope("internal");
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const array1 = new Float32Array([-0.5, -0.75, 1.0, 0.25, -0.75, 0.25, 0.0, 0.0, -0.25, 0.25, -1.0, -0.75, -0.25, -0.5, -1.0, 0.5, 0.5, -1.0, 0.5, -0.75, 0.5, 0.75, 0.25, -1.0, -1.0, 0.75, 0.75, 0.0, -1.0, -1.0, 0.75, -0.5, -0.25, 0.0, 0.5, -0.5, 0.0, -0.75, 0.75, 0.5, -1.0, 0.0, -0.75, -1.0, -1.0, 1.0, 0.75, -0.25, 0.75, 0.5, -0.75, -0.5, -1.0, -0.5, -0.5, 1.0, 0.25, 0.75, 0.5, -0.25, 0.5, -1.0, -1.0, 0.5, 0.25, 0.25, -1.0, 0.0, -0.75, 1.0, 0.5, -1.0, 0.25, -0.75, -0.25, 0.75, 0.5, -0.75, 0.25, -0.5, -0.5, 0.5, 0.25, 0.25, -0.25, -0.5, -0.25, 0.0, -0.25, 0.0, -0.5, -0.75, -0.25, 1.0, 1.0, 1.0, -1.0, -0.5, -0.5, 0.0, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array2 = new Float32Array([0.25, 1.0, 0.25, -0.25, 0.75, -0.5, 0.5, -0.25, -1.0, -0.25, -0.75, -0.5, -0.75, 1.0, 0.75, 0.5, 1.0, -0.75, 0.0, 0.5, -0.75, 1.0, 0.5, -0.5, -0.5, -0.25, -0.75, -1.0, -0.75, -1.0, -0.75, -1.0, -0.5, 0.0, 1.0, 0.25, -0.75, 0.5, 0.75, -0.5, -0.5, 1.0, -0.75, -1.0, 0.0, 0.25, 0.0, 0.0, 0.25, -0.5, 0.75, 1.0, 0.75, 0.0, -0.75, -0.5, -0.5, -0.25, 0.25, 0.5, 0.5, 0.75, 1.0, 0.0, -0.5, 0.25, -1.0, -0.5, 0.25, 0.5, 0.75, -0.75, 0.0, -1.0, -1.0, -1.0, -0.75, 1.0, 0.25, 0.0, 0.75, 0.75, 1.0, 1.0, 0.25, 0.5, -0.5, -0.5, 0.75, 0.5, -0.75, 0.25, 0.75, 1.0, 0.75, -0.25, -0.5, 1.0, 1.0, 0.75, ]);
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder502.insertDebugMarker("mymarker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    render_bundle_encoder401.setPipeline(render_pipeline402);
    
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    device40.pushErrorScope("validation");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
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
    const command_buffer600 = command_encoder600.finish();
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder402.setPipeline(render_pipeline403);
    
    
    buffer402.destroy()
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query500.destroy()
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
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: query600
    });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_pass_encoder6010.executeBundles([])
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
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
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const array3 = new Float32Array([-0.5, -0.75, -1.0, 1.0, 1.0, 0.0, -0.25, 0.25, -1.0, 0.75, 0.5, 0.75, -0.5, 0.25, -0.5, -0.5, 0.25, 0.0, -1.0, -0.5, 0.75, 0.75, -1.0, 0.75, 1.0, -0.5, 0.5, 0.25, -1.0, 0.0, 0.0, -0.5, -0.25, -1.0, -0.5, 1.0, 0.25, 0.75, -0.5, 0.0, 0.5, 0.25, -0.25, -0.75, 0.75, -1.0, -0.25, 0.5, 0.25, -0.5, -0.5, -0.5, 0.75, -0.25, -0.75, -0.5, -1.0, -0.75, -0.5, -0.75, 0.5, -1.0, -1.0, 0.25, -0.5, -0.25, -0.25, 0.0, -0.5, -0.25, 0.0, 1.0, 0.75, 0.75, 0.25, -0.75, -0.25, 0.75, 1.0, -0.25, -0.75, -0.5, -0.5, 0.25, -1.0, 0.0, -0.5, -0.5, -1.0, -0.5, -0.75, -1.0, -0.75, 0.75, -0.75, 0.75, 1.0, -0.25, -0.25, 0.75, ]);
    query500.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    texture401.destroy();
    
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder6010.pushDebugGroup("group_marker");
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_pass_encoder6010.insertDebugMarker("marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6010.beginOcclusionQuery(0)
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
    buffer403.destroy()
    const command_buffer505 = command_encoder505.finish();
    query401.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.popDebugGroup();
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
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
    
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query401.destroy()
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6010.setStencilReference(1);
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5040.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    query500.destroy()
    
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    render_pass_encoder5040.executeBundles([])
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group402);
    
    compute_pass_encoder5030.insertDebugMarker("marker")
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder401.popDebugGroup()
    query401.destroy()
    buffer406.destroy()
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
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
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    texture602.destroy();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query402
    });
    query601.destroy()
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query402.destroy()
    render_pass_encoder5040.executeBundles([])
    
    
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder5040.insertDebugMarker("marker");
    query402.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder6010.popDebugGroup();
    buffer404.destroy()
    render_pass_encoder4020.setPipeline(render_pipeline404);
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout503]
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
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
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder402.popDebugGroup();
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5040.setStencilReference(1);
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    
    render_bundle_encoder401.popDebugGroup();
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    
    query402.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.setPipeline(render_pipeline402);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    
    render_pass_encoder5040.executeBundles([])
    query402.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder701.pushDebugGroup("mygroupmarker")
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    render_pass_encoder4020.setStencilReference(1);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout505]
    });
    texture500.destroy();
    device50.pushErrorScope("validation");
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
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
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    buffer501.destroy()
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([0.25, -1.0, 0.5, 0.0, 0.75, -0.25, 0.25, -1.0, 0.25, 0.0, 0.25, 0.25, -0.75, -0.75, -0.75, 0.0, 1.0, -1.0, 0.25, 0.0, -1.0, -0.75, -0.75, 0.0, -0.5, -0.5, 0.75, -0.5, 0.75, -0.5, -0.25, 0.0, -0.5, 0.0, -0.5, 0.25, 1.0, -0.25, 0.75, -0.5, 1.0, -1.0, 0.25, -0.5, 1.0, 0.75, -0.75, 1.0, 0.25, -0.25, -1.0, -1.0, -0.5, -0.25, 0.25, 1.0, 0.75, -0.25, 0.25, 0.25, 1.0, -1.0, 1.0, -0.75, 0.5, -0.5, -0.5, -0.5, -0.75, -1.0, 0.75, 0.0, 0.25, -1.0, -1.0, 0.0, -0.5, 0.5, -0.5, 0.0, 0.5, -0.5, -0.75, 0.75, 0.5, -0.25, -0.75, -0.75, 0.5, 0.0, 1.0, -0.25, -1.0, -0.75, -0.5, 1.0, 1.0, 0.75, 0.0, -0.5, ]);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
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
    
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const texture_view6040 = texture604.createView({ label: "texture_view6040" });
    render_pass_encoder4010.beginOcclusionQuery(0)
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    texture400.destroy();
    
    texture604.destroy();
    compute_pass_encoder5030.setPipeline(compute_pipeline502);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder6010.pushDebugGroup("group_marker");
    texture603.destroy();
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    query401.destroy()
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer407, 0, array4, 0, array4.length);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const bind_group_layout507 = device50.createBindGroupLayout({ 
        label: "bind_group_layout507",
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
    const command_buffer702 = command_encoder702.finish();
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group403);
    command_encoder701.popDebugGroup()
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    texture700.destroy();
    texture601.destroy();
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout404,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    query601.destroy()
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.queue.writeBuffer(buffer407, 0, array4, 0, array4.length);
    render_pass_encoder4010.endOcclusionQuery()
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.executeBundles([])
    
    
    device80.pushErrorScope("validation");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5030.setBindGroup(0, bind_group500);
    command_encoder701.insertDebugMarker("mymarker");
    command_encoder800.insertDebugMarker("mymarker");
    render_bundle_encoder600.popDebugGroup();
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5040.pushDebugGroup("group_marker");
    
    render_pass_encoder6010.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    compute_pass_encoder5020.setPipeline(compute_pipeline500);
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    query601.destroy()
    compute_pass_encoder5020.popDebugGroup()
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder703.insertDebugMarker("mymarker");
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile(__dirname + '/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder4010.beginOcclusionQuery(1)
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout506]
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder400.popDebugGroup();
    compute_pass_encoder4000.insertDebugMarker("marker")
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4020.setStencilReference(1);
    
    compute_pass_encoder5030.popDebugGroup()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    buffer800.destroy()
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer506.destroy()
    device40.queue.writeBuffer(buffer407, 0, array3, 0, array3.length);
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    texture600.destroy();
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout403,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const bind_group_layout508 = device50.createBindGroupLayout({ 
        label: "bind_group_layout508",
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
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout506,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout508]
    });
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5020.setBindGroup(0, bind_group501);
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder6010.popDebugGroup();
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group404);
    render_pass_encoder5040.setPipeline(render_pipeline500);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer509, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer509, 0);
    render_pass_encoder4010.endOcclusionQuery()
    const uint32_5030 = new Uint32Array(3);

    uint32_5030[0] = 100;
    uint32_5030[1] = 1;
    uint32_5030[2] = 1;

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5010, 0, uint32_5030, 0, uint32_5030.length);

    compute_pass_encoder5030.dispatchWorkgroupsIndirect(buffer5010, 0);
    compute_pass_encoder5020.end();
    const command_buffer800 = command_encoder800.finish();
    device50.queue.submit([command_buffer505, ]);
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
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_pass_encoder5040.setBindGroup(0, bind_group502);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group405);
    const command_buffer502 = command_encoder502.finish();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer703 = command_encoder703.finish();
    compute_pass_encoder4000.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5030.end();
    command_encoder400.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer704 = command_encoder704.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder5040.setVertexBuffer(0, buffer501);
    render_pass_encoder5040.drawIndirect(buffer509, 0);
    device70.queue.submit([command_buffer702, ]);
    device40.queue.submit([command_buffer400, ]);
    device70.queue.submit([command_buffer703, ]);
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder6010.endOcclusionQuery()
    device70.queue.submit([command_buffer704, ]);
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    render_pass_encoder5040.end();
    device80.queue.submit([command_buffer800, ]);
    const command_buffer504 = command_encoder504.finish();
}