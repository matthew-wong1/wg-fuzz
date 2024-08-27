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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder200.insertDebugMarker("mymarker");
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query200.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("internal");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query200.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const array0 = new Float32Array([-1.0, -0.5, -0.5, -0.5, -0.5, -0.75, 1.0, 1.0, -1.0, 1.0, 0.0, -0.25, -0.75, 0.0, -0.5, 0.0, -1.0, 0.75, 1.0, 0.25, 0.0, -0.75, 0.25, 0.5, 0.75, -1.0, -0.25, -0.25, -1.0, -0.75, -0.25, 0.5, -0.25, -1.0, -0.5, 0.75, 0.5, -0.25, -1.0, 0.0, -0.5, 1.0, -0.75, 0.5, -0.25, 0.0, -0.25, 0.75, -0.5, 0.75, 0.0, -0.75, 0.25, 1.0, -0.25, 0.5, 0.0, 0.5, -0.25, 0.5, 0.25, -0.25, 0.75, 0.5, -0.5, -1.0, 0.0, -1.0, -0.25, -0.25, -0.25, 0.0, -0.5, 0.0, 1.0, -1.0, 1.0, 0.25, 0.5, 0.0, 0.0, -0.5, -0.75, 0.5, -1.0, 0.25, 0.25, -0.75, -0.75, 1.0, -0.5, -0.25, 1.0, 0.5, 0.75, 0.25, -0.25, -0.25, -0.75, -1.0, ]);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    texture100.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    device10.destroy();
    command_encoder200.insertDebugMarker("mymarker");
    const array1 = new Float32Array([-0.75, 0.5, 0.75, -0.25, 0.25, 0.5, 1.0, -1.0, 1.0, -1.0, 0.5, 1.0, -0.75, 1.0, 0.25, -0.25, -0.75, 0.0, 0.0, 0.75, 0.5, -0.25, -0.75, 0.0, 0.5, 0.0, -0.5, -0.25, -1.0, 1.0, -1.0, -0.75, -1.0, -1.0, 0.0, 0.5, 0.0, -0.5, 0.75, 1.0, -0.5, -0.25, 0.25, 0.75, 0.75, 0.0, 1.0, -0.75, 0.75, -0.5, 0.75, -0.5, 0.25, 0.25, -0.75, -0.25, -0.25, -0.75, 1.0, 0.75, 0.0, 0.5, -0.75, -1.0, -0.75, 1.0, 0.25, 1.0, 0.25, 0.75, 0.0, -0.5, -0.25, 0.0, -0.25, -1.0, 0.75, 0.0, -0.5, -1.0, 0.25, -1.0, 0.0, -0.25, -0.5, 1.0, 1.0, -0.75, 0.25, -1.0, -0.5, 0.5, 0.25, -0.5, -1.0, -0.75, -0.5, -0.25, -1.0, -1.0, ]);
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    render_bundle_encoder200.popDebugGroup();
    query200.destroy()
    device20.pushErrorScope("out-of-memory");
    
    
    buffer200.destroy()
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    
    device20.pushErrorScope("internal");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    const array2 = new Float32Array([0.75, 0.75, 1.0, 0.75, 0.0, 1.0, 0.75, 0.0, -0.5, 0.0, 0.25, -0.75, 0.0, 0.5, -1.0, -1.0, 0.75, -0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 0.5, 0.25, 0.75, -0.75, 0.25, 0.25, 1.0, -0.5, 0.75, 0.75, -0.25, -1.0, 0.0, -0.5, 1.0, -0.75, 0.5, -1.0, 0.25, 0.5, 0.25, 1.0, 0.25, 0.0, 0.75, 0.25, 1.0, 0.75, -0.5, 0.0, 0.75, 0.75, 0.5, 1.0, -0.5, 0.5, -0.25, -0.25, -0.5, -0.5, 1.0, 0.25, -0.5, 0.5, -0.75, 0.5, -0.5, -0.75, -0.25, -0.5, 0.0, 0.75, -0.5, -1.0, 0.5, 0.25, -1.0, -0.75, 0.25, 0.5, -0.75, 0.0, -0.25, -0.5, -0.5, 0.25, 0.5, -0.75, 1.0, 0.0, -0.5, 0.25, 0.5, 0.75, -0.5, 1.0, 0.25, ]);
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    texture200.destroy();
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    
    
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer201.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    command_encoder201.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([0.0, 0.25, -0.75, 0.5, 0.5, 0.25, -1.0, 0.25, 0.25, -0.25, -1.0, 0.0, -0.25, 0.0, 0.25, 1.0, 1.0, -0.5, -0.25, -0.5, -0.5, 1.0, 0.25, 1.0, 0.25, -1.0, -0.75, 0.25, 0.0, 0.0, 1.0, -0.75, 0.5, -1.0, 0.25, 0.25, 0.25, -1.0, 0.5, 0.0, -0.25, 0.75, 0.25, 0.0, 1.0, -0.5, 0.0, -0.75, 0.25, -1.0, -0.5, -0.75, 0.5, -0.5, -0.5, 0.5, -1.0, -1.0, 0.5, -0.5, -0.25, 0.0, -1.0, -0.5, -0.75, -0.5, -0.5, -0.5, 0.5, -0.25, -0.25, -1.0, 1.0, -0.25, -1.0, 0.25, -0.5, 0.25, 0.75, -0.75, 1.0, 0.5, -1.0, 1.0, 0.25, 0.75, 0.5, -1.0, 1.0, 0.25, -1.0, -0.25, 0.75, -0.5, -0.5, -1.0, -0.75, -0.25, 0.5, 0.25, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture201.destroy();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    device50.destroy();
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    command_encoder202.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    
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
        occlusionQuerySet: query201
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2020.setStencilReference(1);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.beginOcclusionQuery(0)
    render_pass_encoder2000.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2020.setPipeline(render_pipeline209);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    render_pass_encoder2020.endOcclusionQuery()
    device20.pushErrorScope("validation");
    render_pass_encoder2010.setPipeline(render_pipeline208);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
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
        layout: render_pipeline209.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    command_encoder203.insertDebugMarker("mymarker");
    render_pass_encoder2000.setPipeline(render_pipeline2010);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query201.destroy()
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer204
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    render_pass_encoder2001.setPipeline(render_pipeline2011);
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
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2020.setVertexBuffer(0, buffer203);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder2010.setStencilReference(1);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setPipeline(render_pipeline205);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    render_pass_encoder2030.setStencilReference(1);
    buffer202.destroy()
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const array4 = new Float32Array([-0.5, -0.25, -1.0, 0.0, 0.75, -1.0, -1.0, -1.0, 0.75, 0.0, -1.0, 0.25, -0.25, -0.75, -0.75, 1.0, -1.0, 0.5, -1.0, 0.25, -0.75, -0.5, 0.0, 1.0, 1.0, 0.5, -0.75, -0.25, -0.75, 0.75, 0.75, -1.0, 1.0, 0.0, -0.25, 0.0, 0.75, 0.0, 0.75, -1.0, 1.0, -0.25, 0.25, 0.75, -0.5, -0.25, -0.5, 1.0, 0.5, -1.0, 0.0, 0.25, 0.5, -1.0, -1.0, 0.75, -0.25, -1.0, 0.25, 0.0, -0.75, 0.0, -0.5, -0.5, -0.75, 0.75, -0.5, -0.25, -1.0, -1.0, 0.0, 0.75, -0.25, 0.75, 0.0, -0.75, -0.25, -1.0, 0.0, -1.0, -0.25, -0.75, 1.0, 0.25, 0.75, 0.0, -1.0, -1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -1.0, -0.75, 0.75, -0.75, 1.0, 1.0, -1.0, ]);
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
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    buffer207.destroy()
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device50.destroy();
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    render_pass_encoder2021.setPipeline(render_pipeline207);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setStencilReference(1);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.popDebugGroup();
    query200.destroy()
    buffer208.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture202.destroy();
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
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
    buffer203.destroy()
    
    render_pass_encoder2031.setPipeline(render_pipeline2011);
    
    render_pass_encoder2020.end();
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device40.destroy();
    render_pass_encoder2031.pushDebugGroup("group_marker");
    
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.pushDebugGroup("group_marker");
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    render_pass_encoder2030.beginOcclusionQuery(0)
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.insertDebugMarker("marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder200.setVertexBuffer(0, buffer204);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2021.insertDebugMarker("marker");
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
        layout: render_pipeline2011.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group203);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.popDebugGroup();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.75, -0.25, 0.5, -0.25, 0.0, -0.25, 0.25, 0.5, 0.75, -0.75, 0.25, -0.25, -0.5, -0.25, -0.75, 0.75, -0.5, 0.5, -0.5, -0.25, 0.0, 0.75, 0.75, 0.0, -1.0, -0.25, 1.0, -0.5, -0.75, -1.0, 1.0, 0.5, 0.0, 1.0, -0.5, 0.0, 0.25, 0.5, 0.0, 1.0, 1.0, -0.75, 0.0, -0.25, -0.75, -0.5, -1.0, 1.0, -0.5, 0.75, -0.75, 0.5, 1.0, 0.0, -0.25, 0.75, -0.5, -0.25, 1.0, -0.25, 0.25, 0.25, 1.0, 0.0, 0.0, 0.5, -0.5, 0.0, 0.25, 0.5, 1.0, -1.0, 1.0, -1.0, 0.25, 0.0, 0.0, 0.5, 0.5, 0.5, 0.25, 1.0, -0.5, -0.25, -0.75, -0.5, -1.0, 1.0, -1.0, 0.0, -0.25, -0.75, -0.5, -0.75, -0.25, 1.0, -1.0, -0.5, 0.25, -0.5, ]);
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    buffer205.destroy()
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_bundle_encoder200.drawIndirect(buffer200, 0);
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    compute_pass_encoder2020.setPipeline(compute_pipeline202);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group204);
    render_pass_encoder2001.popDebugGroup();
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group205);
    device20.queue.writeTexture({ texture: texture204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    texture204.destroy();
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture202.destroy();
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2030.insertDebugMarker("marker");
    const render_pass_encoder2002 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    const array6 = new Float32Array([1.0, -0.25, 0.25, 0.75, -0.5, -1.0, 0.5, 0.25, 0.0, 1.0, 0.75, 0.5, 1.0, -0.25, -0.5, 0.0, 0.0, 0.0, 0.25, 1.0, -0.5, 0.75, -0.5, 0.0, -0.75, -0.75, -0.25, 1.0, 0.25, 0.25, 1.0, -0.75, 0.0, 1.0, 0.75, -0.25, -1.0, -0.75, -0.5, -0.75, 0.5, -0.25, -1.0, 0.25, 0.5, 0.75, -1.0, 0.75, 1.0, -0.75, -0.5, 0.25, 0.25, 0.0, 0.5, 0.25, 0.75, 1.0, -0.5, -0.5, 0.75, 0.25, 0.25, -0.75, -0.25, -0.5, -0.75, 0.5, -0.5, 0.25, 0.0, -0.25, 0.0, 1.0, 0.0, 0.5, -1.0, 0.25, -0.25, -0.5, -1.0, 0.75, 0.5, -1.0, 0.0, -0.75, 0.0, -0.25, 0.0, -0.75, -1.0, 0.25, -0.25, 0.25, -0.25, 0.5, 1.0, 0.75, 0.25, -1.0, ]);
    render_pass_encoder2000.setStencilReference(1);
    command_encoder205.copyBufferToTexture(
        {
            buffer: buffer207
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2031.setVertexBuffer(0, buffer201);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.queue.writeBuffer(buffer2015, 0, array5, 0, array5.length);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    render_pass_encoder2031.setIndexBuffer(buffer207, "uint16");
    command_encoder205.pushDebugGroup("mygroupmarker")
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2002.setPipeline(render_pipeline200);
    render_bundle_encoder201.popDebugGroup();
    
    
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder205.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder202.setPipeline(render_pipeline209);
    render_pass_encoder2002.insertDebugMarker("marker");
    
    
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.setStencilReference(1);
    buffer2013.destroy()
    
    render_pass_encoder2041.setPipeline(render_pipeline209);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2041.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer2014.destroy()
    
    query201.destroy()
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2002.setBindGroup(0, bind_group206);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline209.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group207);
    buffer2018.destroy()
    device20.pushErrorScope("out-of-memory");
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer2018,
        0
    )
    
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline2010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group208);
    
    device20.queue.writeBuffer(buffer2019, 0, array1, 0, array1.length);
    render_pass_encoder2002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer2012.destroy()
    query200.destroy()
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2040.setVertexBuffer(0, buffer200);
    query202.destroy()
    buffer2021.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer2015.destroy()
    
    
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2000.setVertexBuffer(0, buffer2016);
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    device20.queue.writeBuffer(buffer2020, 0, array4, 0, array4.length);
    render_pass_encoder2040.setIndexBuffer(buffer2018, "uint16");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2010.setVertexBuffer(0, buffer2011);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    render_pass_encoder2040.drawIndexedIndirect(buffer2018, 0);
    texture203.destroy();
    const render_pass_encoder2051 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2051.setPipeline(render_pipeline206);
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2051.insertDebugMarker("marker");
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.end();
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2050.setPipeline(render_pipeline2011);
    
    
    render_pass_encoder2001.setStencilReference(1);
    
    device20.queue.writeBuffer(buffer2022, 0, array0, 0, array0.length);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    render_pass_encoder2030.setVertexBuffer(0, buffer2010);
    buffer2011.destroy()
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    query203.destroy()
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2050.pushDebugGroup("group_marker");
    render_pass_encoder2040.drawIndexedIndirect(buffer2017, 0);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2041.setStencilReference(1);
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    render_pass_encoder2041.setVertexBuffer(0, buffer2020);
    render_pass_encoder2051.setStencilReference(1);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2041.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder2041.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    render_pass_encoder2041.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2051.endOcclusionQuery()
    render_pass_encoder2021.setStencilReference(1);
    
    render_pass_encoder2030.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_pass_encoder2021.pushDebugGroup("group_marker");
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2050.popDebugGroup();
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device50.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer2013,
        0,
        400
    );
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder201.clearBuffer(buffer202);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder2041.draw(3);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query203.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2030.setIndexBuffer(buffer2019, "uint16");
    
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_pass_encoder2050.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2030.setIndexBuffer(buffer2015, "uint16");
    
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2017, 0);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group209);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline2011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group2010);
    render_pass_encoder2021.setVertexBuffer(0, buffer2011);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2011);
    render_pass_encoder2011.setPipeline(render_pipeline207);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2021.draw(3);
    command_encoder201.popDebugGroup()
    render_pass_encoder2001.setVertexBuffer(0, buffer2018);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2041.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2002.setVertexBuffer(0, buffer204);
    render_pass_encoder2001.drawIndirect(buffer2025, 0);
    render_pass_encoder2010.end();
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    render_pass_encoder2051.setBindGroup(0, bind_group2012);
    render_pass_encoder2030.popDebugGroup();
    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline2011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2032,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group2013);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2026, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer207, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2033, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2033, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2026, "uint16");
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: render_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group2014);
    render_pass_encoder2002.drawIndirect(buffer2026, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2011.setVertexBuffer(0, buffer2012);
    render_pass_encoder2000.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2030.draw(3);
    render_pass_encoder2050.setVertexBuffer(0, buffer2030);
    render_pass_encoder2050.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2051.setVertexBuffer(0, buffer2019);
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2002.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2040.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder2051.drawIndirect(buffer200, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder2020.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2001.setIndexBuffer(buffer2035, "uint16");
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    device80.queue.submit([]);
    render_pass_encoder2000.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2015, 0);
    command_encoder200.popDebugGroup()
    render_pass_encoder2051.drawIndirect(buffer205, 0);
    render_pass_encoder2051.end();
    command_encoder205.popDebugGroup()
    render_pass_encoder2051.setIndexBuffer(buffer208, "uint16");
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2050.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2030.drawIndirect(buffer2016, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder2002.drawIndirect(buffer2033, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2021.draw(3);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2026, 0);
    render_pass_encoder2002.drawIndirect(buffer2018, 0);
    render_pass_encoder2002.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2002.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2002.drawIndirect(buffer204, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndirect(buffer2033, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2041.drawIndirect(buffer2027, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    render_pass_encoder2001.drawIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2031.draw(3);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2011.drawIndexed(3);
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, ]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2010.draw(3);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2050.drawIndirect(buffer2026, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndirect(buffer205, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer201, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2001.drawIndirect(buffer2033, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2002.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2051.end();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2010.drawIndexed(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2040.drawIndirect(buffer2032, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2027, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2036, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2012, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer205, ]);
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2015);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2010.end();
    render_pass_encoder2041.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2051.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2002.drawIndirect(buffer2028, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.end();
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder2002.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2051.drawIndirect(buffer201, 0);
    render_pass_encoder2002.drawIndirect(buffer201, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2041.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2051.draw(3);
    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2040,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2016);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2033, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2040.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2041, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2041, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer2041, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2002.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2051.drawIndirect(buffer200, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2030.draw(3);
    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2043,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2017);
    render_pass_encoder2010.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2010.drawIndexed(3);
    device00.queue.submit([]);
    device80.queue.submit([]);
    render_pass_encoder2011.end();
    render_pass_encoder2002.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2041, 0);
    render_pass_encoder2041.drawIndirect(buffer2041, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2002.drawIndirect(buffer200, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder2021.drawIndirect(buffer2033, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2050.end();
    device10.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.draw(3);
    device20.queue.submit([]);
    render_pass_encoder2001.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2051.drawIndirect(buffer2033, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2041.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2002.drawIndirect(buffer2010, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2012, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2050.drawIndirect(buffer2042, 0);
    render_pass_encoder2011.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.end();
    device00.queue.submit([]);
    render_pass_encoder2002.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2041, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2034, 0);
    device80.queue.submit([]);
    render_pass_encoder2051.draw(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2041.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2041, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2035, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2041, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2030.end();
    render_pass_encoder2002.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer209, 0);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndirect(buffer2041, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2050.setIndexBuffer(buffer201, "uint16");
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2018);
    render_pass_encoder2040.drawIndexed(3);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndirect(buffer2041, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2002.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2050.drawIndirect(buffer202, 0);
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2019);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2048, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2048, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2051.drawIndirect(buffer206, 0);
    render_pass_encoder2040.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2026, 0);
    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2050,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2020);
    device00.queue.submit([]);
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2051.end();
    device30.queue.submit([]);
    render_pass_encoder2050.drawIndirect(buffer2041, 0);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder2050.drawIndirect(buffer2033, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2041.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2050.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2048, "uint16");
    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2052,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2021);
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2040.end();
    render_pass_encoder2051.drawIndirect(buffer2025, 0);
    render_pass_encoder2000.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2002.setIndexBuffer(buffer2020, "uint16");
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2031.end();
    device80.queue.submit([]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2043, 0);
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2031.setIndexBuffer(buffer209, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndirect(buffer2048, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2001.drawIndirect(buffer2033, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2048, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2048, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2002.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder2051.drawIndirect(buffer2048, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2050.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndirect(buffer2041, 0);
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2010.drawIndirect(buffer2048, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2041.drawIndirect(buffer2021, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2011.drawIndirect(buffer2048, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2020, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2031.drawIndirect(buffer2052, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2040.drawIndirect(buffer2016, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer205, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2053, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2050.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndirect(buffer2033, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2044, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2040.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2001.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
    device00.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2042, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2000.drawIndirect(buffer2053, 0);
    render_pass_encoder2041.setIndexBuffer(buffer205, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, ]);
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2031.drawIndirect(buffer2025, 0);
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2002.drawIndirect(buffer200, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2054, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2053, 0);
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2041.drawIndirect(buffer2041, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2002.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    render_pass_encoder2010.drawIndirect(buffer2041, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2050.drawIndirect(buffer2031, 0);
    render_pass_encoder2002.drawIndirect(buffer2048, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2002.drawIndirect(buffer2032, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2053, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2051.drawIndirect(buffer200, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2036, 0);
    device00.queue.submit([]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndirect(buffer2038, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    device20.queue.submit([]);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2033, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2002.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2031.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.drawIndirect(buffer2048, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2051, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2053, "uint16");
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2002.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2040.drawIndirect(buffer2041, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2002.drawIndirect(buffer2048, 0);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2040.end();
    render_pass_encoder2002.drawIndirect(buffer2036, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device00.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2050.end();
    render_pass_encoder2050.end();
    render_pass_encoder2002.drawIndexed(3);
    render_pass_encoder2001.drawIndirect(buffer2041, 0);
    render_pass_encoder2021.drawIndirect(buffer2033, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2031.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2048, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2002.drawIndirect(buffer2053, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2048, "uint16");
    render_pass_encoder2021.end();
    compute_pass_encoder2020.end();
    render_pass_encoder2041.drawIndirect(buffer2048, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndirect(buffer2042, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2051.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2021.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2048, 0);
    device80.queue.submit([]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2031.drawIndirect(buffer2032, 0);
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2051.drawIndirect(buffer200, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2001.drawIndirect(buffer2034, 0);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2051.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2050.drawIndirect(buffer200, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2010.drawIndirect(buffer2048, 0);
    render_pass_encoder2001.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2041.drawIndirect(buffer2017, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder2010.drawIndirect(buffer2041, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2000.drawIndirect(buffer2027, 0);
    render_pass_encoder2002.drawIndirect(buffer2011, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2040.drawIndirect(buffer2026, 0);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndirect(buffer2051, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2051.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2010.drawIndirect(buffer2033, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2010, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2050.drawIndirect(buffer2033, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2011.drawIndirect(buffer2050, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2053, 0);
    device80.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2050.drawIndirect(buffer2047, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2050.drawIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndexed(3);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    render_pass_encoder2051.drawIndirect(buffer2041, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2041.drawIndirect(buffer2016, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2050.drawIndirect(buffer200, 0);
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.drawIndirect(buffer2041, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2051.drawIndirect(buffer2054, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2041, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2040.drawIndirect(buffer2033, 0);
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    render_pass_encoder2001.drawIndirect(buffer2054, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndirect(buffer2054, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2002.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2050.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2041.end();
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2022);
    render_pass_encoder2040.end();
    render_pass_encoder2040.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2041, 0);
    device80.queue.submit([]);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2010.drawIndirect(buffer2041, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2041, 0);
    device80.queue.submit([]);
    render_pass_encoder2051.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer207, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2041, 0);
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2023);
    render_pass_encoder2051.drawIndirect(buffer207, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder2010.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2041.drawIndirect(buffer2048, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2001.drawIndirect(buffer2053, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2053, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer2029, "uint16");
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([]);
    render_pass_encoder2002.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndirect(buffer2053, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2050.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2036, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2031.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndirect(buffer2054, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2051.drawIndirect(buffer2036, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2041.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2053, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2040.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2041.drawIndirect(buffer2048, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    device80.queue.submit([]);
    compute_pass_encoder2020.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer2053, 0);
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
    render_pass_encoder2011.drawIndirect(buffer2040, 0);
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2041.drawIndirect(buffer2053, 0);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2051.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2050.drawIndirect(buffer2057, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2041.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2051.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2053, 0);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2002.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2051.drawIndirect(buffer2056, 0);
    render_pass_encoder2050.drawIndirect(buffer2039, 0);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2031.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2051.drawIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndirect(buffer2041, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2041.drawIndirect(buffer2048, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2020.end();
    render_pass_encoder2051.setIndexBuffer(buffer2021, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2020.drawIndirect(buffer2053, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2041.drawIndirect(buffer2054, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2014, "uint16");
    device80.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2048, 0);
    render_pass_encoder2000.drawIndirect(buffer2041, 0);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2060,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2024);
    render_pass_encoder2051.drawIndirect(buffer200, 0);
    render_pass_encoder2050.drawIndirect(buffer2053, 0);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2051.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndirect(buffer2048, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2001.drawIndirect(buffer2052, 0);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    device20.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer2024, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2050.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2061, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2061, 0);
    render_pass_encoder2030.drawIndirect(buffer2040, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2024, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2062, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2062, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2000.drawIndirect(buffer2041, 0);
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2063, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2063, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2002.drawIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2041.drawIndirect(buffer2062, 0);
    render_pass_encoder2041.endOcclusionQuery()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2041, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2064, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2064, 0);
    render_pass_encoder2002.drawIndirect(buffer2062, 0);
    render_pass_encoder2030.drawIndirect(buffer2061, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer2022, 0);
    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2066,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2025);
    render_pass_encoder2051.drawIndirect(buffer2030, 0);
    render_pass_encoder2051.drawIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2041.drawIndirect(buffer2060, 0);
    render_pass_encoder2051.drawIndirect(buffer2064, 0);
    device40.queue.submit([]);
    render_pass_encoder2021.end();
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2002.drawIndirect(buffer2064, 0);
    render_pass_encoder2041.drawIndirect(buffer2061, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2050.end();
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2021.drawIndirect(buffer2063, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer206, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2002.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2002.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.drawIndirect(buffer2044, 0);
    render_pass_encoder2002.drawIndirect(buffer2062, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    device20.queue.submit([]);
    render_pass_encoder2002.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2041, 0);
    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2068,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2026);
    render_pass_encoder2021.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2051.drawIndirect(buffer2036, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2002.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2050.drawIndirect(buffer2061, 0);
    render_pass_encoder2031.drawIndirect(buffer2033, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2021.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2051.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2051.drawIndirect(buffer2063, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2050, 0);
}