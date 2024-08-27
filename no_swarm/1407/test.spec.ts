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
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array0 = new Float32Array([0.75, 0.5, -0.25, 0.25, 0.5, 1.0, -0.5, -0.5, -1.0, -0.5, 0.75, 0.25, 0.25, 0.25, -1.0, -0.75, 0.75, 0.5, 0.75, -1.0, 0.25, -0.5, 0.75, -0.75, 0.5, 0.5, 0.75, -0.25, 0.5, -0.5, -0.25, 0.75, -0.25, 1.0, 0.0, 0.25, 0.0, 0.25, -0.5, -0.75, -0.75, 0.5, 0.5, 0.0, 0.25, 0.0, -0.75, -0.5, 0.25, -0.75, 1.0, 0.5, -0.75, 0.25, -0.75, 0.75, -0.75, 0.0, -0.75, -1.0, -1.0, -0.5, -0.25, 0.25, 0.5, -1.0, 0.5, 0.25, -1.0, 0.75, -0.25, -1.0, -0.25, 0.5, 0.5, 1.0, -0.5, 0.5, -1.0, -1.0, -0.25, -0.25, 0.5, 0.75, 0.5, -0.5, -0.25, -1.0, 0.25, 0.25, 0.25, 0.25, 0.5, -0.75, 0.0, -0.75, 0.25, 0.0, 0.75, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.destroy();
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    texture000.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.destroy();
    
    
    
    
    
    
    
    
    const array1 = new Float32Array([0.75, -1.0, -0.5, 0.75, -0.75, 0.25, 0.75, -1.0, 0.25, 1.0, -0.25, -0.25, -0.25, -0.25, 0.5, 0.25, 0.75, 1.0, 0.0, 0.0, 0.5, 1.0, -0.5, -1.0, 0.5, 0.0, 0.0, 0.25, -0.5, 0.5, 0.0, 0.75, 0.25, 0.25, -0.25, 0.0, 0.0, 0.5, -1.0, 0.75, 0.25, -0.75, 0.5, 0.25, 0.5, 1.0, 0.5, 0.75, -1.0, -1.0, -0.75, 0.25, 0.0, 0.75, 0.25, -0.5, -1.0, -0.75, -1.0, 1.0, 0.75, -0.5, 0.5, -1.0, -0.25, 0.25, 0.25, 0.75, 0.5, 0.0, -0.75, 0.0, -0.25, 0.0, 0.25, -1.0, 0.25, -0.25, -0.25, 0.5, -0.75, 0.0, -0.75, 0.25, 0.0, 0.75, -0.5, 0.75, -0.75, 0.0, -0.5, -0.25, 0.0, 0.0, 0.25, -1.0, 0.0, -1.0, 0.75, 0.0, ]);
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("out-of-memory");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
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
    const command_buffer201 = command_encoder201.finish();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    device40.pushErrorScope("internal");
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    
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
    texture200.destroy();
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.popDebugGroup();
    
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2020.beginOcclusionQuery(0)
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2000.setStencilReference(1);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture203.destroy();
    texture202.destroy();
    command_encoder400.pushDebugGroup("mygroupmarker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    render_pass_encoder2000.executeBundles([])
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query400.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder401.pushDebugGroup("mygroupmarker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    
    device20.queue.submit([command_buffer201, ]);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2020.executeBundles([])
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
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer400.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder2030.executeBundles([])
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder2020.executeBundles([])
    
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    texture400.destroy();
    command_encoder401.insertDebugMarker("mymarker");
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    
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
    render_pass_encoder2020.popDebugGroup();
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder2020.endOcclusionQuery()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2030.popDebugGroup();
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
    
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query400.destroy()
    query000.destroy()
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2030.setStencilReference(1);
    
    
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2000.setPipeline(render_pipeline203);
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
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
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder2020.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query401.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.destroy();
    
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder2020.popDebugGroup();
    device40.pushErrorScope("internal");
    render_pass_encoder2030.executeBundles([])
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    buffer200.destroy()
    render_pass_encoder2030.setPipeline(render_pipeline200);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    buffer202.destroy()
    command_encoder401.clearBuffer(buffer401);
    compute_pass_encoder4000.insertDebugMarker("marker")
    buffer203.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
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

    render_pass_encoder2030.setBindGroup(0, bind_group202);
    render_pass_encoder2020.insertDebugMarker("marker");
    command_encoder401.copyBufferToBuffer(
        buffer400,
        0,
        buffer401,
        0,
        400
    );
    
    buffer402.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_pass_encoder2000.insertDebugMarker("marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture204.destroy();
    command_encoder401.insertDebugMarker("mymarker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    query200.destroy()
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2020.setVertexBuffer(0, buffer204);
    render_bundle_encoder400.popDebugGroup();
    const command_buffer402 = command_encoder402.finish();
    query401.destroy()
    command_encoder403.insertDebugMarker("mymarker");
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    
    
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    buffer201.destroy()
    
    compute_pass_encoder4000.popDebugGroup()
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    command_encoder403.clearBuffer(buffer401);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
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
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder2020.beginOcclusionQuery(1)
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder4010.setStencilReference(1);
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    
    buffer401.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    render_pass_encoder2040.setPipeline(render_pipeline205);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder4010.setPipeline(render_pipeline400);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    buffer204.destroy()
    
    
    command_encoder403.pushDebugGroup("mygroupmarker")
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2020.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4010.setStencilReference(1);
    
    render_pass_encoder2040.insertDebugMarker("marker");
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_pass_encoder2040.endOcclusionQuery()
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
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query402
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query400.destroy()
    
    query200.destroy()
    
    query200.destroy()
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder200.copyBufferToBuffer(
        buffer206,
        0,
        buffer207,
        0,
        400
    );
    render_pass_encoder2040.insertDebugMarker("marker");
    
    device30.pushErrorScope("validation");
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group203);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer207.destroy()
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
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    
    render_pass_encoder2040.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    buffer406.destroy()
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-0.25, 0.0, 1.0, 1.0, 0.75, -0.75, 0.75, 0.75, -0.5, 0.0, 1.0, -1.0, -0.75, -0.75, 0.25, 0.75, -0.5, 1.0, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, 0.25, -1.0, -0.5, 0.5, -1.0, 0.0, -1.0, -0.75, -0.5, 0.75, 0.5, 1.0, 1.0, 0.75, -0.25, 0.5, 0.75, 0.0, 0.5, 0.75, 0.25, 1.0, -0.25, -0.75, -0.75, 0.0, -0.5, -0.25, -1.0, 0.5, 0.0, 0.25, -0.5, 0.75, 1.0, -0.5, 0.0, 0.75, 0.5, 0.75, -0.75, 0.0, 1.0, -0.25, 1.0, 0.0, 0.0, -0.75, -0.25, 0.25, -0.25, -0.25, -1.0, 0.25, 0.75, 0.25, 1.0, 1.0, -0.25, -1.0, -1.0, -0.25, 1.0, 0.25, -1.0, 0.0, 0.75, -0.75, -1.0, 0.5, 0.75, 1.0, -0.75, 0.25, -0.25, 1.0, ]);
    render_pass_encoder2000.setVertexBuffer(0, buffer207);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder4040.executeBundles([])
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
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
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    command_encoder406.copyBufferToBuffer(
        buffer402,
        0,
        buffer400,
        0,
        400
    );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder4030.setPipeline(compute_pipeline401);
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder2040.setStencilReference(1);
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture201.destroy();
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4040.setStencilReference(1);
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

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    query200.destroy()
    render_pass_encoder2030.setVertexBuffer(0, buffer205);
    
    render_pass_encoder2040.setVertexBuffer(0, buffer208);
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

    render_bundle_encoder200.setBindGroup(0, bind_group205);
    query402.destroy()
    
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    texture300.destroy();
    
    render_bundle_encoder400.popDebugGroup();
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2001.setPipeline(render_pipeline202);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder2040.draw(3);
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_pass_encoder2021.setPipeline(render_pipeline207);
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder2040.beginOcclusionQuery(2)
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4040.insertDebugMarker("marker");
    
    render_pass_encoder2000.setStencilReference(1);
    
    device40.pushErrorScope("internal");
    render_pass_encoder2030.draw(3);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder406.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer405.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder4000.insertDebugMarker("marker");
    
    render_pass_encoder4000.setPipeline(render_pipeline400);
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer205.destroy()
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
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
    render_pass_encoder2021.pushDebugGroup("group_marker");
    command_encoder200.copyBufferToBuffer(
        buffer204,
        0,
        buffer202,
        0,
        400
    );
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder2001.endOcclusionQuery()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4030.setBindGroup(0, bind_group401);
    const command_buffer406 = command_encoder406.finish();
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4000.setBindGroup(0, bind_group402);
    render_pass_encoder2022.setPipeline(render_pipeline202);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder4040.setPipeline(render_pipeline400);
    render_pass_encoder2030.end();
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline207.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group206);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder4001.setPipeline(render_pipeline402);
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
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_pass_encoder4001.setBindGroup(0, bind_group403);
    render_pass_encoder2021.setVertexBuffer(0, buffer206);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4000.setVertexBuffer(0, buffer400);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4014, 0);
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group207);
    render_pass_encoder2001.setVertexBuffer(0, buffer206);
    render_pass_encoder4050.setPipeline(render_pipeline402);
    render_pass_encoder2001.draw(3);
    render_pass_encoder4000.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.end();
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group404);
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder4010.setVertexBuffer(0, buffer409);
    command_encoder400.popDebugGroup()
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2022.setBindGroup(0, bind_group208);
    device50.queue.submit([]);
    render_pass_encoder2021.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder4000.drawIndexed(3);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    render_pass_encoder4050.setBindGroup(0, bind_group405);
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group406);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4010.drawIndirect(buffer4011, 0);
    render_pass_encoder2040.end();
    render_pass_encoder4001.setVertexBuffer(0, buffer401);
    render_pass_encoder4001.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4001.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder2020.endOcclusionQuery()
    compute_pass_encoder4030.end();
    render_pass_encoder4010.end();
    render_pass_encoder2030.drawIndirect(buffer2016, 0);
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.end();
    render_pass_encoder2022.setVertexBuffer(0, buffer206);
    render_pass_encoder4040.setVertexBuffer(0, buffer4017);
    command_encoder403.popDebugGroup()
    render_pass_encoder4040.drawIndirect(buffer400, 0);
    render_pass_encoder2030.draw(3);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder2022.drawIndirect(buffer2018, 0);
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder2001.end();
    render_pass_encoder4040.end();
    command_encoder401.popDebugGroup()
    render_pass_encoder4000.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4050.setVertexBuffer(0, buffer4020);
    compute_pass_encoder4000.end();
    render_pass_encoder4050.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder4050.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder4001.end();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4000.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4001.end();
    render_pass_encoder2001.drawIndirect(buffer2011, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2022.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2040.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder4001.drawIndexedIndirect(buffer4018, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4010.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder2001.drawIndirect(buffer2012, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder4050.drawIndirect(buffer4020, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder2021.popDebugGroup();
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    render_pass_encoder4010.end();
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder2040.end();
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer403, ]);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4040.drawIndirect(buffer4014, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder4000.drawIndirect(buffer4012, 0);
    render_pass_encoder4010.drawIndirect(buffer4011, 0);
    render_pass_encoder4050.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer405 = command_encoder405.finish();
    render_pass_encoder4000.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer202, 0);
    const command_buffer202 = command_encoder202.finish();
    command_encoder200.popDebugGroup()
    render_pass_encoder4050.drawIndirect(buffer4014, 0);
    device40.queue.submit([command_buffer402, command_buffer405, ]);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder4050.drawIndirect(buffer4014, 0);
    render_pass_encoder2022.drawIndirect(buffer201, 0);
    const command_buffer200 = command_encoder200.finish();
    device40.queue.submit([command_buffer404, command_buffer405, command_buffer406, ]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer2017, 0);
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group408);
    render_pass_encoder4050.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder4000.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder4000.setIndexBuffer(buffer4024, "uint16");
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4050.drawIndirect(buffer4021, 0);
    render_pass_encoder4050.drawIndexedIndirect(buffer4014, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder4010.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2022.draw(3);
    render_pass_encoder4010.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer4024, "uint16");
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2030.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder4000.end();
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2001.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2040.draw(3);
    compute_pass_encoder4030.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder4000.draw(3);
    render_pass_encoder2001.draw(3);
    render_pass_encoder4001.end();
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4050.drawIndirect(buffer406, 0);
    render_pass_encoder4040.drawIndirect(buffer4011, 0);
    render_pass_encoder4040.draw(3);
    render_pass_encoder4050.drawIndirect(buffer4014, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder4050.drawIndirect(buffer4014, 0);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    render_pass_encoder4001.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer404, "uint16");
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4040.draw(3);
    render_pass_encoder2022.drawIndirect(buffer2014, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder4050.drawIndexed(3);
    render_pass_encoder4010.end();
    compute_pass_encoder4000.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4050.end();
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer204, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4010.drawIndirect(buffer4016, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder4001.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2022.draw(3);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder2022.drawIndirect(buffer2014, 0);
    render_pass_encoder2040.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder4040.drawIndirect(buffer402, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder4001.popDebugGroup();
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group409);
    render_pass_encoder4001.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4027, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4027, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4014, 0);
    device40.queue.submit([]);
    device20.queue.submit([command_buffer204, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4028, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4028, 0);
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.draw(3);
    compute_pass_encoder4030.end();
    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4030,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4010);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder2040.end();
    render_pass_encoder4000.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4032,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4011);
    render_pass_encoder2001.drawIndexedIndirect(buffer2016, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4010.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder4000.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder2021.endOcclusionQuery()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder4010.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder4040.draw(3);
    compute_pass_encoder4030.popDebugGroup()
    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4034,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4012);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4001.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder4000.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2019, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4035, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4035, 0);
    render_pass_encoder4040.drawIndirect(buffer4024, 0);
    compute_pass_encoder4030.end();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder4001.setIndexBuffer(buffer4035, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4035, 0);
    render_pass_encoder4000.drawIndirect(buffer4035, 0);
    render_pass_encoder4001.setIndexBuffer(buffer4034, "uint16");
    device70.queue.submit([]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4036, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4036, 0);
    render_pass_encoder4001.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4050.drawIndexedIndirect(buffer4027, 0);
    render_pass_encoder4010.setIndexBuffer(buffer405, "uint16");
    device40.queue.submit([command_buffer402, command_buffer405, ]);
    render_pass_encoder4050.drawIndirect(buffer4020, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder4000.drawIndexedIndirect(buffer4031, 0);
    render_pass_encoder2022.setIndexBuffer(buffer200, "uint16");
    device40.queue.submit([command_buffer405, command_buffer406, ]);
    render_pass_encoder4010.end();
    render_pass_encoder4000.drawIndirect(buffer404, 0);
    device40.queue.submit([command_buffer404, command_buffer406, ]);
    render_pass_encoder2022.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder4040.drawIndirect(buffer4027, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.endOcclusionQuery()
    device70.queue.submit([]);
    compute_pass_encoder4000.end();
    render_pass_encoder4010.drawIndexedIndirect(buffer4027, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4037, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4037, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder4000.end();
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2020.popDebugGroup();
    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4039,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4013);
    render_pass_encoder2022.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder4040.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4050.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder4050.end();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder4001.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2016, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder4050.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4040.draw(3);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder4010.drawIndirect(buffer4027, 0);
    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4041,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4014);
    render_pass_encoder2021.end();
    render_pass_encoder4050.end();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2021.end();
    render_pass_encoder4000.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder4010.drawIndexedIndirect(buffer4035, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder2022.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder4040.drawIndirect(buffer4017, 0);
    render_pass_encoder4040.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder4050.drawIndirect(buffer4014, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4050.drawIndexedIndirect(buffer4035, 0);
    render_pass_encoder4010.setIndexBuffer(buffer4041, "uint16");
    render_pass_encoder2022.end();
    render_pass_encoder2021.end();
    render_pass_encoder2021.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder4001.drawIndirect(buffer4037, 0);
    render_pass_encoder4001.drawIndirect(buffer4037, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2022.drawIndirect(buffer203, 0);
    render_pass_encoder4001.end();
    render_pass_encoder4000.drawIndirect(buffer4010, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4035, 0);
    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4043,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4015);
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder4000.drawIndirect(buffer4034, 0);
    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4045,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4016);
    render_pass_encoder2022.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder4040.drawIndirect(buffer4031, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder4050.end();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder4050.drawIndirect(buffer4037, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder4050.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer4028, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4014, 0);
    device20.queue.submit([command_buffer204, ]);
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder4050.drawIndirect(buffer4035, 0);
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder4001.drawIndirect(buffer4014, 0);
    render_pass_encoder4010.drawIndirect(buffer4036, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder4001.end();
    render_pass_encoder4001.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder4001.drawIndirect(buffer4021, 0);
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2040.end();
    render_pass_encoder2022.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4001.end();
    render_pass_encoder2021.end();
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4040.drawIndexedIndirect(buffer4035, 0);
    render_pass_encoder2001.drawIndirect(buffer2018, 0);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer403, ]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder4040.drawIndirect(buffer4027, 0);
    render_pass_encoder2040.drawIndirect(buffer209, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4028, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder4050.end();
    device40.queue.submit([command_buffer401, command_buffer405, ]);
    render_pass_encoder4040.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder4001.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder4050.drawIndirect(buffer406, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4040.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder4050.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2000.end();
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4000.end();
    render_pass_encoder4000.drawIndirect(buffer4035, 0);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4027, 0);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder4040.drawIndirect(buffer4027, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder4010.drawIndirect(buffer4028, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4046, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4046, 0);
    render_pass_encoder4040.drawIndirect(buffer4039, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer4027, 0);
    render_pass_encoder4000.drawIndirect(buffer4046, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2019, 0);
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder4001.drawIndexedIndirect(buffer4011, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4046, 0);
    render_pass_encoder4001.end();
    render_pass_encoder4040.drawIndirect(buffer4013, 0);
    render_pass_encoder2000.end();
    render_pass_encoder4050.drawIndirect(buffer4037, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4027, 0);
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder2020.drawIndirect(buffer2010, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    render_pass_encoder4010.drawIndirect(buffer4027, 0);
    render_pass_encoder2020.end();
    device40.queue.submit([]);
    render_pass_encoder4050.setIndexBuffer(buffer4041, "uint16");
    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4048,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4017);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device70.queue.submit([]);
    render_pass_encoder2020.end();
    render_pass_encoder4000.drawIndexedIndirect(buffer4011, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4050.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder2030.draw(3);
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([]);
    render_pass_encoder2022.drawIndirect(buffer2010, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4040.drawIndexedIndirect(buffer4034, 0);
    device50.queue.submit([]);
    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4050,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4018);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4000.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2040.end();
    device20.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder4050.setIndexBuffer(buffer4047, "uint16");
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2022.drawIndirect(buffer2019, 0);
    render_pass_encoder2000.end();
    render_pass_encoder4000.drawIndirect(buffer409, 0);
    device40.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4018, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4036, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4027, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer405, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder4040.end();
    render_pass_encoder4001.drawIndirect(buffer4046, 0);
    render_pass_encoder4050.draw(3);
    render_pass_encoder2022.draw(3);
    render_pass_encoder4010.drawIndirect(buffer401, 0);
    device70.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4050.drawIndexedIndirect(buffer4027, 0);
    render_pass_encoder4001.drawIndirect(buffer4048, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder4050.drawIndirect(buffer4046, 0);
    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4052,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4019);
    render_pass_encoder4040.drawIndirect(buffer4036, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2001.end();
    render_pass_encoder2000.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder4040.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4046, 0);
    render_pass_encoder4000.drawIndirect(buffer4048, 0);
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([]);
    device40.queue.submit([command_buffer406, ]);
    device40.queue.submit([command_buffer405, command_buffer406, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder4010.popDebugGroup();
}