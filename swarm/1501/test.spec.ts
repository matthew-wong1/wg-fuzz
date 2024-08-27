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
    const array0 = new Float32Array([0.0, 1.0, 0.5, 0.0, 1.0, 0.0, 0.75, -0.25, 0.75, -1.0, -1.0, -0.5, 1.0, 0.25, -0.5, 0.5, -1.0, 0.25, 0.25, 0.0, 0.0, -0.25, -0.25, 0.0, -0.5, 0.75, -1.0, -0.75, -0.75, -1.0, 0.5, -0.25, 1.0, -0.75, 0.5, -0.5, 0.5, 0.75, -0.75, 0.0, -0.5, -1.0, 0.25, 0.5, -0.25, 0.25, 1.0, -0.25, 0.0, -0.75, -0.25, 0.0, 0.75, 0.75, 1.0, -0.25, 0.75, 0.75, -0.25, -1.0, 0.0, 0.25, -0.75, -1.0, 0.0, 1.0, -0.5, -0.5, 0.5, -1.0, 0.25, -1.0, 0.25, 0.75, 1.0, 0.5, -0.5, 0.25, -0.75, -0.75, -0.75, -0.5, -0.25, -0.25, -0.5, -0.25, -1.0, 0.5, -1.0, -1.0, -0.5, 0.0, 0.25, 1.0, 0.75, 0.75, -1.0, 0.75, 0.0, 0.75, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([1.0, 0.0, 0.25, 0.25, -0.25, 0.5, -0.25, 1.0, -0.5, 0.5, 1.0, 1.0, 0.0, 0.5, -0.5, -0.25, 0.5, 0.75, 0.25, -1.0, 0.0, -0.25, -0.5, 0.25, -0.25, 0.75, -0.5, 1.0, 0.75, 0.5, 0.75, 0.0, -0.25, -0.5, -0.25, -0.75, -0.25, 0.75, -0.75, -0.75, 0.5, 0.0, -0.75, -0.75, -0.25, -1.0, -0.5, 1.0, 0.25, -0.25, 0.0, -0.75, 0.25, -0.5, -0.25, -0.5, 0.5, -0.25, -0.25, 0.75, 0.0, -0.5, -0.75, 1.0, -0.25, 1.0, 0.0, -1.0, 0.5, -0.25, 0.25, 0.0, 0.0, -0.5, -1.0, 0.5, 0.0, 0.0, -0.25, 0.5, 0.5, 0.25, 0.25, -0.5, 0.0, 0.25, 1.0, 0.75, 0.75, -0.75, 0.25, 0.5, -0.75, -1.0, -0.75, 0.75, 0.25, 1.0, -0.25, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder000.insertDebugMarker("mymarker");
    const array2 = new Float32Array([0.75, 0.0, -0.5, -0.5, 0.5, -0.75, 0.0, 0.5, 0.5, 0.25, -0.25, 0.5, -1.0, -1.0, 0.25, 0.0, 0.5, -1.0, -0.75, 1.0, -0.25, 0.25, -1.0, 0.25, 1.0, -0.75, 0.5, 0.0, 0.0, -1.0, 1.0, -0.75, -1.0, -0.25, 0.5, -0.25, -0.5, -0.75, -0.75, 0.0, 1.0, 0.75, 0.25, -0.25, 0.25, 0.75, 0.75, 0.75, -0.5, 0.75, 0.75, -1.0, -0.5, -1.0, -1.0, -0.25, 1.0, 0.5, -0.25, 0.5, 0.25, 0.0, -0.75, -0.5, -0.5, -0.25, 0.25, 0.25, -1.0, 0.5, 0.25, 0.0, 1.0, 1.0, -0.5, -0.25, -0.5, 1.0, -1.0, -1.0, 0.25, 1.0, 0.5, -0.25, -1.0, -0.5, 0.25, -0.75, -0.25, -0.5, -0.5, -0.5, 1.0, 0.5, 0.0, -1.0, -0.25, 0.5, -1.0, 0.5, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([0.75, -1.0, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, -0.5, 0.75, 0.75, -0.25, -0.25, -0.25, 0.25, -1.0, 1.0, -0.5, -0.75, -1.0, -0.25, 0.5, -0.5, -0.25, -0.75, 1.0, 0.25, 0.25, -0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 0.25, 0.5, 0.25, -0.25, 0.0, -0.5, -0.75, -0.75, -0.5, -0.75, -0.25, -1.0, -0.5, -0.25, -0.25, 0.75, 0.5, 0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.25, 0.5, 1.0, 1.0, 1.0, -1.0, 0.25, -0.5, -0.25, -1.0, -0.5, 0.0, -0.75, -1.0, -0.75, 0.75, 1.0, 0.0, -0.5, 0.25, 0.5, -0.25, -1.0, 0.25, -1.0, 1.0, -0.5, 0.5, -1.0, 1.0, 0.0, -0.75, -0.75, -0.5, -0.25, 0.25, 0.5, 0.5, -0.25, -1.0, -1.0, -0.5, -0.5, ]);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array4 = new Float32Array([-0.75, 0.0, 0.5, 0.5, -0.25, -0.25, 0.75, 0.75, 0.25, 0.5, 0.75, 1.0, 0.25, 0.0, -0.75, 1.0, 0.5, 0.75, -0.25, 0.25, -0.75, 0.5, 0.75, 0.0, 0.0, 0.25, -1.0, -0.5, -0.25, -0.5, -0.75, 0.25, 1.0, 0.0, -1.0, 1.0, -0.25, -0.25, 0.75, -0.75, 0.25, 0.5, 1.0, -0.5, 0.25, -0.75, 0.75, 0.25, 0.5, 0.25, -0.5, -0.75, -0.5, -0.25, -0.25, 0.0, -0.25, -0.75, 0.5, -1.0, 0.25, -0.25, 0.75, 0.0, 0.75, 0.0, 0.5, -0.75, 0.0, -1.0, 0.0, 0.5, 0.0, -0.25, 0.5, 0.0, 0.75, -0.25, 0.75, -0.75, 0.0, -1.0, 0.25, 0.25, -0.25, 0.5, -0.5, 1.0, 0.0, 0.75, -0.25, 0.75, 1.0, 0.0, 0.25, 0.25, 0.5, -1.0, 0.0, 0.75, ]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    texture002.destroy();
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer000 = command_encoder000.finish();
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture001.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.pushErrorScope("internal");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer000.destroy()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
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
    
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0033,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view0034 = texture003.createView({ label: "texture_view0034" });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer001.destroy()
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    texture000.destroy();
    render_pass_encoder0021.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const array5 = new Float32Array([0.0, 0.0, 0.25, 0.5, -0.75, -1.0, -0.5, -1.0, 1.0, 0.0, -1.0, 0.75, -0.5, 1.0, -0.75, -0.75, -1.0, 0.0, 1.0, 0.25, 0.5, 0.25, -1.0, 0.75, 1.0, -1.0, 0.5, -0.5, -0.75, 0.25, -0.5, 1.0, 1.0, -0.5, 0.75, 0.75, -0.5, 1.0, 0.5, 0.0, 0.25, -0.25, 0.25, 0.75, 0.75, 0.0, 0.0, 0.25, -0.25, -1.0, 0.25, 0.75, 0.5, 0.5, 0.5, -0.25, 0.25, 0.25, 0.0, 0.25, -0.5, 0.5, -0.5, -0.5, -0.75, 0.25, 0.75, 1.0, 0.5, 1.0, -1.0, -0.75, 0.5, 0.5, 0.0, 0.75, -0.5, 0.25, -0.5, 0.75, -0.5, -1.0, -1.0, -0.5, 0.0, 0.0, 0.5, 1.0, -1.0, 1.0, 0.25, 0.5, -1.0, 0.25, 1.0, 1.0, 0.75, 0.25, 0.25, 0.0, ]);
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const texture_view0035 = texture003.createView({ label: "texture_view0035" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0021.setPipeline(render_pipeline001);
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const array6 = new Float32Array([0.75, -0.75, -0.25, 0.5, 0.5, -0.25, 0.5, 0.75, 0.25, 0.75, 0.75, 0.75, 0.5, -1.0, -0.75, 1.0, -1.0, 0.75, 0.0, -0.5, -1.0, -0.75, -0.75, -0.25, -0.25, -1.0, 0.5, 0.75, 0.5, 0.5, 0.75, 0.25, 0.5, 0.25, 0.0, -0.5, -0.5, -0.5, -0.5, -0.25, 1.0, -0.25, 0.5, 0.75, -0.5, 1.0, -0.5, 0.5, -0.75, 0.5, -1.0, 0.75, -0.25, 0.0, 0.5, 0.75, 0.0, 0.75, -0.5, 0.75, 0.75, 0.75, 0.0, 0.5, 0.75, 0.25, 0.75, 0.0, 0.25, 0.25, 0.5, -0.5, -0.25, 0.0, 1.0, -0.5, -1.0, 1.0, 1.0, -0.25, -1.0, -0.75, -0.75, -0.75, 1.0, -0.5, -0.75, 1.0, 0.5, 0.25, 0.5, 0.75, 0.75, -1.0, -1.0, -0.25, 1.0, 1.0, -0.75, -1.0, ]);
    buffer003.destroy()
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    const array7 = new Float32Array([0.25, -0.75, 0.75, 1.0, -1.0, 0.0, 0.25, 0.75, 1.0, -1.0, -0.75, 0.0, -1.0, -0.5, -0.25, -0.5, 0.75, 0.25, 0.0, 0.25, 0.25, -0.75, 0.0, 0.25, 0.25, 0.25, -0.25, 0.0, 1.0, 0.75, 0.5, 0.0, -0.75, 0.0, -0.75, -0.25, -1.0, 1.0, 0.5, -0.5, 0.75, 1.0, -0.5, 0.0, 0.0, -0.5, -0.25, -0.25, -0.25, 0.0, 0.25, 0.75, 1.0, -0.5, 1.0, 0.5, 1.0, -0.25, -0.25, 0.75, -0.75, 0.75, -1.0, 0.25, -0.25, -1.0, -1.0, 0.0, -0.75, 1.0, 0.5, -0.5, -0.5, 0.75, -1.0, 0.25, 0.5, -0.75, -0.5, 0.25, -1.0, 0.25, 0.0, 0.25, -1.0, 1.0, 0.0, -0.25, 0.0, 0.25, -0.75, 0.25, 0.75, 0.5, -1.0, -1.0, 0.0, -1.0, -0.25, -1.0, ]);
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.setVertexBuffer(0, buffer002);
    texture001.destroy();
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_pass_encoder0020.setPipeline(render_pipeline004);
    
    render_bundle_encoder002.setPipeline(render_pipeline002);
    render_pass_encoder0021.setStencilReference(1);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    buffer001.destroy()
    const texture_view0036 = texture003.createView({ label: "texture_view0036" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0034,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder000.draw(3);
    render_pass_encoder0030.setPipeline(render_pipeline006);
    texture003.destroy();
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0032,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer002.destroy()
    const array8 = new Float32Array([0.75, 1.0, 0.0, 1.0, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, 0.0, -0.75, -1.0, -1.0, -0.75, -1.0, 0.0, -0.25, 0.0, -0.5, -0.5, -0.5, -0.5, -0.25, -1.0, 1.0, 0.5, -1.0, 0.25, 0.0, 0.0, -0.5, -1.0, 0.5, -0.75, 0.0, -0.5, -0.25, 0.5, 0.75, 0.5, -0.75, 1.0, 0.5, -0.5, 0.5, 1.0, 0.5, 0.25, 0.25, -0.5, 0.0, 0.75, -0.75, -0.5, -1.0, -0.25, 1.0, -0.5, -0.5, 1.0, -0.75, 0.0, 0.75, 0.5, 0.5, 1.0, -0.75, -1.0, 1.0, -1.0, -0.75, 1.0, 0.25, 1.0, -0.5, -0.5, 1.0, -0.25, 0.25, 0.25, 0.0, 0.75, 0.75, -0.75, -1.0, -1.0, 0.0, -1.0, 1.0, 0.25, -1.0, 0.5, 0.0, 0.25, 0.5, 0.25, 0.5, 0.5, 0.25, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer004.destroy()
    render_pass_encoder0040.setStencilReference(1);
    texture004.destroy();
    render_pass_encoder0040.setPipeline(render_pipeline002);
    render_pass_encoder0021.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    render_bundle_encoder003.setPipeline(render_pipeline005);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0040.insertDebugMarker("marker");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_bundle_encoder003.setBindGroup(0, bind_group003);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0033,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder003.setVertexBuffer(0, buffer008);
    render_bundle_encoder002.setVertexBuffer(0, buffer009);
    compute_pass_encoder0011.popDebugGroup()
    buffer0011.destroy()
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0035,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer007.destroy()
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0041.setPipeline(render_pipeline004);
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
    buffer009.destroy()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder0051.setPipeline(render_pipeline000);
    render_pass_encoder0050.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    command_encoder002.clearBuffer(buffer003);
    render_pass_encoder0050.setPipeline(render_pipeline004);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.draw(3);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder006.clearBuffer(buffer005);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer100.destroy()
    render_pass_encoder0041.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer006.destroy()
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_bundle_encoder002.draw(3);
    
    render_pass_encoder0060.setPipeline(render_pipeline000);
    
    render_bundle_encoder001.setVertexBuffer(0, buffer006);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0041.insertDebugMarker("marker");
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.insertDebugMarker("marker");
    
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer0010.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer0013
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0050.insertDebugMarker("marker");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0051.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0041.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0060.insertDebugMarker("marker");
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setPipeline(render_pipeline005);
    buffer0012.destroy()
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    buffer008.destroy()
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0021.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    render_pass_encoder0061.setPipeline(render_pipeline005);
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0021.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_pass_encoder0030.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0021.insertDebugMarker("marker");
    compute_pass_encoder0010.popDebugGroup()
    
    render_pass_encoder0041.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0021.setStencilReference(1);
    buffer005.destroy()
    
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.submit([command_buffer000, ]);
    command_encoder002.clearBuffer(buffer0011);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0034,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    command_encoder007.insertDebugMarker("mymarker");
    buffer0014.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0011.setPipeline(render_pipeline008);
    render_pass_encoder0041.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0031.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder003.insertDebugMarker("marker");
    render_pass_encoder0060.insertDebugMarker("marker");
    buffer102.destroy()
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.popDebugGroup();
    
    render_bundle_encoder003.draw(3);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder0052 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0052",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0033,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0061.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_pass_encoder0052.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0052.setPipeline(render_pipeline004);
    {
        await buffer0013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0013.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0014.destroy()
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder003.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer0010
        },
        {
            texture: texture005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0031.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture005 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.draw(3);
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture005 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    texture101.destroy();
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0033,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0032.setPipeline(render_pipeline001);
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0031.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0032.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_pass_encoder0050.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0032.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0051.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture100.destroy();
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_pass_encoder0031.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer004
        },
        {
            texture: texture005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.copyBufferToBuffer(
        buffer004,
        0,
        buffer004,
        0,
        400
    );
    render_pass_encoder0032.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder100.clearBuffer(buffer101);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0061.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const command_buffer101 = command_encoder101.finish();
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0011.setStencilReference(1);
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    device00.pushErrorScope("internal");
    buffer0013.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0011.insertDebugMarker("marker");
    
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0052.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    render_pass_encoder0040.setStencilReference(1);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.setVertexBuffer(0, buffer101);
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
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    render_bundle_encoder100.draw(3);
    render_pass_encoder0060.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0041.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0050.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([0.75, -0.75, 0.5, -0.25, -0.75, -0.75, -0.25, 0.5, -1.0, 1.0, 0.5, -0.5, 0.25, -0.75, 0.75, 0.5, 0.0, -0.5, -0.5, 0.75, 0.75, -0.75, 0.0, 0.5, 0.75, -0.5, -1.0, 0.0, -0.25, -0.25, -0.25, 0.75, 1.0, -0.75, 0.5, 0.0, -1.0, -0.75, 0.25, 0.25, -0.25, -0.25, -0.25, -0.25, 1.0, -0.75, 1.0, 0.75, 1.0, -0.75, -1.0, 0.25, -0.75, -1.0, 0.5, -1.0, -1.0, -0.5, 0.75, 0.75, 1.0, 1.0, 0.5, 0.25, 0.5, 0.5, 0.25, -0.5, 0.25, -1.0, 0.25, 1.0, 0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 0.0, 0.75, -0.75, -0.5, -0.5, -1.0, -0.5, 0.25, 0.75, 0.0, 0.25, -1.0, 0.25, -0.5, 0.0, -0.25, -1.0, 0.25, 0.5, -0.75, -0.5, 0.5, ]);
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder006.copyBufferToBuffer(
        buffer0012,
        0,
        buffer000,
        0,
        400
    );
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0061.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder006.insertDebugMarker("mymarker");
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0011.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline103);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    render_pass_encoder1000.setPipeline(render_pipeline103);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0052.popDebugGroup();
    command_encoder003.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    command_encoder002.copyBufferToBuffer(
        buffer008,
        0,
        buffer003,
        0,
        400
    );
    render_pass_encoder0011.popDebugGroup();
    
    
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0051.insertDebugMarker("marker");
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0032.setStencilReference(1);
    render_bundle_encoder102.setPipeline(render_pipeline102);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    command_encoder001.copyBufferToBuffer(
        buffer007,
        0,
        buffer004,
        0,
        400
    );
    
    buffer104.destroy()
    
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0031.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    texture101.destroy();
    buffer000.destroy()
    buffer0012.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    render_pass_encoder0021.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0052.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0011.setStencilReference(1);
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_pass_encoder0021.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device30.destroy();
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    
    render_bundle_encoder100.draw(3);
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0052.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0050.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder0011.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer005, ]);
    const command_buffer006 = command_encoder006.finish();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    device00.queue.submit([command_buffer007, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0030.popDebugGroup();
    const command_buffer004 = command_encoder004.finish();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0041.popDebugGroup();
}