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
    const array0 = new Float32Array([-0.75, 0.25, -0.25, 0.75, 0.0, 0.75, 0.75, 0.25, 0.0, 0.0, 1.0, -1.0, 0.25, 0.0, -1.0, 0.25, -0.75, 0.0, 0.0, -0.75, -1.0, 1.0, -1.0, -0.25, 0.0, -0.75, -0.75, -0.25, -0.75, 0.5, 0.5, -0.5, 0.5, 0.75, -0.5, -0.5, -1.0, 0.75, 0.5, -0.25, -0.25, -0.5, -0.25, 1.0, 0.75, 1.0, -1.0, 1.0, -0.75, -1.0, 1.0, -0.5, -0.25, -0.25, -0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 1.0, 0.0, 0.75, 1.0, -0.25, 0.5, 0.75, -0.25, 0.25, 0.0, 1.0, 1.0, -0.75, 0.25, -0.25, -0.5, 0.75, 0.75, -0.25, -0.75, -1.0, 0.0, 0.5, -0.5, -0.25, -0.25, 1.0, -1.0, 0.25, 0.5, 0.75, -0.5, -0.25, 0.5, -0.75, 0.0, -0.5, 0.75, -0.25, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-0.5, 0.25, 0.25, 0.0, 1.0, 0.25, 0.75, 0.5, 0.0, 0.25, -0.25, -0.5, -0.75, 0.75, -0.75, -1.0, -0.5, -1.0, -1.0, 0.25, -0.25, 0.5, 1.0, 0.75, 1.0, -0.5, 0.5, -0.75, -0.75, 0.0, -0.25, 0.75, 1.0, -1.0, -0.5, 0.75, -0.25, -0.5, -0.25, -1.0, -0.25, -1.0, 0.5, 0.0, -0.5, -0.25, -0.25, -0.5, 0.25, -1.0, -0.5, 0.5, -0.25, 0.0, -0.5, 0.5, 0.5, -0.5, 1.0, -1.0, 0.75, -1.0, -1.0, 0.0, -0.5, -0.25, 0.5, 0.75, 0.0, -0.75, 0.75, -1.0, -1.0, -1.0, -0.75, -1.0, -1.0, 0.75, -0.25, -0.75, 0.75, -1.0, 0.5, -1.0, -1.0, 0.5, -0.75, 1.0, -0.75, -0.75, 0.25, -0.75, -1.0, 1.0, 0.0, -0.75, -0.25, 0.0, 1.0, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
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
    device10.pushErrorScope("validation");
    
    
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
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const array2 = new Float32Array([-0.5, 0.0, -0.75, 0.75, -1.0, -0.75, 0.25, 1.0, 0.75, 0.0, -0.25, -0.5, -0.75, -0.25, 0.0, 0.0, -1.0, 0.75, -1.0, -0.75, 0.0, -0.25, -0.25, -0.5, -0.75, 0.25, 0.25, -0.5, -0.5, 0.25, 0.75, 0.5, 0.75, -0.5, -0.25, -1.0, -0.75, 0.5, -0.5, 0.25, 0.25, 1.0, 0.75, -0.5, -1.0, 1.0, -0.5, 0.25, 0.75, 0.5, 0.75, -0.75, -1.0, 1.0, -0.5, 0.5, 1.0, -1.0, 0.5, -0.5, -0.5, -0.5, -1.0, 0.75, 0.75, 0.75, 0.75, 1.0, -1.0, 0.75, 0.25, -0.5, -1.0, 0.0, 1.0, 1.0, -0.5, 1.0, 0.25, 0.75, -1.0, -1.0, -0.5, -0.25, 0.25, 0.0, 1.0, -0.75, -0.75, -0.75, -0.5, 1.0, 0.75, -0.75, -0.25, 0.5, 0.0, -1.0, 1.0, -0.5, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const array3 = new Float32Array([-1.0, 0.0, -0.25, 0.75, 0.0, 1.0, 1.0, -0.5, -0.25, -0.25, -0.25, 0.5, 0.25, 1.0, 0.5, -0.25, -0.5, 0.75, -0.75, 0.25, -0.75, 0.25, -1.0, -0.75, -0.75, -0.75, -1.0, 1.0, 1.0, -0.75, 0.25, -0.75, 0.25, -1.0, -0.5, -0.25, 0.0, -0.25, 1.0, -0.75, 0.5, 0.75, -0.25, 0.5, 0.0, 0.0, 0.0, -0.75, -0.5, 0.0, 0.75, 0.5, 0.5, 0.75, 0.0, -0.5, 0.0, 0.0, 0.25, 0.75, 0.0, 0.25, -0.5, -0.75, 1.0, -1.0, 0.0, -0.25, -0.75, 0.5, -0.25, 0.0, 0.75, -1.0, -0.5, 0.5, 0.0, -1.0, -0.75, 0.25, 0.75, 0.5, -0.75, 1.0, 0.5, -0.75, 0.25, 1.0, -0.75, 0.5, -0.25, -0.5, -1.0, 0.25, 0.5, -0.5, 0.25, -0.5, -0.25, -0.5, ]);
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
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
    device30.destroy();
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2001.setPipeline(render_pipeline201);
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
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2000.popDebugGroup();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setPipeline(render_pipeline204);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    
    query200.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query101.destroy()
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query200.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device30.destroy();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2001.setStencilReference(1);
    
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2010.popDebugGroup()
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    query201.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    texture203.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder2001.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    query202.destroy()
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    command_encoder200.insertDebugMarker("mymarker");
    device10.queue.submit([]);
    device20.pushErrorScope("out-of-memory");
    query101.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder2002 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    render_pass_encoder2002.setPipeline(render_pipeline206);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder100.insertDebugMarker("mymarker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2002.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
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
    const command_buffer100 = command_encoder100.finish();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2002.pushDebugGroup("group_marker");
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder201.insertDebugMarker("mymarker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2002.setBindGroup(0, bind_group201);
    texture401.destroy();
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group202);
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
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_pass_encoder2002.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2002.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2002.insertDebugMarker("marker");
    buffer400.destroy()
    
    render_pass_encoder2002.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query000.destroy()
    
    
    query203.destroy()
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder101.clearBuffer(buffer102);
    
    buffer300.destroy()
    texture202.destroy();
    render_pass_encoder2001.popDebugGroup();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    buffer102.destroy()
    
    query102.destroy()
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer103.destroy()
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    const command_buffer400 = command_encoder400.finish();
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    render_pass_encoder2002.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.setVertexBuffer(0, buffer200);
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
        occlusionQuerySet: query200
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.5, 0.25, 0.0, 0.75, 0.5, 0.25, 1.0, 0.5, -0.5, -0.5, -0.25, -0.75, 0.5, -0.75, 0.75, -0.5, 1.0, 1.0, 0.75, -0.5, -1.0, 0.75, 0.0, 0.25, 0.5, 0.25, 1.0, 0.75, 0.0, -1.0, 0.0, -0.25, -1.0, -0.5, -0.75, 1.0, 0.0, -0.25, -0.75, 0.25, -0.75, 0.25, 0.5, -0.25, 0.0, 0.75, 0.75, 0.25, 1.0, -1.0, -0.25, -0.5, 0.0, -0.25, 0.25, 0.25, 1.0, -0.5, 1.0, 0.5, -0.5, 0.0, 0.0, -0.75, -1.0, -1.0, 0.75, 1.0, -0.25, 0.25, -0.5, -1.0, -0.25, -0.75, -0.5, -0.5, 0.0, 0.25, -0.75, -0.5, 0.0, -0.25, -0.5, 0.5, 0.0, -0.75, -0.25, 0.25, 1.0, 0.25, -0.75, 0.5, -0.75, -0.75, -0.5, 0.75, 0.25, 1.0, -0.5, 0.5, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setStencilReference(1);
    query201.destroy()
    device40.queue.submit([command_buffer400, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer206.destroy()
    command_encoder201.copyBufferToBuffer(
        buffer204,
        0,
        buffer206,
        0,
        400
    );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query101.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    query000.destroy()
    command_encoder401.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder401.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    texture400.destroy();
    render_pass_encoder2000.popDebugGroup();
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    render_pass_encoder2020.setPipeline(render_pipeline201);
    buffer204.destroy()
    query000.destroy()
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer101.destroy()
    texture201.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer201.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder2002.setVertexBuffer(0, buffer201);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    render_pass_encoder2030.setPipeline(render_pipeline204);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query203
    });
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder2040.setPipeline(render_pipeline206);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2030.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    buffer205.destroy()
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([-0.25, -0.75, -1.0, -0.25, -0.5, -0.75, 0.75, 1.0, 1.0, -0.5, -1.0, -0.5, -0.25, 0.5, 0.0, 0.5, 0.25, -1.0, 0.5, 0.5, 0.25, 0.5, 1.0, -0.25, -1.0, 0.75, -0.5, 1.0, 0.75, 0.0, 0.0, -0.25, -1.0, 0.75, 0.0, 0.75, 0.75, 0.5, -1.0, -0.25, -0.25, -0.5, 0.0, 0.75, -1.0, -0.5, 1.0, -0.25, -0.5, -0.75, -0.5, -0.5, 0.75, 0.0, 1.0, -0.25, 1.0, 0.25, -1.0, 0.25, 0.5, -1.0, 0.75, -0.75, 1.0, 0.75, 0.0, 0.0, -0.25, 1.0, 1.0, 0.0, 1.0, -0.5, -1.0, 0.25, 0.25, 0.75, -1.0, 1.0, -0.75, -0.5, -0.25, 0.75, -1.0, 1.0, 1.0, -0.5, 0.5, -0.25, -0.25, -0.5, 0.5, 1.0, -1.0, 0.25, -0.25, 0.0, 1.0, -0.75, ]);
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2002.popDebugGroup();
    device20.queue.writeBuffer(buffer208, 0, array0, 0, array0.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder201.setPipeline(render_pipeline205);
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.insertDebugMarker("marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    query102.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    buffer202.destroy()
    
    command_encoder200.clearBuffer(buffer209);
    query203.destroy()
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer205,
        0
    )
    
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    render_pass_encoder2041.setPipeline(render_pipeline206);
    render_pass_encoder2002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.popDebugGroup();
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2012,
            },
        ],
        occlusionQuerySet: query202
    });
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2041.setStencilReference(1);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2031.setPipeline(render_pipeline201);
    
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer203.destroy()
    buffer207.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group205);
    render_pass_encoder2041.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    buffer100.destroy()
    const array6 = new Float32Array([0.0, -0.25, -0.5, 0.5, -0.25, 0.0, 0.5, -0.75, 0.0, -0.25, 0.0, -0.25, -1.0, 0.75, 0.0, 0.75, 0.25, 0.75, 1.0, -0.5, -0.25, 0.0, 1.0, -0.5, -1.0, 0.0, -0.25, -0.75, 0.75, -0.75, 0.0, 0.75, -0.5, 0.0, 0.25, 1.0, -0.25, -0.25, 1.0, 0.0, 0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -0.25, 0.75, -0.75, 1.0, 0.5, -0.5, 0.0, 0.25, 1.0, 0.25, -1.0, -0.75, -1.0, -0.75, 0.75, 0.0, 0.25, 0.25, 1.0, 0.0, -1.0, 0.5, -1.0, 0.5, -0.25, -1.0, -0.25, 0.0, 0.75, -0.5, 0.5, -0.75, 0.25, -0.75, -1.0, 1.0, -0.25, 1.0, -0.5, -0.5, 0.25, 1.0, -0.5, -0.25, -1.0, -0.5, 0.0, 0.75, -0.25, 0.25, -1.0, -1.0, 0.25, 0.0, ]);
    compute_pass_encoder2000.popDebugGroup()
    texture100.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder200.drawIndirect(buffer2012, 0);
    render_pass_encoder2030.setVertexBuffer(0, buffer203);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    
    render_pass_encoder2040.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2031.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    device00.pushErrorScope("internal");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2041.setStencilReference(1);
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    buffer2013.destroy()
    render_pass_encoder2030.popDebugGroup();
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
        occlusionQuerySet: query103
    });
    query201.destroy()
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
    
    render_pass_encoder2021.setPipeline(render_pipeline205);
    render_pass_encoder2041.pushDebugGroup("group_marker");
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    render_pass_encoder2000.popDebugGroup();
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer206, 0, array5, 0, array5.length);
    
    render_pass_encoder2031.pushDebugGroup("group_marker");
    
    const command_buffer500 = command_encoder500.finish();
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2002.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    render_pass_encoder2020.popDebugGroup();
    
    
    render_pass_encoder1030.setPipeline(render_pipeline101);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_buffer102 = command_encoder102.finish();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder2021.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    command_encoder204.copyBufferToBuffer(
        buffer200,
        0,
        buffer207,
        0,
        400
    );
    query100.destroy()
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2012,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2002.draw(3);
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    buffer501.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline201);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2021.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    buffer2012.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group206);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer107, 0);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder2011.popDebugGroup();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2011.setPipeline(render_pipeline209);
    render_pass_encoder2002.drawIndirect(buffer206, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
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

    render_pass_encoder1030.setBindGroup(0, bind_group102);
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
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group207);
    compute_pass_encoder2010.dispatchWorkgroups(100);
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
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group208);
    render_pass_encoder2010.setVertexBuffer(0, buffer206);
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
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline209.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group209);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group2010);
    render_pass_encoder2031.setVertexBuffer(0, buffer2018);
    render_pass_encoder2021.setVertexBuffer(0, buffer2022);
    render_pass_encoder2020.setVertexBuffer(0, buffer207);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder2011.setVertexBuffer(0, buffer208);
    render_pass_encoder2031.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2017, 0);
    const command_buffer501 = command_encoder501.finish();
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group2011);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2021.end();
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder2030.end();
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    render_pass_encoder1030.draw(3);
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group2013);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2041.setVertexBuffer(0, buffer205);
    render_pass_encoder2001.setVertexBuffer(0, buffer204);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder2031.draw(3);
    compute_pass_encoder2010.end();
    render_pass_encoder2041.draw(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2031.end();
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group2014);
    render_pass_encoder2002.end();
    compute_pass_encoder1010.end();
    render_pass_encoder2002.drawIndirect(buffer2026, 0);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder2041.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2002.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2010.end();
    render_pass_encoder1030.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2000.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder2040.setVertexBuffer(0, buffer2031);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2040.draw(3);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.end();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2030.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2041.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2002.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2002.drawIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2011.drawIndirect(buffer2026, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2030, "uint16");
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2040.end();
    render_pass_encoder2011.drawIndirect(buffer2027, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    device10.queue.submit([command_buffer103, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2002.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2001.drawIndirect(buffer2015, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder2021.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2020, 0);
    render_pass_encoder2011.endOcclusionQuery()
    compute_pass_encoder2000.end();
    compute_pass_encoder1020.end();
    render_pass_encoder2041.end();
    render_pass_encoder2001.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2002.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2041.drawIndirect(buffer202, 0);
    device50.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2015);
    render_pass_encoder2010.popDebugGroup();
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
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
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
    render_pass_encoder2002.drawIndirect(buffer2020, 0);
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    command_encoder101.popDebugGroup()
    render_pass_encoder2021.draw(3);
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
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2040.drawIndirect(buffer2010, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2000.drawIndirect(buffer2034, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1014, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2000.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder2031.end();
    render_pass_encoder2041.drawIndirect(buffer2029, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder2011.drawIndirect(buffer206, 0);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group105);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1017, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2002.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2011.end();
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder2002.drawIndexed(3);
    render_pass_encoder2021.end();
    compute_pass_encoder1020.end();
    render_pass_encoder2031.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder2041.drawIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndirect(buffer2029, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2002.drawIndirect(buffer200, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2029, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2034, 0);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1019, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2002.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2031.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2001.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.draw(3);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1020, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2002.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2035, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2037, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2037, 0);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    device50.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2037, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2002.draw(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2020.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2041.drawIndirect(buffer201, 0);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder1020.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndirect(buffer2025, 0);
    render_pass_encoder2002.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2017);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2040.end();
    render_pass_encoder2041.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2037, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2011.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2028, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2040, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2040, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder2010.end();
    device00.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2037, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    device20.queue.submit([]);
    render_pass_encoder2041.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2031.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2040.drawIndirect(buffer2040, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2002.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2000.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2033, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1023, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2037, 0);
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group107);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2037, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2040.popDebugGroup();
    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2042,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder2041.drawIndirect(buffer208, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group108);
    render_pass_encoder2021.end();
    render_pass_encoder2001.setIndexBuffer(buffer2041, "uint16");
    device50.queue.submit([]);
    compute_pass_encoder2010.end();
    compute_pass_encoder1010.end();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndirect(buffer2038, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2026, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer200, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2041.drawIndirect(buffer2037, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer2034, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2010.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2026, 0);
    render_pass_encoder2040.drawIndirect(buffer209, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2041.drawIndirect(buffer2019, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2002.drawIndexedIndirect(buffer2033, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer2036, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2040, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2021.drawIndirect(buffer2040, 0);
    device10.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2010.end();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2021.end();
    render_pass_encoder2031.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1030.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.drawIndirect(buffer2040, 0);
    render_pass_encoder2002.drawIndirect(buffer202, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2002.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer2025, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndirect(buffer2041, 0);
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2002.setIndexBuffer(buffer2016, "uint16");
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2002.drawIndirect(buffer2034, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2011.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2037, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder2041.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2002.drawIndirect(buffer200, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2040, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2043, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2043, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder2002.end();
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.drawIndirect(buffer2025, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2026, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2031.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    compute_pass_encoder1010.end();
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder2031.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2036, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2002.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2040.drawIndirect(buffer2028, 0);
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
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2019);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2014, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer2037, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    render_pass_encoder2041.drawIndirect(buffer2045, 0);
    render_pass_encoder2041.drawIndirect(buffer2045, 0);
    compute_pass_encoder1020.end();
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
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2020);
    render_pass_encoder2020.setIndexBuffer(buffer2030, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2001.drawIndirect(buffer2012, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2020.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2028, 0);
    compute_pass_encoder4000.popDebugGroup()
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    render_pass_encoder2011.drawIndirect(buffer2037, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2040.setIndexBuffer(buffer2027, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2011.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    render_pass_encoder2002.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2046, 0);
    device50.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer2038, 0);
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    render_pass_encoder2002.drawIndirect(buffer200, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.drawIndirect(buffer2029, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2040.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2011, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2002.drawIndirect(buffer208, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2002.drawIndirect(buffer2037, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2001.drawIndirect(buffer2041, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2037, 0);
    render_pass_encoder2041.drawIndirect(buffer2040, 0);
    render_pass_encoder2030.drawIndirect(buffer2037, 0);
    render_pass_encoder2031.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2031.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    device50.queue.submit([]);
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2021);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2031.end();
    render_pass_encoder2041.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2002.setIndexBuffer(buffer2017, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2000.drawIndirect(buffer2037, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2002.drawIndexedIndirect(buffer2020, 0);
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2022);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2011.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2040.drawIndirect(buffer2043, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer202, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder2040.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2041.drawIndirect(buffer2036, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder2000.drawIndexed(3);
    device10.queue.submit([]);
    render_pass_encoder2002.drawIndirect(buffer2047, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2027, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2037, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2037, 0);
    device10.queue.submit([command_buffer100, ]);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder1030.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2047, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2037, 0);
    device50.queue.submit([]);
    render_pass_encoder1030.end();
    render_pass_encoder2040.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2001.drawIndexed(3);
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2023);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    device20.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2021.drawIndirect(buffer2044, 0);
    device20.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndirect(buffer2048, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2045, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1040, 0);
    device10.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndirect(buffer2022, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder2002.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2014, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2040.drawIndirect(buffer2032, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2043, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2041.drawIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndirect(buffer2027, 0);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder2041.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2031.end();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2002.drawIndirect(buffer2040, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2030.drawIndirect(buffer2018, 0);
    render_pass_encoder2040.end();
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2041.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndirect(buffer2037, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2037, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device50.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder2011.drawIndirect(buffer2040, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2026, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2037, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2037, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1043, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2002.drawIndirect(buffer2015, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2040.drawIndirect(buffer2040, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2034, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndirect(buffer2016, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2036, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2010.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2002.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2041.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2002.drawIndirect(buffer2043, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    compute_pass_encoder1020.popDebugGroup()
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    render_pass_encoder2021.drawIndirect(buffer2040, 0);
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    render_pass_encoder2002.drawIndirect(buffer2054, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1036, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2055, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2055, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2043, 0);
    device50.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder1010.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    device10.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2002.drawIndirect(buffer2015, 0);
    render_pass_encoder2041.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2054, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2056, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2026, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2038, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2056, 0);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
    render_pass_encoder2021.drawIndirect(buffer2040, 0);
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
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2024);
    render_pass_encoder2001.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2031.drawIndirect(buffer2014, 0);
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder2021.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.drawIndirect(buffer206, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2010.end();
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2040.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2058, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2055, 0);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1030.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2002.drawIndirect(buffer2055, 0);
    render_pass_encoder2020.drawIndirect(buffer2055, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2058, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder2010.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2011.drawIndirect(buffer2048, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2059, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2059, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2040.end();
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2054, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2018, "uint16");
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2002.drawIndirect(buffer200, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    device20.queue.submit([]);
    render_pass_encoder2021.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2047, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2044, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2043, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2041.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2041.drawIndirect(buffer2010, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2002.drawIndirect(buffer2054, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2002.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2041.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2002.drawIndirect(buffer2043, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2021.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2002.drawIndirect(buffer2043, 0);
    render_pass_encoder2041.drawIndirect(buffer2054, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1034, "uint16");
    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2061,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2025);
    render_pass_encoder2041.drawIndexedIndirect(buffer2054, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2063,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2026);
    render_pass_encoder2040.drawIndirect(buffer2037, 0);
    render_pass_encoder2002.drawIndirect(buffer2014, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2021.drawIndirect(buffer2056, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2059, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer208, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2041.end();
    render_pass_encoder2030.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2001.drawIndirect(buffer2056, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    device20.queue.submit([]);
    render_pass_encoder2040.end();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2031.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2041.drawIndirect(buffer2043, 0);
    render_pass_encoder2002.drawIndirect(buffer2026, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndirect(buffer2037, 0);
    render_pass_encoder2020.drawIndirect(buffer2059, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2041.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2057, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2040.drawIndirect(buffer2040, 0);
    render_pass_encoder2011.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2065,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2027);
    render_pass_encoder2031.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1051, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1051, 0);
    render_pass_encoder2002.drawIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2030.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer204, ]);
    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2067,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2028);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2066, 0);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    device20.queue.submit([]);
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1018);
    render_pass_encoder2020.drawIndexedIndirect(buffer2056, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2062, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer2066, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2002.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2041.drawIndirect(buffer200, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2030.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2020.drawIndirect(buffer2055, 0);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder2041.drawIndirect(buffer2035, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2043, 0);
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    render_pass_encoder2041.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2040.drawIndirect(buffer2043, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2040.end();
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2029);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2030);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2037, 0);
    device00.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2052, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2002.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2041.drawIndirect(buffer2059, 0);
    render_pass_encoder2041.drawIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2020, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2020.end();
    render_pass_encoder2031.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2037, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2072, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2072, 0);
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder2041.drawIndirect(buffer2018, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2058, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2066, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2002.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2048, "uint16");
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2011.end();
    device00.queue.submit([]);
    render_pass_encoder2021.drawIndirect(buffer2057, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2057, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2037, 0);
    render_pass_encoder2002.end();
    compute_pass_encoder2010.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2027, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2031.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2031.drawIndirect(buffer2040, 0);
}