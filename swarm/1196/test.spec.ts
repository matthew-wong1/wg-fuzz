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
    
    const array0 = new Float32Array([0.0, 0.0, -0.5, 0.75, 0.0, -0.5, 0.5, -0.75, -1.0, 0.75, -0.75, 0.5, -0.75, -0.5, -1.0, -0.25, -0.5, 0.75, 0.75, 0.75, 0.75, -0.75, -0.75, -0.75, 0.25, -0.75, 0.5, -1.0, 0.5, 0.5, 0.75, 0.5, 0.25, -1.0, 0.75, -0.5, 0.75, 0.75, -0.75, -1.0, 0.0, 0.5, 0.5, -0.5, 0.5, 0.25, 0.0, 0.0, -1.0, 0.5, 0.75, 0.0, 0.75, -1.0, 1.0, 1.0, 0.25, 0.0, 0.5, 0.25, -0.5, -0.5, -0.25, 1.0, 1.0, -1.0, -0.5, -1.0, 1.0, -0.75, 0.25, -0.25, -1.0, 0.0, -0.25, 1.0, 0.25, 1.0, -0.75, 0.25, 0.5, -0.25, -0.25, 0.75, 1.0, 0.25, 0.5, -1.0, -0.75, 0.75, 1.0, 0.25, 1.0, -1.0, 0.5, -0.25, -0.5, 0.5, -1.0, 0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.destroy();
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    const array1 = new Float32Array([-0.75, -0.75, 0.0, 0.0, 1.0, 0.25, 0.5, -0.75, -0.5, 1.0, 0.25, -0.25, 0.0, 0.5, 0.75, 1.0, 0.75, 0.25, -0.5, 0.75, 0.0, 0.0, -0.75, -0.75, 0.5, 1.0, 1.0, -0.75, -1.0, 0.75, 0.25, -1.0, -1.0, -0.25, -1.0, 0.0, -0.75, -0.5, -0.5, 0.75, 0.25, -0.25, 1.0, -1.0, 0.25, -0.25, 0.75, -0.75, 0.25, 0.5, 0.75, -1.0, 0.75, -0.5, 1.0, 0.5, 1.0, -0.75, -0.25, 0.5, 1.0, 1.0, -0.75, -1.0, -1.0, -0.5, 0.75, 1.0, 0.75, -0.25, -0.5, 0.25, -0.75, -0.75, -0.75, 0.0, 1.0, 0.5, -0.25, 0.5, -0.75, 0.25, -0.5, -0.25, -0.75, 0.5, 0.5, 0.25, 0.5, -0.25, -1.0, -1.0, -0.5, 1.0, 1.0, -1.0, 0.5, -0.5, 0.25, 1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array2 = new Float32Array([-1.0, 0.25, 0.25, 0.0, 0.5, 1.0, 0.5, 0.0, 0.25, -0.75, 0.5, 0.0, -0.25, -0.5, -1.0, 1.0, -0.5, 1.0, 1.0, 0.0, 0.25, 0.5, 0.25, 0.0, -0.25, 0.25, -0.25, -0.75, -1.0, 1.0, 0.5, 0.0, 0.5, 0.75, 0.25, 0.75, -1.0, 1.0, 1.0, -0.75, 0.0, -0.25, 0.25, 0.25, 0.25, 0.75, -1.0, -1.0, 0.25, 0.5, -1.0, -0.5, -0.75, 0.25, -0.5, 0.75, -0.5, -0.25, -0.75, -0.5, -0.75, -1.0, 0.5, 0.5, -0.75, 1.0, 0.25, -0.25, 0.25, -1.0, 0.0, 0.75, -0.5, 0.0, 0.75, 0.25, -0.25, -0.5, -1.0, 0.0, 1.0, 0.0, 1.0, -0.25, -1.0, -1.0, 0.5, -0.75, -0.75, 0.75, -1.0, 0.75, -1.0, 1.0, -0.5, 0.5, 0.0, 0.25, -0.5, -1.0, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    device10.destroy();
    
    
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.pushErrorScope("validation");
    device10.pushErrorScope("internal");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.pushErrorScope("out-of-memory");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const array3 = new Float32Array([1.0, 1.0, -0.5, -1.0, 0.0, 1.0, 0.25, -0.75, -1.0, -0.75, -0.75, 0.5, 0.5, -1.0, -0.75, 0.25, 0.75, -1.0, -0.25, 0.25, -0.5, 0.5, -0.75, -1.0, 0.75, 0.0, -1.0, 1.0, -0.25, 0.75, 0.25, -0.25, 0.75, -0.5, -0.25, -1.0, 0.75, 0.25, -0.5, 0.75, -1.0, 1.0, 0.0, 1.0, 0.25, 1.0, 0.75, 0.5, -0.75, 0.75, -1.0, 0.0, 1.0, 1.0, -0.75, -0.5, -0.75, -0.5, 0.0, 1.0, 0.75, 0.75, -0.5, 0.5, 0.5, 1.0, 0.25, 0.75, 1.0, 0.25, 0.75, 0.25, -1.0, 0.25, 0.5, -1.0, -1.0, 1.0, 1.0, -0.75, -0.25, 0.75, -0.25, -0.75, 0.25, -0.25, 0.0, -1.0, 0.75, 0.0, -0.25, 0.5, 0.5, -0.75, -0.5, 1.0, -0.5, -1.0, 0.5, -0.5, ]);
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.pushErrorScope("internal");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
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
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    
    const array4 = new Float32Array([0.75, 0.25, 0.0, 0.5, 0.75, 0.25, -0.5, 0.0, -1.0, -0.5, 0.5, 0.75, -1.0, -0.75, 0.5, -1.0, -0.75, -1.0, -0.75, -0.5, 1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 0.75, -1.0, -0.25, 0.0, 0.75, -0.25, 0.25, -0.25, 0.75, 0.75, -0.25, 0.75, 0.75, 1.0, -0.5, 0.5, -0.25, -1.0, -0.25, -0.5, 0.0, -0.75, 0.0, 0.25, -0.25, 0.0, 0.0, -1.0, 0.75, -1.0, 0.0, -0.75, -1.0, -0.5, 0.25, 1.0, 0.75, -0.5, -0.75, 0.0, 1.0, 0.5, 0.0, 0.0, 0.5, -1.0, 0.75, 0.25, 0.25, -1.0, 1.0, 0.75, 0.5, 0.75, -0.25, 0.0, 0.0, 0.75, 1.0, -1.0, -0.75, -1.0, -0.75, 1.0, -0.75, 0.75, -0.5, -1.0, 1.0, 0.25, 0.5, 0.0, 0.0, 0.25, ]);
    buffer300.destroy()
    buffer400.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32sint",
        dimension: "2d"
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    texture500.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
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
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    texture500.destroy();
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder402.clearBuffer(buffer401);
    texture400.destroy();
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder300.popDebugGroup()
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder303.pushDebugGroup("mygroupmarker")
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
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder304.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.popDebugGroup()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
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
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    
    buffer401.destroy()
    command_encoder400.copyTextureToTexture(
        {
            texture: texture401
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    device00.destroy();
    command_encoder401.copyTextureToTexture(
        {
            texture: texture401
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const array5 = new Float32Array([-0.75, -0.25, 0.25, 1.0, -0.25, -0.25, -1.0, -0.75, 0.5, 1.0, 1.0, 0.5, 0.25, 0.0, -1.0, -1.0, 0.0, -0.5, 0.75, -0.25, 0.5, -0.25, 0.75, 1.0, 0.75, -0.5, -0.5, -0.5, -0.5, 0.75, 0.0, -0.75, 0.25, -0.5, -0.25, 0.5, 0.75, -1.0, 0.25, 0.25, 0.75, 0.0, 0.5, -1.0, 0.0, 0.0, -0.25, -0.25, -0.25, -0.5, -0.5, -0.75, -1.0, -0.75, 0.0, -1.0, -0.75, 0.5, 0.75, -0.25, 0.25, -0.5, 0.25, -0.75, 0.25, 0.75, -0.75, 1.0, 0.25, -1.0, 0.0, 0.25, -1.0, -1.0, 1.0, 0.0, -1.0, 0.75, 0.0, -1.0, -0.5, -0.5, -0.25, 0.25, 0.75, -0.25, -0.5, 1.0, -1.0, -0.5, 0.0, 0.5, 1.0, -0.5, -1.0, 0.0, -0.75, -0.75, -0.25, 0.0, ]);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4020.executeBundles([])
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture403.destroy();
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
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    command_encoder402.clearBuffer(buffer402);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder502.insertDebugMarker("marker");
    command_encoder306.pushDebugGroup("mygroupmarker")
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder305.pushDebugGroup("mygroupmarker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder304.clearBuffer(buffer300);
    render_pass_encoder4020.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
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
    render_bundle_encoder501.setPipeline(render_pipeline501);
    render_pass_encoder4020.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    buffer402.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture401.destroy();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture402.destroy();
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    command_encoder306.popDebugGroup()
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4021.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder502.setPipeline(render_pipeline502);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder301.copyTextureToTexture(
        {
            texture: texture301
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder501.popDebugGroup();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array6 = new Float32Array([-0.75, 0.0, -1.0, 0.75, -1.0, -0.75, -0.5, 0.0, -0.5, -1.0, 0.0, 0.25, -0.25, 0.75, 0.25, -0.5, -1.0, 0.5, 0.5, -0.5, 0.5, -1.0, 0.75, -1.0, -1.0, 0.25, 0.5, 0.25, -0.5, -0.75, -0.25, -1.0, 1.0, -0.75, -0.25, -0.75, 0.75, 0.5, -0.25, 0.0, -0.25, 0.25, -0.25, -1.0, 1.0, -1.0, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -0.5, -0.75, 0.75, -0.25, 0.5, 0.0, 0.0, 0.0, 0.75, 0.5, 0.5, -0.5, -0.25, -1.0, 0.25, -0.75, -0.5, -1.0, 0.5, 0.0, 0.75, -1.0, 0.0, -0.75, 0.75, 0.0, -0.75, -1.0, -0.5, -0.5, 0.5, 1.0, 0.5, 0.5, 0.0, -0.75, 0.0, -1.0, -0.25, -0.75, 0.25, -0.25, 0.25, 0.75, 1.0, -0.25, 0.25, 0.75, ]);
    render_bundle_encoder400.setPipeline(render_pipeline401);
    command_encoder303.popDebugGroup()
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    render_pass_encoder4010.executeBundles([])
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    render_pass_encoder4000.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.popDebugGroup();
    render_pass_encoder4010.beginOcclusionQuery(0)
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    render_pass_encoder4000.popDebugGroup();
    command_encoder300.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeTexture({ texture: texture402 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
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
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    
    
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    command_encoder307.copyTextureToTexture(
        {
            texture: texture303
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder4030.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    render_pass_encoder3060.executeBundles([])
    
    render_pass_encoder3060.executeBundles([render_bundle_encoder300, ])
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3060.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3001.beginOcclusionQuery(0)
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query303
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    
    render_pass_encoder3001.pushDebugGroup("group_marker");
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder4030.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query303
    });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture501.destroy();
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder305.popDebugGroup()
    render_bundle_encoder502.popDebugGroup();
    render_bundle_encoder502.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    command_encoder305.clearBuffer(buffer300);
    render_pass_encoder3040.beginOcclusionQuery(1)
    render_pass_encoder4001.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_pass_encoder3010.beginOcclusionQuery(0)
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4021.executeBundles([render_bundle_encoder401, ])
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4021.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const render_pass_encoder3061 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    texture503.destroy();
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const render_pass_encoder3051 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4021.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    render_pass_encoder3051.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder4010.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    texture404.destroy();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder4010.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3020.executeBundles([])
    render_pass_encoder4020.popDebugGroup();
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    render_pass_encoder4030.popDebugGroup();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    render_bundle_encoder401.setPipeline(render_pipeline402);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder4030.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    render_pass_encoder3001.pushDebugGroup("group_marker");
    render_pass_encoder4030.pushDebugGroup("group_marker");
    
    render_pass_encoder3001.executeBundles([])
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder300.popDebugGroup()
    render_pass_encoder3061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.executeBundles([render_bundle_encoder300, ])
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3011.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    buffer300.destroy()
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
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

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    device60.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4030.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3061.beginOcclusionQuery(0)
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3070.beginOcclusionQuery(2)
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3051.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3040.executeBundles([])
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3011.pushDebugGroup("group_marker");
    render_pass_encoder3020.executeBundles([])
    render_pass_encoder3001.popDebugGroup();
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    texture300.destroy();
    const array7 = new Float32Array([-0.25, -0.25, -0.75, 1.0, -0.75, -0.25, -0.5, -0.75, -0.25, -0.5, 0.25, 0.0, 0.5, 0.75, -0.25, -0.75, 1.0, 1.0, 0.5, -0.5, -0.25, -1.0, -0.5, -1.0, 0.75, 0.0, -1.0, 0.25, 0.5, 0.5, 0.75, 0.25, 0.5, 0.25, -0.25, -0.5, -0.75, 0.25, 0.75, -0.25, 0.5, 0.75, -1.0, 0.25, 1.0, -0.5, 0.25, -0.75, -0.25, -1.0, -0.5, -0.25, -0.25, -1.0, 0.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.75, 0.5, 0.0, 1.0, 0.25, 0.0, 0.0, 0.0, -1.0, -1.0, 0.0, 0.5, 0.25, -1.0, 1.0, 0.5, -0.75, -0.5, -1.0, -0.75, -1.0, 0.5, -1.0, 0.25, -0.5, -1.0, -1.0, -0.25, -1.0, 0.5, -0.25, -0.75, -0.75, -0.75, -1.0, -0.5, -0.75, -0.5, -0.25, 0.5, ]);
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: query400
    });
    
    
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    render_pass_encoder3061.endOcclusionQuery()
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4010.popDebugGroup();
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3060.setBindGroup(0, bind_group301);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3040.endOcclusionQuery()
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder3070.endOcclusionQuery()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3061.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    command_encoder200.popDebugGroup()
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder3061.popDebugGroup();
    command_encoder304.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3070.popDebugGroup();
    command_encoder401.popDebugGroup()
    render_pass_encoder3061.popDebugGroup();
}