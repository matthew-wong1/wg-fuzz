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
    const array0 = new Float32Array([0.25, 1.0, -0.25, -0.25, 1.0, 0.25, 0.5, -1.0, 1.0, -0.25, 0.75, 0.0, -0.25, 1.0, 0.75, -0.5, 0.5, 0.0, 0.0, 1.0, 0.75, 0.5, -0.5, 1.0, 0.5, -0.75, 0.5, 0.5, 0.75, -1.0, 1.0, 0.5, -1.0, -0.5, -0.75, -0.5, 0.5, -0.25, -0.75, -0.75, -0.75, -0.25, -0.5, 0.0, -0.5, -0.75, 1.0, 1.0, 0.0, 0.25, 0.5, 0.0, 1.0, -0.25, 1.0, 0.0, -1.0, -0.75, 0.25, -0.5, 1.0, 0.75, 0.25, -0.25, -0.5, -0.25, 0.0, 0.75, -0.5, -0.5, 0.75, -0.75, 1.0, -0.25, 0.0, -0.75, 0.5, -0.25, 0.5, -0.75, 0.25, 0.75, 0.25, -1.0, -0.75, -0.5, 0.25, 0.0, -0.25, 0.0, 1.0, -0.75, 0.25, -1.0, 0.0, -1.0, -0.75, -0.75, 0.25, 1.0, ]);
    const array1 = new Float32Array([0.0, -0.5, 0.75, 0.25, -0.25, -0.5, 1.0, 0.25, 1.0, -0.25, 0.75, -0.5, -1.0, 0.75, -0.75, 0.5, 0.5, 0.5, 0.25, 0.25, -1.0, 0.25, -0.5, -0.5, 0.0, -1.0, -0.5, 0.5, -0.5, -1.0, 0.25, -0.25, 0.25, 0.25, -0.75, 0.5, -0.5, -1.0, 0.5, 0.0, -0.5, 0.5, 0.5, 0.75, 0.0, -1.0, 0.25, 0.0, 0.75, 0.75, 0.0, -0.75, 0.25, 0.25, -1.0, -1.0, -0.5, 1.0, 1.0, 0.75, 0.0, 0.5, -0.5, 1.0, 0.25, 0.25, -0.5, -1.0, 0.5, 0.5, 0.25, -0.75, 1.0, -0.75, -0.75, -0.25, 0.75, 0.0, -0.5, -0.5, -0.5, 0.5, -0.5, -0.75, 1.0, 0.25, -0.25, -0.75, -1.0, -0.75, 0.75, 1.0, 1.0, -0.25, -0.25, 0.5, 0.25, 0.5, 0.0, 0.75, ]);
    
    
    const array2 = new Float32Array([-0.75, 0.25, -0.75, 0.75, 0.25, -0.75, -0.75, 1.0, 0.5, 1.0, 0.0, 0.0, -0.75, 0.75, 1.0, 0.25, 0.75, 0.5, 0.0, -1.0, 0.25, -0.75, 0.75, 0.75, 0.0, -0.5, -1.0, 0.0, 1.0, -0.5, -0.75, -1.0, 0.25, -0.5, 1.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.25, 0.0, -0.5, -0.25, 0.5, 0.5, 0.75, -1.0, 0.75, 0.0, 0.0, 0.5, 1.0, 0.0, 1.0, -0.25, 0.25, 0.5, 1.0, -0.25, 0.25, -1.0, -1.0, 1.0, 0.0, -0.25, 0.5, 0.75, -0.75, 0.0, -0.25, 0.75, -0.25, -0.5, 0.5, 0.5, -0.75, -0.75, 0.5, 0.0, 0.5, 0.75, 0.5, 0.0, 0.25, -0.25, 0.0, 0.5, 0.25, -0.75, 0.0, -0.5, 1.0, -0.75, 0.75, 1.0, 0.25, 0.25, 1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const array3 = new Float32Array([0.25, 0.0, 0.0, 0.0, 0.75, -0.25, 0.25, -1.0, -0.25, -0.25, 0.0, -0.5, -0.5, -1.0, -0.75, -0.5, -0.5, 0.25, 0.25, 0.0, -0.5, -0.5, 0.25, 1.0, -0.25, -0.5, -0.25, -0.75, -0.25, -0.5, 1.0, -1.0, 0.75, 0.25, -0.25, -0.5, 1.0, 0.5, -1.0, 0.5, 0.5, 0.25, -1.0, 1.0, 0.5, -0.25, 0.75, -0.5, 1.0, -0.75, 0.5, 0.0, 0.0, 0.75, -0.5, 0.75, 1.0, 0.75, 0.75, -0.25, 0.25, 0.0, 1.0, -1.0, -0.5, -0.5, 0.75, 0.5, -1.0, 1.0, -1.0, 0.5, 0.25, 0.5, 0.5, -0.25, -0.25, -1.0, -1.0, -1.0, 0.75, -1.0, 0.5, 0.75, 0.5, -0.5, 0.5, -0.5, 0.25, 0.5, -1.0, -0.5, -0.75, 0.25, 0.25, 0.75, -1.0, 0.75, -0.25, 0.25, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device20.pushErrorScope("out-of-memory");
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device20.pushErrorScope("validation");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query200.destroy()
    const array4 = new Float32Array([-0.5, 0.0, -0.75, 0.5, -0.5, -1.0, 0.0, 0.25, -0.5, 0.75, -0.5, 0.5, -0.5, 0.5, 0.25, -1.0, -0.25, 0.75, 1.0, 1.0, 0.75, -1.0, 1.0, 1.0, -0.75, -1.0, -0.5, -0.25, -0.5, 1.0, 0.0, 0.25, -1.0, 0.75, 0.5, 0.5, -1.0, -0.75, -0.5, 0.25, 0.5, -0.5, -1.0, 1.0, 0.25, -1.0, -1.0, 0.75, 0.75, 1.0, -0.75, -0.5, 0.0, 0.25, 0.5, 1.0, -1.0, 0.25, -1.0, 0.0, -0.25, -0.25, 0.0, -0.25, 1.0, 0.0, -0.75, -0.5, 1.0, 0.75, 0.5, -0.25, 1.0, -0.75, 0.0, -0.75, 0.25, 0.5, -0.25, 0.0, 1.0, 0.75, 0.0, -1.0, -0.75, 0.0, 1.0, 0.5, 0.75, -1.0, -0.5, 0.75, -0.5, -0.5, 0.0, 0.0, -0.75, 0.75, 1.0, 0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture201.destroy();
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
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
    
    query200.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2000.executeBundles([])
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
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
    render_pass_encoder2000.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([-1.0, 0.5, -1.0, -0.75, 1.0, 0.25, -1.0, -1.0, -1.0, 1.0, -1.0, -0.25, 1.0, -0.75, -1.0, -0.25, 0.25, 0.5, -0.75, 0.25, 1.0, 0.75, -0.75, 0.0, 0.75, 1.0, 0.75, 1.0, 0.75, -0.75, -1.0, 0.25, 0.75, 1.0, -1.0, -1.0, 0.0, 1.0, 0.0, 0.5, 0.0, -1.0, 0.75, -0.5, -0.75, -0.5, -0.5, 0.0, -0.25, 0.0, -0.5, 0.25, -0.5, -0.25, 0.25, 0.25, 0.75, -1.0, -0.25, -0.75, -0.25, -0.25, -0.25, -0.75, 0.5, -1.0, 0.0, 0.75, -1.0, 0.0, 0.25, 0.75, -0.75, -0.25, -0.5, 1.0, -1.0, -0.25, 0.0, 1.0, -0.25, -1.0, -0.5, 0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 1.0, 1.0, -0.75, 0.0, -0.75, 0.0, 0.25, -0.5, -0.25, 0.5, -0.5, ]);
    
    render_pass_encoder2000.setStencilReference(1);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
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

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture200.destroy();
    buffer200.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder2000.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.pushErrorScope("internal");
    
    query202.destroy()
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
    query202.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query201.destroy()
    texture500.destroy();
    query202.destroy()
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_pass_encoder2000.insertDebugMarker("marker");
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    texture202.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    buffer203.destroy()
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    buffer202.destroy()
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_pass_encoder2000.popDebugGroup();
    
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query200.destroy()
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query201.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder2001.setPipeline(render_pipeline200);
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    command_encoder502.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder300.pushDebugGroup("mygroupmarker")
    query203.destroy()
    buffer201.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    query203.destroy()
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
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
    render_pass_encoder2001.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5011,
            },
        ],
        occlusionQuerySet: query500
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2000.popDebugGroup();
    
    query203.destroy()
    render_pass_encoder5010.setStencilReference(1);
    render_pass_encoder5010.setStencilReference(1);
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    render_pass_encoder5010.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    render_pass_encoder2001.setStencilReference(1);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder5020.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.submit([]);
    render_pass_encoder5020.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query205.destroy()
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5012,
            },
        ],
        occlusionQuerySet: query500
    });
    query202.destroy()
    command_encoder300.pushDebugGroup("mygroupmarker")
    
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
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2003,
            },
        ],
        occlusionQuerySet: query205
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture301.destroy();
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
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
        occlusionQuerySet: query204
    });
    const array6 = new Float32Array([0.5, 1.0, -1.0, -1.0, -1.0, 0.75, -0.25, -1.0, -0.75, -1.0, -1.0, -0.25, -0.5, 0.0, -0.25, 0.5, -0.5, 1.0, 0.0, 0.0, -0.75, -0.5, -0.25, 0.0, -0.5, 0.25, 0.5, -0.25, 0.5, -0.75, 0.0, 1.0, 0.0, 0.0, -0.5, -0.5, -0.75, 0.0, -0.25, 0.0, -1.0, 0.25, 0.5, 0.75, -0.75, -0.5, 0.25, -1.0, -0.25, -0.5, -1.0, 0.0, 0.5, 0.5, 0.25, 0.25, 1.0, 0.75, -0.75, -0.5, -0.5, 0.5, -0.25, -0.5, -0.5, -0.75, 0.5, 0.25, 1.0, -0.75, 0.5, 1.0, -0.75, -0.75, 0.0, -0.75, -0.75, -0.75, 1.0, -0.25, 0.25, 0.5, 1.0, 0.5, 0.5, 0.5, 0.5, 0.0, 0.75, -0.5, 1.0, -0.5, -0.5, 0.75, 0.0, 0.0, -1.0, -0.75, -0.5, 0.5, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    render_pass_encoder2011.setPipeline(render_pipeline201);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_pass_encoder5000.setStencilReference(1);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5000.insertDebugMarker("marker");
    render_pass_encoder5020.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
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
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder100.insertDebugMarker("mymarker");
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture300.destroy();
    query500.destroy()
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2010.setPipeline(render_pipeline207);
    render_pass_encoder5000.executeBundles([])
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    query203.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder5000.executeBundles([])
    
    compute_pass_encoder5000.popDebugGroup()
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    buffer204.destroy()
    render_pass_encoder5030.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder5030.insertDebugMarker("marker");
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
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
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder400.popDebugGroup()
    render_pass_encoder5030.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder5030.setStencilReference(1);
    
    render_pass_encoder5030.insertDebugMarker("marker");
    query205.destroy()
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    device30.queue.submit([]);
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query204.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    device30.pushErrorScope("internal");
    render_pass_encoder2001.setStencilReference(1);
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5020.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    command_encoder302.pushDebugGroup("mygroupmarker")
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5030.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array7 = new Float32Array([-0.75, -0.5, 0.5, 1.0, 1.0, 0.75, 0.0, -0.5, -0.25, -0.25, -0.5, -0.5, 0.25, -0.5, 1.0, -1.0, 0.75, 0.75, -1.0, 0.25, -1.0, -0.5, -0.75, 0.0, 0.0, -0.75, 0.25, -0.5, -1.0, 0.5, -0.75, 1.0, 0.25, 0.5, 0.0, -0.5, -0.5, 0.0, -1.0, -1.0, -1.0, -0.5, -0.25, 0.0, -1.0, 0.0, -1.0, -1.0, -0.25, -0.75, 0.75, 1.0, 0.0, -0.75, 1.0, 1.0, 1.0, -0.75, -1.0, 0.75, 1.0, 0.5, -0.25, -0.75, -1.0, 0.75, -1.0, 0.25, 0.5, -0.25, 0.5, 0.25, 0.0, 0.5, 0.25, 0.25, -0.5, 0.0, -0.25, 0.0, -0.25, 1.0, -0.25, 0.5, -0.75, -0.25, 0.5, -0.75, -0.25, -0.25, 0.5, -1.0, -0.75, -0.25, 0.5, -1.0, -0.75, 0.75, 0.0, 0.25, ]);
    query206.destroy()
    compute_pass_encoder5010.insertDebugMarker("marker")
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
    query206.destroy()
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder2000.setStencilReference(1);
    query206.destroy()
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder5020.insertDebugMarker("marker");
    render_pass_encoder5020.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    query202.destroy()
    device10.pushErrorScope("out-of-memory");
    const query402 = device40.createQuerySet({
        label: "query402",
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
    render_pass_encoder5020.executeBundles([])
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    render_pass_encoder2001.setStencilReference(1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder5010.executeBundles([])
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder5030.executeBundles([render_bundle_encoder502, ])
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5012,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5010.executeBundles([])
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const texture_view5013 = texture501.createView({ label: "texture_view5013" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder2011.endOcclusionQuery()
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
        occlusionQuerySet: query206
    });
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
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5011,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder5020.executeBundles([])
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
    
    render_pass_encoder5030.setPipeline(render_pipeline500);
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    buffer202.destroy()
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    command_encoder100.popDebugGroup()
    render_pass_encoder5040.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group202);
    render_pass_encoder5050.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    texture501.destroy();
    const render_pass_encoder5031 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture303.destroy();
    render_bundle_encoder301.setPipeline(render_pipeline301);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder5040.endOcclusionQuery()
    render_pass_encoder2001.setVertexBuffer(0, buffer202);
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
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

    render_bundle_encoder201.setBindGroup(0, bind_group203);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query206
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2001.setStencilReference(1);
    buffer206.destroy()
    render_pass_encoder5020.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    render_pass_encoder5001.insertDebugMarker("marker");
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder2001.insertDebugMarker("marker");
    
    query201.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
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
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    command_encoder400.clearBuffer(buffer400);
    render_pass_encoder2021.setPipeline(render_pipeline207);
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder5050.setPipeline(render_pipeline500);
    
    buffer400.destroy()
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture100.destroy();
    
    render_pass_encoder5000.insertDebugMarker("marker");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    texture503.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query402.destroy()
    render_pass_encoder5040.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query402.destroy()
    render_pass_encoder2021.setStencilReference(1);
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    const render_pass_encoder5060 = command_encoder506.beginRenderPass({
        label: "render_pass_encoder5060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5013,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder2020.setPipeline(render_pipeline2011);
    buffer501.destroy()
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder5040.executeBundles([])
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder5040.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
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
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder504.insertDebugMarker("mymarker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2004,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder5031.insertDebugMarker("marker");
    device60.destroy();
    query401.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder202.setPipeline(render_pipeline205);
    render_pass_encoder2022.setPipeline(render_pipeline208);
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder5031.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    device20.queue.writeBuffer(buffer207, 0, array5, 0, array5.length);
    const array8 = new Float32Array([-0.5, 1.0, -0.75, 0.25, 0.0, 0.75, -0.75, -1.0, 0.75, 0.5, 0.25, 0.75, 0.0, 1.0, -0.5, 0.75, 0.0, -0.25, -1.0, 0.0, 0.0, -0.25, 0.75, 0.25, 0.25, -0.75, -1.0, -0.75, -0.5, 1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.5, -1.0, 1.0, -0.25, -0.5, 1.0, 0.75, -0.5, 0.5, 0.25, -1.0, -1.0, 1.0, -0.75, -1.0, 1.0, 0.75, -0.25, -0.75, -0.5, -0.25, 0.0, 0.25, 0.75, -0.25, 1.0, 0.75, 0.5, 0.25, 0.75, -0.5, 1.0, 0.0, 0.0, 0.0, -1.0, 0.5, -1.0, 0.25, 0.25, 0.5, -1.0, 0.5, 1.0, -0.75, -1.0, -0.75, -0.25, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.5, 0.0, 0.5, 1.0, -0.5, -0.25, -0.25, 0.75, 0.5, -1.0, -1.0, ]);
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    query202.destroy()
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    render_pass_encoder5060.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    command_encoder301.popDebugGroup()
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline2011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group204);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group205);
    render_pass_encoder5040.setPipeline(render_pipeline500);
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
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
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

    render_pass_encoder5030.setBindGroup(0, bind_group501);
    render_pass_encoder5020.setPipeline(render_pipeline500);
    render_pass_encoder5060.setPipeline(render_pipeline500);
    render_pass_encoder5031.setPipeline(render_pipeline500);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2011.setVertexBuffer(0, buffer207);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2022.setBindGroup(0, bind_group206);
    render_pass_encoder2022.setVertexBuffer(0, buffer205);
    render_pass_encoder2011.draw(3);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
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
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_pass_encoder5031.setBindGroup(0, bind_group502);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group503);
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    render_pass_encoder5030.setVertexBuffer(0, buffer507);
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder5010.setPipeline(render_pipeline500);
    render_pass_encoder5020.setVertexBuffer(0, buffer506);
    command_encoder300.popDebugGroup()
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5050.setBindGroup(0, bind_group504);
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2022.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder2022.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder5020.drawIndirect(buffer500, 0);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder5001.setPipeline(render_pipeline500);
    device10.queue.submit([]);
    render_pass_encoder2001.end();
    render_pass_encoder2000.setVertexBuffer(0, buffer202);
    render_pass_encoder2020.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2022.end();
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group505);
    render_pass_encoder5050.setVertexBuffer(0, buffer507);
    render_pass_encoder5050.draw(3);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder2000.draw(3);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5000.setPipeline(render_pipeline500);
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group506);
    render_pass_encoder2011.endOcclusionQuery()
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    render_pass_encoder5001.setBindGroup(0, bind_group507);
    render_pass_encoder2000.draw(3);
    render_pass_encoder5031.setVertexBuffer(0, buffer5011);
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder5031.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder5000.setVertexBuffer(0, buffer5013);
    render_pass_encoder5010.setVertexBuffer(0, buffer500);
    render_pass_encoder5020.end();
    render_pass_encoder5001.setVertexBuffer(0, buffer508);
    render_pass_encoder5031.drawIndirect(buffer507, 0);
    render_pass_encoder5040.endOcclusionQuery()
    render_pass_encoder5001.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group208);
    render_pass_encoder5030.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder5010.draw(3);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2022.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2011.end();
    render_pass_encoder5010.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5010.end();
    render_pass_encoder5010.drawIndexed(3);
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    render_pass_encoder5060.setBindGroup(0, bind_group508);
    render_pass_encoder5000.setIndexBuffer(buffer506, "uint16");
    command_encoder200.popDebugGroup()
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2010.setVertexBuffer(0, buffer204);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder2021.setVertexBuffer(0, buffer206);
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder5060.setVertexBuffer(0, buffer504);
    command_encoder502.popDebugGroup()
    render_pass_encoder2010.end();
    render_pass_encoder5060.drawIndirect(buffer507, 0);
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer2012, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder5060.setIndexBuffer(buffer5016, "uint16");
    render_pass_encoder5060.popDebugGroup();
    render_pass_encoder5050.draw(3);
    device20.queue.submit([]);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder5050.end();
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder5031.end();
    device60.queue.submit([]);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group509 = device50.createBindGroup({
        label: "bind_group509",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5019,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group509);
    render_pass_encoder5001.draw(3);
    render_pass_encoder5040.setVertexBuffer(0, buffer5014);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder5001.end();
    render_pass_encoder5001.drawIndirect(buffer5011, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5040.drawIndirect(buffer5010, 0);
    render_pass_encoder5000.end();
    device40.queue.submit([]);
    render_pass_encoder5040.end();
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder5020.drawIndirect(buffer507, 0);
    render_pass_encoder2022.drawIndirect(buffer204, 0);
    render_pass_encoder5060.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder5031.drawIndirect(buffer5010, 0);
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    render_pass_encoder5060.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder5050.end();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder5010.end();
    render_pass_encoder5020.end();
    render_pass_encoder5030.drawIndirect(buffer507, 0);
    render_pass_encoder5020.drawIndirect(buffer5014, 0);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5040.end();
    render_pass_encoder5060.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer5010, 0);
    render_pass_encoder5030.end();
    render_pass_encoder5020.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder5020.end();
    render_pass_encoder5001.drawIndirect(buffer500, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer509, 0);
    render_pass_encoder5060.drawIndirect(buffer509, 0);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer5012, 0);
    render_pass_encoder2022.drawIndirect(buffer2010, 0);
    render_pass_encoder5000.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2017, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5020.draw(3);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2021.end();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder5030.draw(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder5060.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder5050.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder5060.end();
    render_pass_encoder2001.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder5001.drawIndirect(buffer5012, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder2022.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder5010.drawIndirect(buffer5015, 0);
    render_pass_encoder5060.drawIndirect(buffer505, 0);
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2011.draw(3);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder5010.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    render_pass_encoder5040.end();
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2021.end();
    render_pass_encoder5020.end();
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder5050.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5000.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder2021.drawIndexed(3);
    command_encoder302.popDebugGroup()
    render_pass_encoder5001.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder5031.end();
    render_pass_encoder2011.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder5031.drawIndexed(3);
    render_pass_encoder5030.drawIndirect(buffer506, 0);
    render_pass_encoder2022.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder5031.drawIndexedIndirect(buffer506, 0);
    render_pass_encoder5040.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder5050.end();
    render_pass_encoder5050.draw(3);
    render_pass_encoder5050.drawIndirect(buffer500, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder5031.setIndexBuffer(buffer5016, "uint16");
    render_pass_encoder5001.draw(3);
    render_pass_encoder5010.end();
    device30.queue.submit([]);
    render_pass_encoder2022.drawIndirect(buffer200, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder5020.draw(3);
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer507, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2022.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder5031.drawIndexedIndirect(buffer503, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder5031.drawIndirect(buffer506, 0);
    render_pass_encoder5040.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder5020.drawIndexedIndirect(buffer509, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2010.end();
    render_pass_encoder5060.drawIndirect(buffer502, 0);
    render_pass_encoder2000.end();
    render_pass_encoder5031.drawIndirect(buffer5015, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5060.end();
    render_pass_encoder5031.draw(3);
    render_pass_encoder5040.end();
    render_pass_encoder5050.draw(3);
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder5031.drawIndexed(3);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder5000.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5030.drawIndexedIndirect(buffer5010, 0);
    render_pass_encoder5020.end();
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder5040.end();
    render_pass_encoder5060.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5030.draw(3);
    render_pass_encoder2000.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2022.drawIndexedIndirect(buffer2012, 0);
    device30.queue.submit([]);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder5030.end();
    render_pass_encoder5030.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5050.end();
    render_pass_encoder5040.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5031.drawIndirect(buffer508, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5030.drawIndirect(buffer5011, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder5000.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder5020.setIndexBuffer(buffer5015, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder5031.drawIndexed(3);
    render_pass_encoder5001.drawIndirect(buffer503, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer205, 0);
    render_pass_encoder5040.end();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5020.end();
    compute_pass_encoder5010.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder5050.draw(3);
    render_pass_encoder2022.draw(3);
    render_pass_encoder2022.end();
    render_pass_encoder5060.end();
    render_pass_encoder5030.end();
    render_pass_encoder5020.draw(3);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder5031.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    render_pass_encoder2022.drawIndirect(buffer204, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder5060.drawIndirect(buffer504, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder5010.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder5000.drawIndirect(buffer5016, 0);
    render_pass_encoder5031.drawIndirect(buffer5016, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer5013, 0);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    render_pass_encoder5050.end();
    render_pass_encoder2022.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder5010.drawIndirect(buffer508, 0);
    render_pass_encoder5060.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5030.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2001.end();
    render_pass_encoder5050.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder5001.draw(3);
    render_pass_encoder2022.draw(3);
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder5060.end();
    render_pass_encoder2022.drawIndirect(buffer2012, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5017, "uint16");
    render_pass_encoder5020.end();
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder5001.drawIndirect(buffer5012, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder5060.drawIndirect(buffer5018, 0);
    render_pass_encoder5000.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    render_pass_encoder5010.drawIndirect(buffer5018, 0);
    render_pass_encoder5040.drawIndirect(buffer505, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5018, "uint16");
    render_pass_encoder5010.draw(3);
    render_pass_encoder2022.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder5060.end();
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder5040.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5010.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2020.end();
    device30.queue.submit([]);
    render_pass_encoder5001.drawIndirect(buffer509, 0);
    render_pass_encoder5050.drawIndexed(3);
    render_pass_encoder5001.drawIndexedIndirect(buffer5010, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2022.end();
    render_pass_encoder5010.drawIndirect(buffer5010, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder5001.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder5030.drawIndexedIndirect(buffer5015, 0);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5001.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder5030.end();
    render_pass_encoder2001.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer209, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2021.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder5030.popDebugGroup();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2021.end();
    render_pass_encoder2011.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5000.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder2022.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder5001.drawIndexedIndirect(buffer5011, 0);
    render_pass_encoder2022.end();
    render_pass_encoder2001.end();
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder2010.draw(3);
    device00.queue.submit([]);
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5010.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder5031.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5010.drawIndirect(buffer505, 0);
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder5060.setIndexBuffer(buffer5010, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5001.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder5050.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    render_pass_encoder5000.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer506, 0);
    render_pass_encoder5040.end();
    render_pass_encoder5060.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder2022.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5031.setIndexBuffer(buffer504, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2021.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder5001.draw(3);
    render_pass_encoder5040.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5020.draw(3);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder5020.drawIndexedIndirect(buffer504, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer2018, 0);
    render_pass_encoder5001.drawIndirect(buffer504, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2022.setIndexBuffer(buffer209, "uint16");
    device40.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    device30.queue.submit([]);
    render_pass_encoder5020.end();
    render_pass_encoder2022.drawIndirect(buffer208, 0);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder5010.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder5060.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder5030.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder2000.draw(3);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder5031.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2021.end();
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5001.setIndexBuffer(buffer5012, "uint16");
    render_pass_encoder5001.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    render_pass_encoder5010.draw(3);
    render_pass_encoder2021.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder5040.drawIndexed(3);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder5031.drawIndexedIndirect(buffer5011, 0);
    render_pass_encoder5030.drawIndirect(buffer5015, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder5031.end();
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer209, 0);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder5040.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder5031.drawIndexedIndirect(buffer5017, 0);
    render_pass_encoder2022.end();
    render_pass_encoder5040.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder5060.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder5050.setIndexBuffer(buffer5010, "uint16");
    render_pass_encoder2010.drawIndirect(buffer207, 0);
    render_pass_encoder5010.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder5060.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    device10.queue.submit([]);
    render_pass_encoder5050.drawIndirect(buffer5013, 0);
    device30.queue.submit([]);
    render_pass_encoder5001.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder5031.drawIndexed(3);
    render_pass_encoder5060.popDebugGroup();
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder5000.drawIndexedIndirect(buffer5011, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder5010.end();
    render_pass_encoder5031.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder5000.end();
    render_pass_encoder5000.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer5019, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder5060.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder5050.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder5010.end();
    render_pass_encoder2020.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer506, 0);
    render_pass_encoder5031.end();
    render_pass_encoder5001.endOcclusionQuery()
    render_pass_encoder5060.drawIndirect(buffer5010, 0);
    render_pass_encoder5040.draw(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder5060.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder5050.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer503, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder5020.drawIndirect(buffer5010, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder5031.drawIndexedIndirect(buffer5011, 0);
    render_pass_encoder5050.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder5050.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder5050.popDebugGroup();
}