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
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const array0 = new Float32Array([-0.5, 0.75, 0.0, -0.75, 0.25, -0.5, -0.75, 0.25, -0.5, -0.25, -0.75, -0.25, -0.25, 0.0, -0.75, 0.0, -0.5, -1.0, -1.0, -1.0, 0.25, 1.0, 0.0, 0.25, 0.75, 1.0, 0.5, -0.75, 0.75, -1.0, -1.0, 0.5, 1.0, 0.25, 1.0, 0.75, 1.0, 0.25, 0.5, 0.5, 1.0, -0.75, 1.0, 0.0, 1.0, 0.75, 0.25, -0.25, -1.0, 1.0, 0.5, -0.5, -0.25, 1.0, 1.0, -0.75, 0.5, 0.75, -0.25, -0.5, -1.0, -0.25, 1.0, 0.5, 0.75, 0.25, -1.0, 0.75, -0.25, 1.0, 0.5, 0.5, -1.0, -0.5, -1.0, -0.5, -0.5, 0.25, -0.25, 0.5, 0.5, -0.25, 0.5, -0.25, -0.5, 0.25, -0.25, 0.5, -0.5, -1.0, 0.5, -0.25, -0.75, 0.5, 0.25, 0.75, -0.5, -0.25, 1.0, -0.25, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array1 = new Float32Array([-0.75, 0.25, 0.75, 0.75, -0.25, 0.5, -1.0, 1.0, 0.0, 0.5, 0.75, 0.5, 1.0, 0.5, -0.5, 0.75, -0.25, -0.75, -0.75, 0.5, -0.5, 0.5, 0.75, -0.25, -0.75, -0.25, 0.5, 0.5, 0.25, -1.0, 0.0, 0.25, -0.25, 0.0, 0.0, -0.25, -1.0, -0.5, 1.0, 0.5, -0.25, -0.75, -0.5, 1.0, 1.0, -0.25, -0.5, -0.25, 0.75, -0.5, -0.75, 0.75, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, 0.75, 0.5, 0.0, 0.75, 0.0, -0.5, 1.0, 1.0, 0.5, -0.75, -0.75, 0.75, -0.75, 0.25, 0.5, 0.75, -0.5, -1.0, 0.5, 0.25, 0.25, -0.75, -0.25, -0.5, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, -0.75, -0.25, -0.5, 0.75, 0.25, -1.0, -0.75, -0.25, -0.25, 0.0, 0.75, 0.5, ]);
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.submit([]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const array2 = new Float32Array([0.0, -1.0, 0.5, 1.0, 0.25, 0.0, -1.0, -0.5, 0.0, 1.0, 0.0, 0.75, 0.5, -0.5, 0.75, 0.75, -1.0, -0.25, -0.5, -0.5, -0.75, 0.0, 0.25, 1.0, 0.75, -0.5, -0.25, 0.25, 0.25, 0.75, 0.5, 0.5, 0.0, 0.5, 0.5, -1.0, 0.0, 1.0, -0.5, 0.5, 1.0, 1.0, 0.5, -0.5, -1.0, 0.0, -0.5, -0.25, 0.75, 0.25, 0.75, 1.0, 0.5, 0.5, -0.5, 0.25, -1.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.5, -0.75, 0.75, -0.75, -1.0, -0.5, -0.25, 0.75, 0.5, -0.5, 0.5, 0.25, 0.75, -0.25, 0.75, 0.0, 0.0, 0.5, -0.5, 0.75, -0.75, -1.0, 0.25, -0.25, -0.75, 0.0, 0.5, 0.25, 0.75, -0.5, 1.0, -0.75, 0.5, -1.0, 0.5, -0.75, 1.0, 0.0, ]);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer100.destroy()
    query000.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([0.25, 0.75, -0.75, -1.0, 0.5, 0.25, 0.0, -0.5, -0.75, -0.25, 0.75, -1.0, -0.75, -0.5, -0.5, 0.75, 1.0, 0.75, 0.25, -0.25, 0.0, -0.75, 0.0, -0.25, 0.0, -0.5, 0.0, 0.25, 0.75, -1.0, 0.25, -0.75, 0.5, 0.25, -0.5, -0.5, -0.25, -0.25, 0.75, -0.75, 0.25, 1.0, 0.25, -1.0, 0.5, 1.0, 0.0, 1.0, 0.25, 0.25, -0.5, -0.5, -0.5, -1.0, 0.25, -0.5, -0.5, 0.75, 0.75, 0.5, 0.25, 0.0, 0.0, -1.0, 0.5, 0.5, -0.5, -0.25, 0.75, 0.75, 1.0, 0.25, 1.0, 1.0, 0.25, 0.5, -0.5, 0.0, -1.0, -0.25, -1.0, -0.25, -0.25, -0.25, 1.0, 1.0, -0.75, 1.0, 1.0, 1.0, -0.75, -1.0, 0.25, -0.75, 0.75, -0.25, 0.75, 1.0, 0.0, -0.25, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.destroy();
    device20.destroy();
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.insertDebugMarker("mymarker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    device30.pushErrorScope("out-of-memory");
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    texture301.destroy();
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture001.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    texture000.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer000.destroy()
    texture300.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer301
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
    buffer301.destroy()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder3000.setStencilReference(1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    render_pass_encoder0000.executeBundles([render_bundle_encoder002, ])
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array4 = new Float32Array([0.0, -0.75, 0.5, -0.75, 0.5, 0.0, -0.25, 0.0, -0.75, -0.5, -0.25, -0.75, -1.0, 1.0, 0.5, 1.0, 0.0, 0.25, -0.25, -0.5, 1.0, 0.25, 0.25, -0.25, 0.75, 0.25, 0.5, -0.5, -0.25, 0.25, -0.5, 0.0, -0.25, 0.25, -0.25, 0.5, 0.25, -0.5, -0.75, -1.0, 0.5, -1.0, 1.0, 0.75, 0.25, 0.0, -1.0, 1.0, -1.0, -1.0, -1.0, -1.0, 0.75, 1.0, -1.0, -0.25, -0.5, 0.5, -1.0, 0.5, -0.25, 0.5, -1.0, 0.25, -0.5, -0.5, 1.0, 1.0, 0.5, 0.0, 0.25, -1.0, -0.75, -0.5, 1.0, 0.25, 1.0, -0.75, 0.5, 0.5, 0.75, -0.5, 0.75, 0.25, 0.0, -0.25, -0.5, 0.75, -1.0, -0.5, -0.5, 1.0, 0.0, -0.75, 0.75, 0.25, -0.5, -0.25, 0.5, 0.5, ]);
    texture303.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder3000.setStencilReference(1);
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3001.beginOcclusionQuery(0)
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    texture305.destroy();
    render_pass_encoder3010.executeBundles([])
    
    const array5 = new Float32Array([-0.25, 0.5, 1.0, 0.75, -0.25, -1.0, 0.0, -0.5, -0.75, -0.25, 1.0, -0.5, -1.0, 1.0, 1.0, -0.25, 0.25, 0.75, 1.0, -0.5, -1.0, 0.25, 0.5, 0.75, -0.5, 0.75, -0.25, -0.75, -0.75, -0.5, -0.5, 0.5, 0.0, 0.0, 0.0, 0.5, 0.75, 0.25, 1.0, -0.25, 0.25, -1.0, -0.75, 0.25, -0.5, 0.75, 0.25, 0.5, 0.25, 1.0, -0.75, -0.25, 0.0, -0.75, -0.75, 1.0, -1.0, 0.0, -0.5, 0.75, 0.75, -0.25, 0.5, -0.75, 0.0, 0.25, -1.0, -0.25, -0.5, 0.5, 0.75, -0.5, -1.0, 0.75, -0.25, 0.0, 0.5, -0.75, -1.0, -1.0, 1.0, -1.0, 0.0, 1.0, 1.0, 0.25, -0.25, -0.5, -0.25, -0.25, -0.5, 0.0, 0.75, -0.75, -0.5, 1.0, 1.0, -0.25, 0.25, -0.25, ]);
    buffer201.destroy()
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder3010.setStencilReference(1);
    
    
    
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    texture302.destroy();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder3001.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3001.endOcclusionQuery()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    render_pass_encoder3001.pushDebugGroup("group_marker");
    command_encoder003.insertDebugMarker("mymarker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder301.insertDebugMarker("mymarker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    buffer301.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
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
    command_encoder004.insertDebugMarker("mymarker");
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_pass_encoder3010.beginOcclusionQuery(0)
    render_pass_encoder0000.executeBundles([render_bundle_encoder001, ])
    render_pass_encoder3000.executeBundles([])
    buffer200.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3001.popDebugGroup();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder303.copyBufferToBuffer(
        buffer302,
        0,
        buffer300,
        0,
        400
    );
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
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    command_encoder004.insertDebugMarker("mymarker");
    
    buffer002.destroy()
    
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    command_encoder004.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    buffer302.destroy()
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: query301
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    render_pass_encoder0040.setPipeline(render_pipeline000);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3010.setStencilReference(1);
    
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.0, 0.5, -1.0, -0.5, 0.75, 0.0, 0.0, 0.0, -0.25, 1.0, -0.75, 0.0, 0.25, -0.5, 0.0, -0.5, -1.0, 0.75, 0.5, 1.0, -1.0, -1.0, -0.75, 1.0, 0.75, -0.25, 0.5, 0.0, -0.75, -0.75, 1.0, -0.5, -0.5, -1.0, -1.0, 0.5, 1.0, -0.25, 0.0, 0.25, -1.0, 0.75, -0.5, 0.25, 0.75, -0.75, 0.75, -0.75, -0.5, 1.0, 0.25, 0.75, -0.25, 0.25, -0.5, 0.5, 0.75, 0.25, -1.0, 0.5, 1.0, -1.0, 0.0, -0.75, -1.0, -0.25, 0.5, 0.25, -0.75, -0.75, -0.75, -0.5, 0.75, 1.0, -0.25, 0.25, 0.75, 0.5, -0.75, 0.5, 0.0, 0.0, 0.75, -0.5, -0.25, 0.25, -0.25, 0.5, 0.0, -0.75, 0.0, -0.75, 0.25, 0.0, -0.75, 0.0, -1.0, 0.75, -1.0, 1.0, ]);
    const command_buffer300 = command_encoder300.finish();
    const texture_view3071 = texture307.createView({ label: "texture_view3071" });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder0010.beginOcclusionQuery(0)
    query302.destroy()
    render_pass_encoder3001.pushDebugGroup("group_marker");
    render_pass_encoder3000.executeBundles([])
    texture307.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3001.insertDebugMarker("marker");
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3071,
            },
        ],
        occlusionQuerySet: query301
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    const command_buffer003 = command_encoder003.finish();
    query002.destroy()
    render_pass_encoder3030.beginOcclusionQuery(1)
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    query302.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_pass_encoder0000.setPipeline(render_pipeline002);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture309 = device30.createTexture({
        label: "texture309",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder3001.insertDebugMarker("marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setScissorRect(0, 0, texture304.width / 2, texture304.height / 2);
    query302.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    query304.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    render_pass_encoder3020.executeBundles([])
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder3011.pushDebugGroup("group_marker");
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.pushErrorScope("out-of-memory");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3001.setPipeline(render_pipeline300);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeTexture({ texture: texture308 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    device40.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer306, 0, array2, 0, array2.length);
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setPipeline(render_pipeline300);
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    
    device30.queue.writeTexture({ texture: texture309 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
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
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    device30.queue.writeTexture({ texture: texture309 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view3061 = texture306.createView({ label: "texture_view3061" });
    buffer001.destroy()
    render_pass_encoder3010.popDebugGroup();
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3070,
            },
        ],
        occlusionQuerySet: query300
    });
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    query004.destroy()
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3060,
            },
        ],
        occlusionQuerySet: query302
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_pass_encoder0050.beginOcclusionQuery(0)
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    render_pass_encoder0050.setPipeline(render_pipeline000);
    texture308.destroy();
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setPipeline(render_pipeline001);
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0040.popDebugGroup();
    query303.destroy()
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    render_pass_encoder3031.setViewport(0, 0, texture306.width / 2, texture306.height / 2, 0, 1);
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3001.beginOcclusionQuery(2)
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0050.setStencilReference(1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.queue.writeTexture({ texture: texture304 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3031.setStencilReference(1);
    
    render_pass_encoder3010.endOcclusionQuery()
    const texture3010 = device30.createTexture({
        label: "texture3010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3011.setPipeline(render_pipeline300);
    texture307.destroy();
    command_encoder301.popDebugGroup()
    render_pass_encoder3010.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    texture002.destroy();
    query303.destroy()
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder3021.setViewport(0, 0, texture307.width / 2, texture307.height / 2, 0, 1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
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
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group002);
    
    
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer008,
        0
    )
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder401.popDebugGroup()
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group302);
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.setIndexBuffer(buffer001, "uint16");
    device30.queue.writeTexture({ texture: texture3010 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    render_bundle_encoder300.setVertexBuffer(0, buffer304);
    render_pass_encoder3020.setPipeline(render_pipeline302);
    query002.destroy()
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder3020.setViewport(0, 0, texture304.width / 2, texture304.height / 2, 0, 1);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    device00.queue.writeBuffer(buffer008, 0, array0, 0, array0.length);
    command_encoder301.insertDebugMarker("mymarker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3000.setStencilReference(1);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.setVertexBuffer(0, buffer3014);
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    render_pass_encoder3031.setScissorRect(0, 0, texture306.width / 2, texture306.height / 2);
    device30.queue.writeTexture({ texture: texture3010 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    
    render_pass_encoder3030.endOcclusionQuery()
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder300.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder002.copyBufferToBuffer(
        buffer0012,
        0,
        buffer003,
        0,
        400
    );
    render_pass_encoder3021.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer008, 0, array0, 0, array0.length);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    
    render_pass_encoder3031.setScissorRect(0, 0, texture306.width / 2, texture306.height / 2);
    render_pass_encoder0011.executeBundles([])
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
        occlusionQuerySet: query004
    });
    compute_pass_encoder0000.popDebugGroup()
    query304.destroy()
    command_encoder401.insertDebugMarker("mymarker");
    render_pass_encoder3011.setVertexBuffer(0, buffer302);
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder3011.drawIndirect(buffer301, 0);
    render_pass_encoder3030.setVertexBuffer(0, buffer309);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3030.draw(3);
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0011.setPipeline(render_pipeline002);
    render_pass_encoder0000.setVertexBuffer(0, buffer006);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    render_pass_encoder0020.setVertexBuffer(0, buffer006);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3000.setIndexBuffer(buffer3013, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer003, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0010.setVertexBuffer(0, buffer0010);
    render_pass_encoder3000.drawIndexed(3);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group304);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group006);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group007);
    render_pass_encoder0050.endOcclusionQuery()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0023, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0024, 0);
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group305);
    render_pass_encoder3030.drawIndexedIndirect(buffer300, 0);
    device00.queue.submit([command_buffer003, ]);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group306);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder3021.setPipeline(render_pipeline302);
    render_pass_encoder3020.setVertexBuffer(0, buffer300);
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder3031.setPipeline(render_pipeline300);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3020.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3000.draw(3);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.endOcclusionQuery()
    compute_pass_encoder0020.end();
    render_pass_encoder3001.setVertexBuffer(0, buffer3017);
    render_pass_encoder3010.setVertexBuffer(0, buffer3020);
    render_pass_encoder3011.end();
    render_pass_encoder3010.drawIndirect(buffer3018, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    command_encoder401.popDebugGroup()
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder3001.draw(3);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
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

    render_pass_encoder0040.setBindGroup(0, bind_group009);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group307);
    render_pass_encoder0040.setVertexBuffer(0, buffer0030);
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group0010);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder3021.setVertexBuffer(0, buffer303);
    render_pass_encoder0011.setVertexBuffer(0, buffer0022);
    render_pass_encoder3020.drawIndirect(buffer3014, 0);
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0011.end();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder3020.end();
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder3021.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0010.end();
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group308);
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer300, 0);
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group0011);
    render_pass_encoder3010.drawIndirect(buffer3017, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0050.setVertexBuffer(0, buffer0031);
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3014, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0000.draw(3);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder0040.end();
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder3031.setVertexBuffer(0, buffer305);
    render_pass_encoder3000.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3030.drawIndirect(buffer3013, 0);
    command_encoder001.popDebugGroup()
    render_pass_encoder3031.drawIndirect(buffer304, 0);
    render_pass_encoder0050.end();
    render_pass_encoder3021.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder3001.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3021.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder3011.drawIndirect(buffer3021, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3021.drawIndirect(buffer3019, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder3011.draw(3);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3031.drawIndirect(buffer3020, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3024, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder3030.drawIndirect(buffer309, 0);
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3021.drawIndirect(buffer3011, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0035, 0);
    render_pass_encoder3021.drawIndirect(buffer306, 0);
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3030.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder3031.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3011.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder3000.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder3020.drawIndirect(buffer3021, 0);
    render_pass_encoder3010.drawIndexed(3);
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0012);
    render_pass_encoder3020.end();
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0016, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0010.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder3010.drawIndirect(buffer3017, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3021.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0020.end();
    render_pass_encoder3020.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0040.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder3010.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder3021.end();
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3021, 0);
    command_encoder400.popDebugGroup()
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndexedIndirect(buffer304, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3024, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3016, 0);
    device30.queue.submit([]);
    compute_pass_encoder0000.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder3021.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder3020.end();
    device40.queue.submit([]);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder3010.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3021.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0023, 0);
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0013);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.popDebugGroup();
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0014);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndirect(buffer0039, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3001.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder3031.end();
    render_pass_encoder3001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder3021.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3001.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3018, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder3001.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3021.end();
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder3021.setIndexBuffer(buffer309, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0000.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder3031.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3031.drawIndirect(buffer3018, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3031.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3011.popDebugGroup();
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder3030.drawIndirect(buffer3012, 0);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder3011.drawIndirect(buffer3022, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3020.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder3021.drawIndirect(buffer3022, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder3011.drawIndirect(buffer3017, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder3031.drawIndirect(buffer3021, 0);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder3021.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder0000.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3021.end();
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3011.drawIndirect(buffer306, 0);
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3021, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0040.draw(3);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3020.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3020.draw(3);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0050.end();
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3020.drawIndirect(buffer305, 0);
    render_pass_encoder3020.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder3020.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3020.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder3031.drawIndirect(buffer300, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder0000.end();
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder3031.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder3020.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder3020.drawIndirect(buffer3018, 0);
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder3001.draw(3);
    render_pass_encoder3011.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder3021.drawIndirect(buffer303, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3019, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3000.end();
    device30.queue.submit([]);
    render_pass_encoder3031.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3018, 0);
    render_pass_encoder3031.drawIndirect(buffer301, 0);
    render_pass_encoder3021.drawIndirect(buffer3013, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0049, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0051, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder3011.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3011.drawIndirect(buffer3018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder3010.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder0050.draw(3);
    render_pass_encoder3030.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3001.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder3031.draw(3);
    device00.queue.submit([command_buffer004, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0033, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder0050.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0019);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0010.draw(3);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3015, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3011.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3030.drawIndirect(buffer305, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3030.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0000.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder3031.draw(3);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer3012, 0);
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0050.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3001.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3000.end();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0020.end();
    device10.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer3023, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.end();
    render_pass_encoder3000.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0011.end();
    compute_pass_encoder0000.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0059, 0);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder3011.drawIndirect(buffer307, 0);
    compute_pass_encoder0030.popDebugGroup()
    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0061,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0020);
    render_pass_encoder3030.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder3000.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder3001.drawIndirect(buffer3018, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder3011.drawIndirect(buffer3015, 0);
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0000.draw(3);
    device40.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    render_pass_encoder3010.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3010.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0064, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0064, 0);
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3031.drawIndirect(buffer304, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    device30.queue.submit([command_buffer302, ]);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    render_pass_encoder3001.drawIndirect(buffer3024, 0);
    render_pass_encoder3031.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3010.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder3010.drawIndirect(buffer3018, 0);
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3021.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0023, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0066, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0022);
    render_pass_encoder3001.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3011.drawIndirect(buffer301, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0059, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0066, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3030.drawIndirect(buffer304, 0);
    device30.queue.submit([]);
    render_pass_encoder3011.drawIndirect(buffer3023, 0);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0045, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3011.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder3020.drawIndirect(buffer3015, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder3001.drawIndirect(buffer3019, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3021.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder3020.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3012, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3021.end();
    render_pass_encoder3030.drawIndirect(buffer3024, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3011.drawIndirect(buffer3017, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder3031.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3020, 0);
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder3021.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder0010.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3019, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0064, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.end();
    render_pass_encoder3020.drawIndirect(buffer3014, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder3031.draw(3);
    render_pass_encoder3010.end();
    compute_pass_encoder0020.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3011.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder3030.drawIndexed(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0023);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3020.end();
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.end();
    device20.queue.submit([]);
    render_pass_encoder3001.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3021.drawIndirect(buffer3023, 0);
    device00.queue.submit([command_buffer002, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0071, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0071, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder3031.endOcclusionQuery()
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3000.drawIndirect(buffer3017, 0);
    render_pass_encoder0000.drawIndirect(buffer0056, 0);
    compute_pass_encoder0000.popDebugGroup()
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0024);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0053, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0074, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0074, 0);
    render_pass_encoder3021.popDebugGroup();
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0025);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndirect(buffer0056, 0);
    render_pass_encoder0050.drawIndexed(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3031.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder3001.setIndexBuffer(buffer3019, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0040.end();
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0026);
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    render_pass_encoder3001.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3019, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3016, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0000.drawIndexed(3);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3000.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3011.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder3031.setIndexBuffer(buffer3020, "uint16");
    device00.queue.submit([command_buffer002, ]);
    device40.queue.submit([command_buffer401, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0079, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3014, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder3000.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder3020.drawIndirect(buffer3014, 0);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0050.drawIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder0050.drawIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder3010.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3021.draw(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0080, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0080, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3031.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3020.drawIndirect(buffer3020, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder0000.end();
    render_pass_encoder3030.end();
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0045, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder0050.drawIndirect(buffer0055, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3011.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0064, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3000.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder3031.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3020, 0);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0055, 0);
    render_pass_encoder3020.drawIndirect(buffer3024, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder3010.drawIndirect(buffer3014, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3017, 0);
    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0082,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder3031.end();
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0020.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer300, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0083, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0083, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0000.draw(3);
    device40.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0054, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder3000.drawIndirect(buffer3024, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0083, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0011.drawIndirect(buffer0038, 0);
    render_pass_encoder3031.drawIndirect(buffer303, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder3031.drawIndirect(buffer3021, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3016, 0);
    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0085,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0028);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0000.drawIndirect(buffer0079, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3010.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder3030.drawIndirect(buffer3022, 0);
    render_pass_encoder3021.end();
    render_pass_encoder0000.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0074, 0);
    render_pass_encoder3001.drawIndirect(buffer309, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0011.drawIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder3011.drawIndirect(buffer3023, 0);
    render_pass_encoder0000.end();
    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0087,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0029);
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer309, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder3020.drawIndirect(buffer3014, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0088, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0088, 0);
    render_pass_encoder3021.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3018, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0064, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0089, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0010.drawIndirect(buffer0083, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder0040.drawIndirect(buffer0064, 0);
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer402, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0020.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder3021.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0020.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0090, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0090, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3001.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0089, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3011.drawIndirect(buffer307, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3011.draw(3);
    render_pass_encoder3021.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0020.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0091, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0091, 0);
    render_pass_encoder0010.end();
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0092, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0085, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0092, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0011.drawIndirect(buffer0071, 0);
    render_pass_encoder3011.drawIndirect(buffer3020, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0079, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3001.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder3011.drawIndirect(buffer300, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0059, 0);
    render_pass_encoder3010.drawIndirect(buffer3021, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3011.end();
    render_pass_encoder3001.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0093, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0093, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0094, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0094, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0087, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0030.end();
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3014, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0096,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0030);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0097, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0097, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3010.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3014, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0088, 0);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3024, 0);
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0097, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3024, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder3030.drawIndirect(buffer306, 0);
    render_pass_encoder0011.drawIndirect(buffer0064, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.end();
    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0099,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0031);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder3021.draw(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3011.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0020.drawIndirect(buffer0058, 0);
    render_pass_encoder0020.end();
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3031.drawIndirect(buffer3024, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    render_pass_encoder3030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndirect(buffer0094, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder3001.draw(3);
    render_pass_encoder3011.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0083, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.end();
    render_pass_encoder3001.end();
    render_pass_encoder0050.drawIndirect(buffer0093, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder3031.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3011.drawIndirect(buffer3021, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder0010.drawIndirect(buffer0071, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndirect(buffer0074, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0091, 0);
    compute_pass_encoder0000.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3011.setIndexBuffer(buffer3018, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00100, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00100, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3023, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3024, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3011.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder3010.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    render_pass_encoder3021.drawIndirect(buffer3018, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder3030.drawIndirect(buffer3024, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0071, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00101, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00101, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder3021.drawIndirect(buffer3018, 0);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3011.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0040.popDebugGroup();
    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00103,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0032);
    render_pass_encoder0050.drawIndirect(buffer0083, 0);
    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00105,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0033);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3031.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder3020.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0093, 0);
    render_pass_encoder0050.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer005, ]);
    render_pass_encoder3011.drawIndexed(3);
    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00107,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0034);
    render_pass_encoder3030.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0089, 0);
    render_pass_encoder3010.drawIndirect(buffer3024, 0);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00106, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0092, 0);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer3015, 0);
    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00109,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0035);
    render_pass_encoder0050.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndirect(buffer0097, 0);
    render_pass_encoder0040.drawIndirect(buffer0071, 0);
    render_pass_encoder3030.drawIndirect(buffer3022, 0);
    render_pass_encoder0010.popDebugGroup();
    device40.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00110, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00110, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0096, 0);
    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00112,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0036);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    device00.queue.submit([command_buffer002, ]);
    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00114,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0037);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00113, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
}