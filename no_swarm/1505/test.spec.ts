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
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([-0.75, -0.5, -0.75, -0.25, 1.0, 0.5, -0.25, -1.0, -0.75, -0.25, -0.25, 0.5, -0.25, -1.0, 0.25, -1.0, 0.75, 0.5, -1.0, -1.0, 0.5, 0.0, -1.0, 0.75, -1.0, 1.0, -0.75, -0.5, -1.0, 0.25, -0.75, 0.5, 0.75, 0.5, 0.75, 1.0, -0.25, -0.5, -1.0, 1.0, 0.25, 0.75, 0.5, 0.0, -0.25, -1.0, 0.5, -0.25, -0.75, 0.5, -0.25, -0.5, -0.75, -1.0, 0.0, -0.75, -0.5, -1.0, -0.75, -0.25, 0.5, 1.0, -0.5, 0.5, 0.75, -0.5, 0.5, 1.0, 0.75, 0.0, 1.0, 0.5, 0.25, -0.5, 0.5, -0.25, -0.5, 1.0, 0.75, -0.5, -0.75, 0.5, -1.0, -0.75, -1.0, 0.5, -0.25, 0.0, -1.0, 0.75, 0.75, 1.0, 0.75, -1.0, -0.5, 0.5, 1.0, 0.75, 0.5, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array1 = new Float32Array([-0.25, -0.5, -1.0, 1.0, -0.5, -1.0, 0.0, -1.0, -0.25, -0.25, -0.5, -0.25, 0.5, -1.0, 0.75, -1.0, -0.75, -0.75, 0.5, -0.5, 1.0, -0.75, 0.0, 0.25, 1.0, -0.75, 1.0, -0.75, 0.5, 0.0, -0.75, 0.5, 1.0, 0.75, 0.75, 0.5, -0.5, 0.5, -0.25, 0.0, 1.0, 0.5, 1.0, -0.5, -0.25, -1.0, -0.25, 0.5, -1.0, 0.5, -0.75, -1.0, 1.0, -0.5, 0.25, -0.75, -0.75, 0.5, 1.0, -1.0, -0.5, -1.0, 0.25, 0.5, -0.5, 0.75, 0.25, 0.5, -0.25, -1.0, 0.5, -0.75, 0.0, -0.75, -0.5, 0.25, 0.5, -0.75, -0.25, 0.0, -0.5, -0.25, -0.25, -0.75, -1.0, 0.75, 0.75, 0.75, 0.75, -0.5, 0.0, 0.75, 0.25, -0.5, 0.25, -0.25, -0.25, 0.75, -0.75, 0.25, ]);
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("validation");
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
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
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
    
    device10.queue.submit([]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer200.destroy()
    
    
    const array2 = new Float32Array([0.75, -0.5, -0.5, -1.0, -0.75, -0.25, -0.5, -0.75, 0.0, 0.25, -0.5, 0.0, 0.25, -0.25, -0.5, -0.25, 0.0, 0.25, 0.75, 0.75, 0.0, -0.25, 1.0, -0.75, -1.0, 0.75, -1.0, -0.25, 0.5, -0.75, 0.5, -0.5, 0.0, -1.0, 0.0, 1.0, 0.25, 1.0, -0.75, 1.0, -0.75, 0.75, -0.25, 0.25, 0.25, -0.5, -0.5, 1.0, 0.0, -0.75, 0.75, -0.75, 1.0, -0.25, 1.0, 0.5, 0.75, 0.25, 0.5, 0.25, 1.0, 1.0, 0.5, 0.0, -0.75, -0.5, -0.75, -0.5, -0.75, -0.5, 0.25, -1.0, -0.75, 0.5, 0.75, -0.5, 0.0, 1.0, 0.5, 0.0, 0.75, -1.0, 0.75, 0.5, 0.0, 0.25, 0.25, -1.0, -1.0, -0.75, 0.25, -0.25, 0.5, 0.25, 0.5, -0.75, -0.25, 1.0, -0.75, 0.25, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array3 = new Float32Array([-1.0, -0.25, 1.0, 0.0, -0.5, 0.5, 0.25, -1.0, 0.5, -0.25, -0.5, -0.75, 0.75, -1.0, -1.0, 0.25, 0.25, -0.75, 0.75, 0.25, -1.0, -1.0, 0.5, 0.25, 0.5, 1.0, -0.75, -0.25, 1.0, 0.25, 0.0, -0.25, 0.25, 0.5, 0.0, -0.75, 0.0, -0.75, -0.5, -1.0, -0.25, 1.0, 0.75, -1.0, -0.5, -0.5, -0.75, 0.5, -0.5, 0.25, -0.5, 0.75, 0.75, -0.75, -0.5, -0.75, 0.0, -0.5, 0.0, -0.75, 0.5, 0.75, 0.0, -0.75, -0.5, -0.5, -0.25, 0.75, 0.25, 0.25, 0.75, 0.75, -0.25, -0.25, 0.75, -0.5, 0.0, -1.0, -1.0, 0.0, 0.75, 1.0, 1.0, 0.5, 0.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.5, -0.75, -0.25, -0.25, 0.0, -0.25, -1.0, 0.0, 0.75, -0.5, ]);
    buffer201.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture200.destroy();
    
    texture100.destroy();
    
    device20.destroy();
    
    device00.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer500 = command_encoder500.finish();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer500.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.destroy();
    buffer501.destroy()
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query500.destroy()
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture500.destroy();
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
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
        occlusionQuerySet: undefined
    });
    
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5040.executeBundles([])
    render_pass_encoder5040.setStencilReference(1);
    
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query502
    });
    render_pass_encoder5011.executeBundles([])
    
    render_pass_encoder5020.executeBundles([])
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    render_pass_encoder5020.insertDebugMarker("marker");
    
    
    render_pass_encoder5011.pushDebugGroup("group_marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    render_pass_encoder5011.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5040.pushDebugGroup("group_marker");
    render_pass_encoder5040.executeBundles([])
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    render_pass_encoder5040.setStencilReference(1);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5011.beginOcclusionQuery(0)
    render_pass_encoder5011.insertDebugMarker("marker");
    command_encoder504.pushDebugGroup("mygroupmarker")
    command_encoder504.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_pass_encoder5040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    device30.destroy();
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder5020.insertDebugMarker("marker")
    render_pass_encoder5020.executeBundles([])
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5040.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    query503.destroy()
    render_pass_encoder5011.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    render_pass_encoder5020.insertDebugMarker("marker");
    render_pass_encoder5020.beginOcclusionQuery(1)
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    query504.destroy()
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5011.popDebugGroup();
    
    render_pass_encoder5011.pushDebugGroup("group_marker");
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
    const render_pass_encoder5012 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder503.clearBuffer(buffer501);
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    query500.destroy()
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5040.popDebugGroup();
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder5011.endOcclusionQuery()
    render_pass_encoder5040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture501.destroy();
    render_pass_encoder5012.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5012.setStencilReference(1);
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder5040.executeBundles([])
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder5012.insertDebugMarker("marker");
    
    render_pass_encoder5011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query500.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5040.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5012.insertDebugMarker("marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder5012.setStencilReference(1);
    render_pass_encoder5020.setPipeline(render_pipeline500);
    
    render_pass_encoder5040.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5011.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder5040.pushDebugGroup("group_marker");
    
    
    render_pass_encoder5012.insertDebugMarker("marker");
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
    
    render_pass_encoder5012.insertDebugMarker("marker");
    render_pass_encoder5011.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device60.destroy();
    render_pass_encoder5020.pushDebugGroup("group_marker");
    render_pass_encoder5010.executeBundles([])
    
    render_pass_encoder5011.executeBundles([])
    device50.pushErrorScope("out-of-memory");
    render_pass_encoder5011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder5030.pushDebugGroup("group_marker");
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    render_pass_encoder5011.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5011.setStencilReference(1);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const render_pass_encoder5041 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query506
    });
    render_pass_encoder5041.setStencilReference(1);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array4 = new Float32Array([-0.75, 0.75, -0.5, -0.25, 0.0, 0.25, 0.75, 0.25, 1.0, -1.0, 0.75, -0.25, -0.75, -0.75, 0.25, 0.5, -0.25, 1.0, 0.5, 0.25, 0.75, -0.5, 0.75, -0.5, -0.25, -0.75, 0.0, 0.25, 0.0, 0.0, 0.0, -1.0, -0.5, -0.5, 1.0, 0.75, -0.5, -1.0, 0.25, 0.75, 0.75, -0.25, 1.0, -0.75, 0.75, 0.0, 0.0, -0.5, -1.0, -0.5, 1.0, 0.25, -0.75, 0.5, 0.5, 0.75, -0.75, 0.0, 0.75, 0.75, 0.25, -1.0, 0.5, -0.5, -0.25, 0.25, 0.75, 1.0, 0.5, 0.75, 1.0, 0.0, -0.75, -1.0, 1.0, -0.5, 0.25, 0.5, 0.5, 0.75, 0.0, -0.5, -0.25, 0.0, 0.25, -0.25, -0.5, 0.0, 0.0, -0.75, 0.0, 0.0, -0.25, 1.0, -0.5, -0.25, 0.0, -0.25, 0.0, -0.25, ]);
    
    render_pass_encoder5040.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const array5 = new Float32Array([0.75, 0.5, -0.75, -0.75, -0.75, -1.0, 0.75, 1.0, 0.75, 0.25, 1.0, -0.5, 0.25, -0.75, 0.25, -0.25, -0.5, -0.25, -0.75, -1.0, -0.75, 0.5, 0.25, -0.75, 0.75, 1.0, 0.5, 0.25, -0.5, -0.5, 1.0, -1.0, -0.25, 1.0, 0.0, -1.0, -1.0, -0.25, 0.75, -0.75, 1.0, 0.75, 0.75, 0.25, 0.75, -0.5, -0.75, 0.25, -0.75, -0.5, 0.75, -1.0, -1.0, -0.5, 1.0, -0.75, 0.5, -1.0, 0.75, 1.0, 0.75, 0.25, -0.75, 0.0, 0.0, 1.0, 0.25, 0.25, -0.5, 0.25, 1.0, 0.25, -0.25, 0.0, 0.5, 0.25, -0.25, 0.25, -0.75, 0.5, 1.0, 0.5, -0.5, -0.25, -0.75, 0.75, 0.75, 1.0, 1.0, 0.5, 0.0, -0.5, 1.0, 0.25, 0.0, -0.25, 0.75, 0.25, -0.5, -0.25, ]);
    render_pass_encoder5012.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5040.executeBundles([])
    
    device50.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query000.destroy()
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    
    
    render_pass_encoder5020.popDebugGroup();
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    
    const array6 = new Float32Array([0.25, 0.75, -0.5, -0.5, 0.25, -0.75, 0.0, 0.0, 0.25, 1.0, -0.75, 0.0, 0.0, -0.5, -1.0, -1.0, 0.25, -0.25, 0.0, 0.25, 0.25, -0.5, 0.0, -0.5, 0.0, 1.0, 0.25, 0.75, -0.75, 1.0, 0.5, 1.0, 0.75, 1.0, -0.5, 1.0, 0.5, -0.25, 0.5, -0.25, 0.75, 0.0, 1.0, -1.0, -0.5, 1.0, 0.0, 0.25, 1.0, 1.0, 0.0, 0.5, -1.0, -0.5, 1.0, -0.75, 0.0, -0.5, 0.0, 0.25, -0.5, 1.0, -0.75, -0.25, -0.25, -0.25, 1.0, 1.0, -0.5, 1.0, -0.5, 0.0, 0.5, -0.5, 0.75, 0.5, -1.0, -0.5, 0.0, 0.0, -1.0, 0.75, 0.25, 1.0, 0.0, 0.75, -0.25, 0.0, -0.75, -1.0, 0.25, -0.5, 0.5, -0.5, 0.0, 0.75, 1.0, -1.0, -0.5, -0.5, ]);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    buffer700.destroy()
    device20.destroy();
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5041.beginOcclusionQuery(0)
    device10.pushErrorScope("validation");
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder700.pushDebugGroup("mygroupmarker")
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
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
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group500);
    
    
    
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture802 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder5040.executeBundles([])
    render_pass_encoder5041.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    compute_pass_encoder5010.insertDebugMarker("marker")
    command_encoder700.popDebugGroup()
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    device70.pushErrorScope("out-of-memory");
    
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.submit([]);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array7 = new Float32Array([0.75, 0.75, 0.0, 0.5, 0.75, 1.0, -1.0, -0.25, -0.25, -0.5, 1.0, -0.75, -0.25, -0.25, 1.0, 0.25, -0.25, -0.5, 1.0, -0.5, -0.5, 1.0, -0.25, -0.5, -0.5, -1.0, -0.5, 0.0, 1.0, -1.0, -0.75, 0.75, -0.5, 0.0, 0.0, -0.5, 1.0, 0.75, -0.75, 0.75, 0.75, -0.25, 0.5, 0.0, 1.0, -0.75, -0.25, -0.5, -0.5, 1.0, 0.5, -1.0, 1.0, 0.0, -1.0, -0.25, 1.0, 0.75, 1.0, 0.25, -0.75, -1.0, 1.0, 0.25, 0.5, 0.5, 0.25, 0.0, 0.5, -0.75, 0.5, -1.0, -0.5, 0.5, -0.75, 0.25, 1.0, 1.0, 1.0, -0.75, 0.5, 1.0, -0.75, 1.0, -0.5, -1.0, 0.5, 0.5, 0.5, -0.25, -1.0, 0.75, -1.0, 0.75, -0.25, 1.0, 1.0, -0.75, 0.75, 0.0, ]);
    
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const array8 = new Float32Array([-0.25, -0.25, 0.25, -0.75, -0.5, 0.75, -0.25, -0.25, -0.5, 0.75, -0.5, -0.25, -1.0, -0.5, -0.75, -0.5, -0.25, 0.0, -0.5, -1.0, -0.25, -0.5, -0.75, 1.0, 0.0, 0.75, 1.0, 0.5, -1.0, -1.0, -0.25, 0.5, 0.5, 1.0, -0.5, -0.25, -0.75, -0.75, 0.5, 0.75, 1.0, 0.0, -0.5, -0.75, 0.75, -0.5, -0.25, 0.25, 0.75, 0.0, -0.5, -0.5, 0.25, -0.5, -1.0, -0.25, -0.5, 0.0, -0.5, 0.5, 0.0, 0.5, -1.0, -0.75, -0.25, 0.0, -1.0, 0.75, -0.25, -0.5, 0.75, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, 1.0, -0.5, -0.75, -1.0, -0.25, 0.25, 0.5, -0.5, -1.0, -1.0, 0.25, -1.0, -1.0, 1.0, 0.25, 0.75, -0.75, 0.75, 0.0, 1.0, 0.5, -0.25, 0.0, ]);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device70.queue.writeBuffer(buffer701, 0, array7, 0, array7.length);
    device50.queue.submit([command_buffer502, ]);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device80.queue.writeTexture({ texture: texture802 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device70.queue.writeBuffer(buffer702, 0, array8, 0, array8.length);
    
    device50.queue.submit([command_buffer500, ]);
    
    device80.destroy();
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer702.destroy()
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    command_encoder700.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query505.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer703.destroy()
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder700.popDebugGroup();
    render_bundle_encoder701.insertDebugMarker("marker");
    command_encoder701.pushDebugGroup("mygroupmarker")
    command_encoder701.insertDebugMarker("mymarker");
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    command_encoder701.insertDebugMarker("mymarker");
    buffer502.destroy()
    
    
    command_encoder503.copyBufferToBuffer(
        buffer503,
        0,
        buffer503,
        0,
        400
    );
    
    render_bundle_encoder702.insertDebugMarker("marker");
    
    render_bundle_encoder700.insertDebugMarker("marker");
    command_encoder701.insertDebugMarker("mymarker");
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    render_pass_encoder5011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    render_bundle_encoder701.setPipeline(render_pipeline701);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout702,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device30.pushErrorScope("internal");
    buffer703.destroy()
    device80.queue.writeTexture({ texture: texture802 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout702,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout702,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    device80.queue.writeTexture({ texture: texture802 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder5041.pushDebugGroup("group_marker");
    
    const array9 = new Float32Array([-0.25, 0.75, 0.25, -0.75, 1.0, 0.5, 0.0, 0.25, 0.5, -0.25, -0.25, -1.0, 1.0, 0.0, -1.0, 0.0, 0.75, -0.5, 0.0, -0.25, -0.75, -1.0, 0.0, -1.0, -0.75, -0.5, -0.25, -0.75, 0.75, -0.25, -0.25, 0.5, 1.0, 0.5, 0.0, 0.75, 0.5, 1.0, -0.75, 0.75, 1.0, 0.5, 1.0, 0.25, -0.25, 1.0, 0.0, -1.0, -0.5, -0.5, 0.75, -1.0, -0.75, 0.0, 0.0, 0.5, -1.0, 0.75, -0.25, -0.75, 0.25, -0.75, 1.0, 0.0, -1.0, 0.5, 0.5, -1.0, -1.0, 1.0, -0.25, 0.25, -0.5, -0.75, 1.0, 1.0, -0.25, 0.5, 0.0, 1.0, -1.0, -0.5, -0.25, 0.25, -0.5, -1.0, 1.0, -1.0, -0.5, 0.5, -0.25, 0.25, -1.0, 0.25, 0.25, -0.25, 0.5, 1.0, 1.0, 0.5, ]);
    render_bundle_encoder701.popDebugGroup();
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder700.setPipeline(render_pipeline701);
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeTexture({ texture: texture802 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5030.setStencilReference(1);
    render_bundle_encoder702.setPipeline(render_pipeline700);
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    command_encoder700.insertDebugMarker("mymarker");
    
    command_encoder700.insertDebugMarker("mymarker");
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    compute_pass_encoder7010.setPipeline(compute_pipeline700);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    buffer701.destroy()
    
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    
    command_encoder300.insertDebugMarker("mymarker");
    const render_pipeline706 = device70.createRenderPipeline({
        label: "render_pipeline706",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    render_bundle_encoder702.insertDebugMarker("marker");
    
    
    device70.pushErrorScope("out-of-memory");
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const render_pipeline707 = device70.createRenderPipeline({
        label: "render_pipeline707",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const array10 = new Float32Array([-0.25, 0.0, 0.25, 0.5, 0.25, -0.5, -1.0, -0.25, -0.5, 0.5, 1.0, -0.75, 1.0, -0.25, -0.5, 0.75, 0.25, -1.0, -1.0, -1.0, -0.25, -0.25, -1.0, 0.25, 0.0, 0.25, -1.0, -1.0, 0.75, 1.0, -0.75, 0.75, 0.25, -1.0, 0.75, -0.75, 0.5, 0.25, -1.0, 0.25, 0.25, 0.25, -0.5, 0.25, 0.0, -0.75, 0.25, -0.75, 1.0, -0.5, 0.5, 0.0, 0.25, 0.0, 1.0, -0.25, 0.0, 0.0, -0.5, -1.0, 0.0, 0.5, 0.0, 0.75, 0.75, 0.25, 0.75, 0.0, -1.0, 0.0, 0.0, 1.0, 0.25, 1.0, -1.0, 0.25, 0.25, 0.5, 1.0, 1.0, 0.0, 1.0, 0.5, 0.75, -0.5, -1.0, -0.5, 0.5, -0.25, -0.75, -0.25, -0.5, -1.0, -0.25, 1.0, -0.75, -0.25, -1.0, 1.0, -1.0, ]);
    compute_pass_encoder7010.popDebugGroup()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder7020.popDebugGroup()
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline708 = device70.createRenderPipeline({
        label: "render_pipeline708",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5011.executeBundles([])
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    command_encoder505.copyTextureToBuffer(
        {
            texture: texture502
        },
        {
            buffer: buffer501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder7020.setPipeline(compute_pipeline702);
    command_encoder700.popDebugGroup()
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.pushDebugGroup("group_marker");
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer705,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group700);
    
    device80.queue.writeTexture({ texture: texture802 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module706.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module707_code = "";
    try {
        shader_module707_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module707.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module707 = await device70.createShaderModule({ label: "shader_module707", code: shader_module707_code })
    
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    render_bundle_encoder702.insertDebugMarker("marker");
    var shader_module708_code = "";
    try {
        shader_module708_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module708.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module708 = await device70.createShaderModule({ label: "shader_module708", code: shader_module708_code })
    render_bundle_encoder700.insertDebugMarker("marker");
    command_encoder505.insertDebugMarker("mymarker");
    
    
    const render_bundle_encoder703 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder703",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([0.0, -1.0, 0.0, 0.25, -0.75, 0.0, -0.5, -1.0, -1.0, 0.0, 0.5, 1.0, -0.25, 1.0, -0.25, -1.0, -1.0, 0.25, 0.0, -0.5, -1.0, 0.75, -0.75, -1.0, -0.25, 0.0, -0.75, -0.25, 0.5, 0.25, 0.25, -0.75, 0.0, 0.5, -1.0, -0.75, 0.25, 1.0, 0.5, 1.0, 0.75, -0.5, 0.0, 0.0, 0.75, -0.25, -0.5, -0.75, 0.25, -1.0, -1.0, -1.0, -1.0, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, 0.75, 1.0, -0.25, -0.25, 0.0, -0.75, -0.75, 0.25, -0.75, 0.5, -0.25, -0.5, 1.0, 0.75, 0.75, -0.75, 0.5, 0.0, -0.25, 0.75, 1.0, 0.0, 1.0, 0.25, 1.0, -0.25, -0.75, 0.0, -0.5, 0.75, 0.75, -1.0, -0.5, 0.25, -0.75, 0.25, 0.75, -0.25, 0.5, 0.5, -0.75, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer700 = command_encoder700.finish();
    
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout701,
        compute: {
            module: shader_module707,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7020.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline709 = device70.createRenderPipeline({
        label: "render_pipeline709",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    buffer704.destroy()
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout700,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    var shader_module709_code = "";
    try {
        shader_module709_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module709.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module709 = await device70.createShaderModule({ label: "shader_module709", code: shader_module709_code })
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout702,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7020.dispatchWorkgroups(100);
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer706,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer707,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group701);
    compute_pass_encoder7020.end();
    compute_pass_encoder7010.dispatchWorkgroups(100);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder7010.end();
    command_encoder701.popDebugGroup()
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder7020.popDebugGroup()
    const command_buffer702 = command_encoder702.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5012.setPipeline(render_pipeline500);
    compute_pass_encoder7020.popDebugGroup()
    render_pass_encoder5020.popDebugGroup();
    device70.queue.submit([command_buffer700, command_buffer701, command_buffer702, ]);
    device70.queue.submit([command_buffer702, ]);
    device70.queue.submit([command_buffer702, ]);
    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer708,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer709,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group702);
    render_pass_encoder5030.setPipeline(render_pipeline500);
}