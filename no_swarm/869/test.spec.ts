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
    const array0 = new Float32Array([-0.5, 0.0, -0.75, -0.25, 0.0, 0.5, 0.25, 0.25, 0.5, -0.25, 0.25, -0.5, 0.25, -0.25, 0.5, 0.0, 0.5, 0.75, 0.5, -0.5, -0.25, 0.75, -0.5, 0.0, -0.5, 0.75, 0.5, -0.75, -0.5, 0.25, 0.0, -1.0, 0.25, -0.75, -0.25, 0.75, -0.75, -0.25, 0.25, 0.5, 0.5, 0.25, 1.0, -0.75, 0.0, -0.5, 0.75, -1.0, 1.0, 0.0, 0.5, 0.5, 0.75, -0.25, 0.75, 0.25, -1.0, -1.0, 0.5, 0.0, 1.0, 0.5, -0.75, 0.75, 1.0, 0.75, 0.75, 1.0, 1.0, -0.75, 0.25, 0.75, 0.5, 0.0, 0.5, -0.25, 1.0, 0.5, 0.5, 0.25, -0.25, -1.0, -0.25, -0.25, 0.25, 1.0, 0.25, 0.0, -0.25, 0.75, -0.25, 0.0, 0.0, 1.0, -0.25, 1.0, 1.0, -0.75, 0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array1 = new Float32Array([0.5, -0.5, 0.25, -1.0, -0.25, -0.25, 0.0, 0.0, -0.5, 0.5, 0.5, 0.5, -1.0, 0.75, 1.0, -0.5, -0.75, 0.75, -0.25, -0.75, -0.5, 0.75, -0.25, -0.5, 0.25, -0.75, 1.0, 0.25, 0.25, -1.0, -0.25, 0.0, 0.0, -0.75, -0.25, 0.75, -0.75, -0.25, 1.0, -1.0, 0.75, -0.75, -0.25, 1.0, -0.75, 0.5, -0.25, -0.75, -1.0, 0.75, 1.0, 0.25, -0.5, 0.0, 1.0, 1.0, 1.0, 0.75, -1.0, -1.0, -0.25, 1.0, 0.5, -0.25, 0.75, 0.5, 0.75, -0.25, 0.25, 0.25, 0.5, 0.0, 0.75, -0.5, -1.0, -0.75, 0.5, -0.5, 0.5, 0.75, -0.25, -0.25, -1.0, -0.75, -0.25, -1.0, 1.0, 1.0, 0.5, -0.75, -0.75, 0.25, -0.5, 0.25, 0.0, 0.5, -1.0, 0.25, 0.75, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.destroy();
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    device50.pushErrorScope("validation");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query400.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder401.popDebugGroup();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
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
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array2 = new Float32Array([0.5, -1.0, 0.25, 0.0, 0.75, -0.75, 1.0, -0.5, 0.75, 0.75, -0.25, 1.0, 0.75, -0.25, 0.0, 1.0, 0.5, 1.0, 1.0, 0.25, -1.0, -1.0, 0.75, 1.0, 0.0, 1.0, -0.5, 0.5, 0.0, -0.5, 0.75, 0.0, 0.75, -1.0, 0.0, -0.5, 0.25, 0.5, 0.75, 0.75, -1.0, 0.5, -1.0, -0.75, 0.75, -0.75, 0.5, 1.0, -0.5, 0.75, -0.5, -0.75, -0.75, -0.5, 0.75, 0.0, 0.25, 0.25, -1.0, -0.5, 0.0, 0.5, 1.0, 0.75, -0.5, -1.0, 0.5, 0.5, -0.25, -0.75, 0.5, 0.25, 0.0, -0.75, 0.75, 1.0, 0.75, 0.0, -1.0, -0.5, 0.75, -0.5, -0.75, 0.25, -0.25, 0.25, -1.0, -0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.25, ]);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
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
        occlusionQuerySet: query401
    });
    query400.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4020.executeBundles([])
    render_pass_encoder4020.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    
    query401.destroy()
    texture500.destroy();
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    buffer400.destroy()
    render_pass_encoder4020.pushDebugGroup("group_marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4020.setPipeline(render_pipeline400);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_pass_encoder4020.insertDebugMarker("marker");
    compute_pass_encoder4010.popDebugGroup()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
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
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder4030.insertDebugMarker("marker")
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
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
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    render_pass_encoder4040.setPipeline(render_pipeline405);
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    query400.destroy()
    
    
    query402.destroy()
    
    
    render_pass_encoder4020.setStencilReference(1);
    buffer402.destroy()
    
    query402.destroy()
    query402.destroy()
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    query402.destroy()
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_pass_encoder4020.setStencilReference(1);
    query501.destroy()
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query403.destroy()
    render_pass_encoder4020.setStencilReference(1);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    compute_pass_encoder4000.popDebugGroup()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.pushErrorScope("validation");
    
    
    
    
    
    const array3 = new Float32Array([-0.5, 0.25, 0.75, 1.0, -0.75, 1.0, 0.25, -0.5, -1.0, 1.0, -0.25, -0.75, -0.25, -0.25, 0.75, -0.5, -0.25, 0.0, 0.25, 0.0, 0.5, -0.25, 0.0, 0.0, 0.5, -0.5, 0.0, -0.75, 0.0, -0.75, 1.0, 0.5, 0.0, 0.25, 0.0, 1.0, 0.75, -1.0, 1.0, -0.5, -0.75, 0.75, -0.25, 0.25, 1.0, 0.75, -0.75, 0.5, 0.25, 0.25, -0.25, 1.0, 0.5, -0.75, 0.25, 0.5, -0.5, -0.25, -0.5, 0.25, 0.75, 0.0, 0.75, -0.25, -1.0, -0.5, -1.0, 0.25, 0.5, -0.75, -0.75, -0.5, -1.0, 0.25, 0.75, 0.75, 1.0, 0.75, 0.75, 0.0, -0.5, -0.75, -0.75, 0.5, 0.5, -0.75, -0.25, -0.25, -0.25, 1.0, -1.0, -0.25, -0.75, 1.0, 0.0, 0.25, 0.5, -0.5, 0.0, -0.25, ]);
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    render_pass_encoder4020.insertDebugMarker("marker");
    query401.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4040.pushDebugGroup("group_marker");
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([1.0, 0.5, 1.0, -0.5, 1.0, -0.75, -1.0, 0.0, -0.75, -0.75, 0.5, -0.75, -0.75, -0.25, -1.0, 0.0, 0.75, -0.5, 0.25, 0.5, -0.75, -0.5, 0.5, 0.0, -1.0, 0.75, -1.0, -0.25, 0.25, -1.0, -0.25, -0.75, 1.0, -0.75, 0.0, 0.25, -0.5, -0.75, -1.0, -0.25, -1.0, 0.0, 0.75, 0.25, -0.75, -1.0, 0.5, -0.5, 0.5, 0.25, 0.0, 0.0, -1.0, 0.25, 0.5, -0.5, 1.0, 0.0, -0.25, 0.0, -0.5, 0.5, 0.75, 0.0, 1.0, 0.5, 1.0, 1.0, -0.5, -1.0, 0.5, 0.0, -0.5, -1.0, 1.0, 0.5, 1.0, 1.0, 0.25, 0.0, 0.0, -0.5, 0.5, 0.5, 0.5, 0.75, 0.75, -0.75, -0.75, -0.5, 1.0, -1.0, -0.25, -1.0, -0.5, -1.0, -0.5, -0.75, 0.5, 1.0, ]);
    query501.destroy()
    
    render_pass_encoder4020.setStencilReference(1);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4020.insertDebugMarker("marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    query500.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group403);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const command_buffer501 = command_encoder501.finish();
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    buffer406.destroy()
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture400.destroy();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer500.destroy()
    buffer409.destroy()
    
    query500.destroy()
    buffer501.destroy()
    render_pass_encoder4040.popDebugGroup();
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4020.popDebugGroup();
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    query501.destroy()
    buffer407.destroy()
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    buffer405.destroy()
    render_pass_encoder4040.insertDebugMarker("marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4030.insertDebugMarker("marker")
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    query500.destroy()
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    command_encoder502.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    query402.destroy()
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder4020.setStencilReference(1);
    
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer4011.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_pass_encoder4020.setStencilReference(1);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    compute_pass_encoder4030.insertDebugMarker("marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    query400.destroy()
    buffer404.destroy()
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
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
    query600.destroy()
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    query401.destroy()
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    const command_buffer503 = command_encoder503.finish();
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    query400.destroy()
    render_pass_encoder4040.pushDebugGroup("group_marker");
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    
    
    
    query502.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query500.destroy()
    
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
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
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_buffer100 = command_encoder100.finish();
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: query402
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    device50.pushErrorScope("out-of-memory");
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
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
    buffer408.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
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
    buffer4010.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder4010.popDebugGroup()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture403.destroy();
    render_pass_encoder4050.setPipeline(render_pipeline401);
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    texture100.destroy();
    device60.pushErrorScope("internal");
    render_bundle_encoder500.popDebugGroup();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder5000.popDebugGroup()
    buffer100.destroy()
    
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    query600.destroy()
    query404.destroy()
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
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4050.setBindGroup(0, bind_group404);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    buffer403.destroy()
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder4020.insertDebugMarker("marker");
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4030.popDebugGroup()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    render_pass_encoder1010.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.popDebugGroup();
    
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout502,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout505,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4040.setStencilReference(1);
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
    
    buffer401.destroy()
    
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout504,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    texture402.destroy();
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder102.setPipeline(render_pipeline102);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    
    
    texture501.destroy();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer600.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    device40.queue.writeTexture({ texture: texture404 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const render_pipeline4013 = device40.createRenderPipeline({
        label: "render_pipeline4013",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    texture404.destroy();
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
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    buffer502.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_bundle_encoder500.insertDebugMarker("marker");
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    texture405.destroy();
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    compute_pass_encoder4000.popDebugGroup()
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer505, 0);
    compute_pass_encoder5000.end();
    const command_buffer500 = command_encoder500.finish();
    device10.queue.submit([command_buffer100, ]);
}