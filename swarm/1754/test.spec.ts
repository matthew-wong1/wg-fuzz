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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const array0 = new Float32Array([0.75, 0.25, -1.0, 1.0, -0.75, 0.75, -1.0, -1.0, -0.25, -0.25, 1.0, -1.0, -1.0, 1.0, 0.5, -0.75, -0.75, 0.25, 0.0, 0.5, 0.25, 1.0, 0.75, -0.5, 0.75, -0.5, -0.25, 0.0, -0.5, 0.0, 0.75, 1.0, 0.25, 0.5, 1.0, 0.75, 0.5, -0.75, -0.25, 0.25, -0.5, 0.75, 1.0, -0.75, -0.25, -0.5, 1.0, 0.0, -0.25, 0.25, 0.0, -0.5, 0.5, 0.0, -0.75, -0.25, 0.5, -1.0, -0.75, 1.0, -0.75, -0.75, 0.0, -0.5, 0.0, 0.5, 1.0, 0.5, 1.0, -0.75, -0.5, 0.75, 0.5, -0.25, 1.0, 0.75, 0.5, -1.0, -0.25, 0.75, 1.0, 0.25, 0.25, -1.0, 0.0, 1.0, 0.5, -0.5, -0.5, 0.25, -1.0, -0.25, -0.5, 0.75, 0.0, -0.75, 0.25, 0.25, 1.0, 1.0, ]);
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device10.destroy();
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder001.insertDebugMarker("mymarker");
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    command_encoder001.copyTextureToTexture(
        {
            texture: texture001
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array1 = new Float32Array([0.75, -1.0, 0.75, -0.25, 0.0, 0.0, -0.25, -0.25, 0.75, 1.0, 0.75, -1.0, -0.25, -0.25, 0.0, 1.0, 0.75, 0.5, -0.75, 0.25, -0.5, 0.75, -0.75, 1.0, -1.0, -0.25, -0.5, 0.25, 0.75, -1.0, 1.0, 0.75, 0.5, 0.75, 0.25, -0.5, 0.5, -0.25, 0.75, 0.5, 0.5, -0.25, -0.25, 0.5, 0.5, -1.0, -0.25, 0.0, 0.5, -1.0, 0.25, 1.0, -0.75, -0.25, 0.0, 0.5, -0.25, 0.5, 1.0, 0.5, -0.75, -0.75, 0.0, 0.75, 0.5, 0.5, -0.75, 0.75, 1.0, -1.0, 0.25, -0.5, 0.25, 0.0, -0.5, 0.75, -0.5, -1.0, 0.5, 0.5, -0.25, -1.0, 0.75, 0.75, -1.0, -1.0, 0.5, -0.75, 0.0, -0.5, 1.0, 0.5, -1.0, -1.0, 0.0, -1.0, 0.25, 0.25, -0.5, 0.75, ]);
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array2 = new Float32Array([-0.5, 0.75, 1.0, 0.5, 0.75, -0.25, 0.5, 0.25, 1.0, 0.75, -0.25, -0.5, 0.0, 0.25, -1.0, -0.75, -0.25, -0.5, 0.25, 1.0, -0.75, -1.0, -0.25, 0.0, -0.5, -0.5, 1.0, 0.25, 0.75, 0.5, 0.5, 0.75, -0.25, 0.5, 0.5, -0.25, -1.0, 1.0, 0.75, -0.75, 0.25, -0.75, 0.75, 0.5, 0.25, 1.0, 0.0, 0.25, 0.0, -0.5, 0.75, -0.5, 1.0, -0.25, 1.0, 0.75, 0.0, -1.0, 0.75, 0.5, 0.0, 0.0, -0.5, -1.0, 0.5, -0.25, -0.5, 0.5, 0.5, 0.5, -0.25, 0.25, 0.0, 0.75, -1.0, 0.5, 0.75, 0.5, 0.5, -1.0, -1.0, -0.5, 0.75, 0.5, 0.25, 1.0, -0.75, 1.0, 1.0, -1.0, -0.25, 0.0, 0.75, -0.5, -0.5, 0.25, 0.5, 0.0, -0.25, -0.5, ]);
    
    render_pass_encoder0000.executeBundles([render_bundle_encoder000, ])
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
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
    render_pass_encoder0020.executeBundles([render_bundle_encoder000, ])
    render_pass_encoder0001.setStencilReference(1);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setStencilReference(1);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_pass_encoder0000.executeBundles([render_bundle_encoder000, ])
    render_pass_encoder0001.setPipeline(render_pipeline000);
    render_bundle_encoder001.popDebugGroup();
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0001.setStencilReference(1);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder0001.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0021.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0010.executeBundles([])
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.popDebugGroup();
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0030.executeBundles([render_bundle_encoder001, ])
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0020.setPipeline(render_pipeline000);
    command_encoder003.insertDebugMarker("mymarker");
    
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0001.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    render_pass_encoder0000.popDebugGroup();
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.setStencilReference(1);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0031.executeBundles([render_bundle_encoder000, ])
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.popDebugGroup();
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0031.setPipeline(render_pipeline001);
    render_pass_encoder0011.executeBundles([])
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0010.executeBundles([])
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    command_encoder003.copyTextureToTexture(
        {
            texture: texture005
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.executeBundles([render_bundle_encoder002, ])
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
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setPipeline(render_pipeline000);
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
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const array3 = new Float32Array([-1.0, -0.75, 1.0, 0.5, 0.25, 0.0, -0.5, -0.5, -0.25, 0.0, -0.25, -0.25, -0.25, 1.0, -1.0, 0.0, -1.0, 0.75, 0.5, 0.0, 1.0, -1.0, 0.25, -0.75, 0.75, -0.75, 0.75, -0.75, -0.75, -0.75, 0.25, 1.0, 0.0, -0.75, 0.0, 0.5, 1.0, -0.5, -0.5, -0.75, 0.75, -1.0, -0.5, -0.25, -1.0, -1.0, -0.5, 0.75, -1.0, 0.0, -0.5, 0.5, 0.75, -0.75, -0.25, 0.0, 1.0, -0.5, 0.25, 1.0, 0.5, -0.5, -1.0, -0.25, -0.75, 0.5, -0.75, 0.0, -1.0, -1.0, 0.0, -0.5, -0.75, 0.75, -0.75, 0.75, -0.5, -1.0, -0.75, -1.0, -1.0, -0.25, 0.25, -0.25, -1.0, 0.75, 0.5, -0.25, 0.75, -0.5, 0.25, -0.75, -0.75, -0.25, 0.5, -1.0, 0.25, -0.5, 0.5, 1.0, ]);
    
    device20.destroy();
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder000.copyTextureToTexture(
        {
            texture: texture005
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_pass_encoder0021.setPipeline(render_pipeline000);
    render_pass_encoder0010.setPipeline(render_pipeline003);
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    render_bundle_encoder000.setPipeline(render_pipeline003);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0011.setPipeline(render_pipeline003);
    render_pass_encoder0011.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0042,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0041.setPipeline(render_pipeline003);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group000);
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setPipeline(render_pipeline004);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0012.setPipeline(render_pipeline004);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0011.popDebugGroup();
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_pass_encoder0030.setBindGroup(0, bind_group001);
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0012.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    buffer002.destroy()
    buffer003.destroy()
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0043 = texture004.createView({ label: "texture_view0043" });
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    render_bundle_encoder000.popDebugGroup();
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group002);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder006.copyTextureToTexture(
        {
            texture: texture005
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
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    buffer000.destroy()
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0012.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0050.setPipeline(render_pipeline004);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    command_encoder007.copyBufferToBuffer(
        buffer000,
        0,
        buffer004,
        0,
        400
    );
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_bundle_encoder002.popDebugGroup();
    command_encoder007.copyTextureToTexture(
        {
            texture: texture004
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    render_pass_encoder0031.setVertexBuffer(0, buffer001);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0041.pushDebugGroup("group_marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0060.setPipeline(render_pipeline001);
    render_bundle_encoder003.setPipeline(render_pipeline000);
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    command_encoder200.pushDebugGroup("mygroupmarker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0070.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0043,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0051.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    render_pass_encoder0001.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer005.destroy()
    
    render_pass_encoder0011.pushDebugGroup("group_marker");
    
    render_pass_encoder0051.executeBundles([])
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0051.pushDebugGroup("group_marker");
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group004);
    
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group005);
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0070.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0041.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0040.setPipeline(render_pipeline002);
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0070.setPipeline(render_pipeline003);
    render_pass_encoder0012.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0011.setVertexBuffer(0, buffer006);
    buffer004.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0012.setBindGroup(0, bind_group006);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0041.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    buffer0013.destroy()
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0051.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array4 = new Float32Array([0.0, -0.75, 0.75, 0.25, -0.25, -0.75, 0.75, 1.0, -0.25, -0.75, 1.0, 1.0, 0.25, 0.5, 0.75, 0.25, -0.5, 0.0, 0.75, 0.5, 0.0, -0.5, -0.25, -0.75, -0.75, 0.75, -0.75, 1.0, 0.25, 0.25, 0.0, -0.5, 0.75, 0.5, 0.5, 0.5, 0.0, 0.5, 1.0, 0.0, 1.0, 0.5, -1.0, -0.5, -0.25, 0.5, -0.25, -0.25, 1.0, -0.75, -1.0, -1.0, -0.25, 0.5, -0.5, 0.5, -0.25, -0.5, -1.0, 1.0, 0.75, -1.0, 0.75, -0.75, -0.25, 0.5, 0.25, 0.25, 0.0, 0.5, -0.75, -0.25, -0.75, -1.0, 0.0, 1.0, 0.75, 1.0, -1.0, -0.25, -1.0, 0.5, 0.25, -0.25, 0.25, 0.5, -0.5, -0.25, 0.25, -1.0, 0.0, 0.5, -0.75, -0.5, 0.75, -0.75, 1.0, 0.5, -0.5, -1.0, ]);
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    command_encoder003.copyBufferToBuffer(
        buffer005,
        0,
        buffer001,
        0,
        400
    );
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0051.setPipeline(render_pipeline001);
    render_pass_encoder0050.setStencilReference(1);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0011.popDebugGroup();
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group007);
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
    render_pass_encoder0040.setStencilReference(1);
    
    command_encoder007.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0030.setVertexBuffer(0, buffer009);
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture005
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
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0012.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_bundle_encoder003.insertDebugMarker("marker");
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder0070.popDebugGroup();
    
    buffer0012.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder007.copyTextureToTexture(
        {
            texture: texture005
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder003.copyBufferToBuffer(
        buffer0011,
        0,
        buffer003,
        0,
        400
    );
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder003.pushDebugGroup("mygroupmarker")
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    
    buffer006.destroy()
    buffer0011.destroy()
    buffer001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder005.copyBufferToBuffer(
        buffer003,
        0,
        buffer007,
        0,
        400
    );
    render_pass_encoder0012.pushDebugGroup("group_marker");
    command_encoder003.popDebugGroup()
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer009.destroy()
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0044 = texture004.createView({ label: "texture_view0044" });
    render_pass_encoder0012.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer007.destroy()
    device40.destroy();
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    render_pass_encoder0012.setVertexBuffer(0, buffer001);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    
    const array5 = new Float32Array([0.0, 1.0, -0.25, -0.25, 1.0, 0.25, 1.0, 0.25, -1.0, 0.75, -1.0, 0.25, 0.0, 0.0, 0.0, 1.0, 0.5, 0.5, -0.25, 0.75, 0.75, -0.25, 0.25, 0.0, 0.75, 0.25, 0.0, -0.5, 0.5, 0.5, 1.0, -1.0, 0.75, -0.5, 1.0, 0.25, -1.0, -0.5, 0.75, 1.0, -1.0, 0.75, 0.25, 1.0, 0.25, -0.25, 0.5, 0.75, 0.25, -1.0, 0.5, 0.5, -1.0, 0.0, -0.25, -0.75, -0.5, 0.75, 0.75, 0.25, -0.75, -0.5, -0.5, 1.0, 0.0, -1.0, 1.0, -1.0, 0.25, -0.75, 0.75, -0.25, -0.25, -0.75, 1.0, 0.75, -0.5, 0.5, 0.75, -0.75, -0.25, 1.0, -0.5, 0.0, 0.0, 1.0, 0.5, 0.75, 0.75, -0.75, 0.25, 0.5, -1.0, 0.0, -0.75, 0.0, 0.0, -0.25, -1.0, -0.25, ]);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer0014
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer003.destroy()
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer0015
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder003.pushDebugGroup("group_marker");
    command_encoder006.copyTextureToTexture(
        {
            texture: texture005
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0041.setVertexBuffer(0, buffer001);
    command_encoder000.copyBufferToBuffer(
        buffer0011,
        0,
        buffer006,
        0,
        400
    );
    
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0012.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    command_encoder000.copyTextureToTexture(
        {
            texture: texture005
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0040.setStencilReference(1);
    command_encoder003.pushDebugGroup("mygroupmarker")
    render_bundle_encoder003.popDebugGroup();
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0070.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.copyBufferToBuffer(
        buffer008,
        0,
        buffer0011,
        0,
        400
    );
    render_pass_encoder0051.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const render_pass_encoder0071 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0012.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    command_encoder000.copyTextureToTexture(
        {
            texture: texture004
        },
        {
            texture: texture006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder003.copyBufferToBuffer(
        buffer0010,
        0,
        buffer0011,
        0,
        400
    );
    
    render_pass_encoder0001.setStencilReference(1);
    
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    command_encoder003.copyTextureToTexture(
        {
            texture: texture001
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0071.setPipeline(render_pipeline0010);
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer007
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0010.popDebugGroup();
    command_encoder003.popDebugGroup()
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group008);
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder002.copyTextureToTexture(
        {
            texture: texture001
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0061.setPipeline(render_pipeline0011);
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    command_encoder005.clearBuffer(buffer002);
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.setVertexBuffer(0, buffer002);
    const array6 = new Float32Array([0.5, 0.5, 0.25, 0.5, -0.5, 0.25, -0.5, -0.5, 0.75, 1.0, 0.25, 0.25, -0.75, -0.25, -1.0, 1.0, 0.0, 0.5, 0.25, -0.5, 0.5, 0.75, -0.5, -0.5, 1.0, -0.25, -0.25, -0.25, 0.25, -0.75, 1.0, 0.0, -1.0, 0.75, -1.0, -1.0, 0.0, 0.75, -0.25, 0.5, 0.5, -0.75, -0.5, -1.0, 0.75, -1.0, 0.25, -0.75, -0.75, 0.25, 0.5, -0.5, -1.0, -0.75, -1.0, 0.0, 0.5, 0.5, -1.0, -1.0, 0.75, 0.25, 0.0, -0.25, 0.5, -1.0, -0.5, -0.75, -0.75, 0.5, 0.75, -1.0, -0.75, -0.75, 0.75, -0.5, -0.5, -0.5, -0.75, -0.25, 0.5, -1.0, 1.0, 0.5, -0.25, 0.0, -0.75, 0.0, -0.25, -0.5, 0.75, 0.0, 1.0, 0.75, 1.0, 0.75, 0.75, 0.75, 1.0, 0.75, ]);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture006
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
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group009);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group0010);
    render_pass_encoder0071.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pass_encoder0013 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0013",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    command_encoder005.copyBufferToBuffer(
        buffer006,
        0,
        buffer0012,
        0,
        400
    );
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0020.setVertexBuffer(0, buffer009);
    render_pass_encoder0050.setVertexBuffer(0, buffer0011);
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    render_pass_encoder0070.setVertexBuffer(0, buffer005);
    render_pass_encoder0070.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    command_encoder003.copyBufferToBuffer(
        buffer0017,
        0,
        buffer0012,
        0,
        400
    );
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    buffer0020.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_bundle_encoder003.pushDebugGroup("group_marker");
    command_encoder001.copyBufferToBuffer(
        buffer007,
        0,
        buffer0015,
        0,
        400
    );
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    render_pass_encoder0012.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0045 = texture004.createView({ label: "texture_view0045" });
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0013.executeBundles([render_bundle_encoder000, ])
    
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder003.insertDebugMarker("marker");
    render_pass_encoder0041.setStencilReference(1);
    
    render_pass_encoder0010.setStencilReference(1);
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0060.setIndexBuffer(buffer0016, "uint16");
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    command_encoder003.copyBufferToBuffer(
        buffer0011,
        0,
        buffer0018,
        0,
        400
    );
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
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
    render_pass_encoder0032.setPipeline(render_pipeline007);
    command_encoder003.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder007.copyBufferToTexture(
        {
            buffer: buffer0011
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
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0032.pushDebugGroup("group_marker");
    
    command_encoder003.copyTextureToTexture(
        {
            texture: texture004
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
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder0041.draw(3);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0032.setBindGroup(0, bind_group0011);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.end();
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group0012);
    render_pass_encoder0060.setIndexBuffer(buffer0015, "uint16");
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0071.setBindGroup(0, bind_group0013);
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group0014);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group0015);
    render_pass_encoder0032.setVertexBuffer(0, buffer006);
    render_pass_encoder0000.setVertexBuffer(0, buffer0020);
    render_pass_encoder0001.setVertexBuffer(0, buffer006);
    render_pass_encoder0001.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0021.setVertexBuffer(0, buffer0011);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0071.setVertexBuffer(0, buffer0024);
    render_pass_encoder0070.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0032.draw(3);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0051.setVertexBuffer(0, buffer005);
    render_pass_encoder0051.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0071.draw(3);
    render_pass_encoder0050.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0051.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0010.setVertexBuffer(0, buffer0024);
    render_pass_encoder0051.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0012.draw(3);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0012.end();
    render_pass_encoder0051.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0021.end();
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0071.draw(3);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    render_pass_encoder0013.setBindGroup(0, bind_group0016);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0013.setVertexBuffer(0, buffer006);
    render_pass_encoder0001.end();
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: render_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    render_pass_encoder0061.setBindGroup(0, bind_group0017);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0070.end();
    render_pass_encoder0061.setVertexBuffer(0, buffer005);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0041.end();
    render_pass_encoder0061.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0071.end();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0032.end();
    device00.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    command_encoder003.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder0060.end();
    render_pass_encoder0061.end();
    render_pass_encoder0013.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group0018);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0040.setVertexBuffer(0, buffer0018);
    render_pass_encoder0070.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0013.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder0013.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0013.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0013.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0012.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0013.drawIndexed(3);
    render_pass_encoder0071.draw(3);
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0012.setIndexBuffer(buffer0012, "uint16");
    command_encoder001.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0013.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0013.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0013.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0060.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0012.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0071.draw(3);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0013.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0013.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0013.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0061.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0061.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0014, "uint16");
}