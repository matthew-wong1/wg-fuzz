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
        powerPreference: "low-power"
    });
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
    device20.pushErrorScope("out-of-memory");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.popDebugGroup();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    query000.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    const array0 = new Float32Array([0.75, 0.75, 0.75, 0.25, 1.0, 1.0, -0.5, 0.75, -0.25, -1.0, 0.25, 1.0, 1.0, 0.25, -0.5, -0.25, 0.25, -0.25, 0.75, -0.5, -0.75, -0.75, 0.75, 0.75, 0.5, -0.5, 0.5, -0.5, -0.75, 0.5, 0.0, 0.0, 0.25, 0.5, 0.25, 0.25, -0.5, -0.5, 0.0, 0.25, 1.0, 0.0, -0.5, 0.5, 0.5, 0.0, -0.25, -0.75, 0.0, -0.75, 0.25, -0.5, -0.75, 0.5, 0.0, 1.0, -1.0, -1.0, 0.5, 0.5, -0.25, 0.25, 1.0, 0.5, -0.75, 0.0, 0.0, 0.25, -0.25, 0.5, 0.75, -0.5, 0.25, 0.75, -0.5, 0.25, 0.5, -1.0, -0.25, 1.0, -1.0, 0.75, -0.75, -0.25, -0.75, -1.0, 0.75, 0.0, -0.25, 0.25, 0.0, -0.5, 0.0, -0.5, -0.5, -0.25, 1.0, -1.0, -0.75, 0.0, ]);
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    const command_buffer202 = command_encoder202.finish();
    device00.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder201.clearBuffer(buffer201);
    device30.pushErrorScope("validation");
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder201.copyTextureToTexture(
        {
            texture: texture201
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    buffer203.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const array1 = new Float32Array([0.5, -1.0, -0.25, 0.25, -1.0, 0.75, 0.25, 0.5, 0.5, 0.0, -0.75, -0.5, 0.5, -0.25, 0.5, 1.0, 0.0, -0.5, 0.5, -0.75, 0.75, 0.0, -1.0, -0.25, 1.0, -0.25, 0.25, 0.0, 0.5, 0.0, -0.75, -0.75, -0.25, -0.25, -0.5, -0.75, -0.5, -1.0, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, 0.75, 0.25, -0.5, -1.0, 1.0, 0.75, 0.5, -0.75, -0.25, 1.0, 0.75, -1.0, 1.0, -0.75, 0.25, -0.25, -0.5, 0.25, 0.75, -1.0, 0.75, -0.25, 1.0, 1.0, 0.0, 0.5, 0.25, 0.5, 0.75, -0.5, 0.25, -0.5, -0.5, -0.75, 0.0, 0.75, -1.0, -0.75, -0.25, 0.75, 0.75, 0.25, 0.25, -1.0, -0.75, -0.5, -0.5, -0.25, 0.75, -0.5, -1.0, -0.25, -0.25, 0.25, 1.0, 0.5, ]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const command_buffer201 = command_encoder201.finish();
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query300.destroy()
    
    compute_pass_encoder3000.popDebugGroup()
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer204 = command_encoder204.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    const command_buffer300 = command_encoder300.finish();
    const compute_pass_encoder2031 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2031" });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query200.destroy()
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
    
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
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
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder201.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("out-of-memory");
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder202.setPipeline(render_pipeline201);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_pass_encoder2040.setPipeline(render_pipeline203);
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer204, ]);
    render_pass_encoder2040.pushDebugGroup("group_marker");
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
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.popDebugGroup();
    
    device10.pushErrorScope("validation");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    texture301.destroy();
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query200.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2031.pushDebugGroup("group_marker")
    texture302.destroy();
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture303.destroy();
    buffer202.destroy()
    texture201.destroy();
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.destroy();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer200);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    query200.destroy()
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
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
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture300.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2040.setStencilReference(1);
    texture200.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer202, ]);
    render_bundle_encoder101.popDebugGroup();
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    render_bundle_encoder100.insertDebugMarker("marker");
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
        occlusionQuerySet: query201
    });
    query201.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group202);
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2031.pushDebugGroup("group_marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_pass_encoder2040.insertDebugMarker("marker");
    {
        await buffer207.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer207.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer207.unmap();
        console.log(new Float32Array(data));
    }
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    buffer201.destroy()
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    buffer205.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    render_bundle_encoder200.draw(3);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    device60.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query301.destroy()
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.setPipeline(render_pipeline203);
    render_pass_encoder2000.setStencilReference(1);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    compute_pass_encoder2031.setPipeline(compute_pipeline204);
    
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    compute_pass_encoder2000.setPipeline(compute_pipeline205);
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    render_bundle_encoder200.finish();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder2040.popDebugGroup();
    query000.destroy()
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
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
    render_bundle_encoder400.popDebugGroup();
    device40.destroy();
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder102.popDebugGroup();
    
    buffer207.destroy()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    buffer207.destroy()
    buffer208.destroy()
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query202.destroy()
    compute_pass_encoder2060.setPipeline(compute_pipeline203);
    device20.pushErrorScope("internal");
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    compute_pass_encoder3000.popDebugGroup()
    
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    compute_pass_encoder2060.popDebugGroup()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder2060.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2060.setPipeline(render_pipeline204);
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.popDebugGroup();
    query300.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    
    compute_pass_encoder2050.setPipeline(compute_pipeline202);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.executeBundles([])
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    compute_pass_encoder2030.insertDebugMarker("marker")
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
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2060.setBindGroup(0, bind_group203);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    buffer209.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture304.destroy();
    render_pass_encoder2001.setPipeline(render_pipeline200);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    texture202.destroy();
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder2040.insertDebugMarker("marker");
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    
    compute_pass_encoder2031.popDebugGroup()
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
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group204);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group205);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2060.dispatchWorkgroups(100);
    compute_pass_encoder3000.setPipeline(compute_pipeline302);
    render_pass_encoder2030.setPipeline(render_pipeline203);
    device80.queue.submit([]);
    render_pass_encoder2000.setVertexBuffer(0, buffer204);
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2060.setBindGroup(0, bind_group206);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2017, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2031.setBindGroup(0, bind_group207);
    device20.queue.submit([]);
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer304, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer304, 0);
    compute_pass_encoder2031.popDebugGroup()
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
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    render_pass_encoder2060.setVertexBuffer(0, buffer202);
    render_pass_encoder2060.setIndexBuffer(buffer2016, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2030.end();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2031.dispatchWorkgroups(100);
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
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group209);
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2050.setBindGroup(0, bind_group2010);
    compute_pass_encoder2030.end();
    render_pass_encoder2030.setVertexBuffer(0, buffer201);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndexedIndirect(buffer2017, 0);
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder2060.end();
    render_pass_encoder2001.popDebugGroup();
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2031.setBindGroup(0, bind_group2011);
    render_pass_encoder2000.end();
    render_pass_encoder2000.setIndexBuffer(buffer2024, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2030.popDebugGroup();
    device70.queue.submit([]);
    compute_pass_encoder2031.end();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder2040.setVertexBuffer(0, buffer208);
    const command_buffer206 = command_encoder206.finish();
    command_encoder100.popDebugGroup()
    device20.queue.submit([command_buffer204, command_buffer206, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2060.end();
    device70.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
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
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder2040.drawIndexed(3);
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
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group2013);
    render_pass_encoder2001.setVertexBuffer(0, buffer202);
    compute_pass_encoder2050.end();
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2060.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.drawIndirect(buffer208, 0);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2001.popDebugGroup();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder2030.end();
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    command_encoder400.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2060.setIndexBuffer(buffer2020, "uint16");
    compute_pass_encoder2060.dispatchWorkgroups(100);
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
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2014);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    command_encoder200.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2001.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2030.end();
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2050.dispatchWorkgroups(100);
    compute_pass_encoder2031.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer205, ]);
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
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2031.setBindGroup(0, bind_group2015);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2030, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2016);
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
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    render_pass_encoder2060.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2030.end();
    render_pass_encoder2001.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2030.drawIndirect(buffer2034, 0);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2018);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2001.drawIndirect(buffer208, 0);
    render_pass_encoder2060.endOcclusionQuery()
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2000.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
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
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2060.setBindGroup(0, bind_group2019);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2040.end();
    compute_pass_encoder2060.end();
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2040.draw(3);
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
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
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

    compute_pass_encoder2050.setBindGroup(0, bind_group2020);
    device30.queue.submit([]);
    render_pass_encoder2001.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2038, 0);
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder2031.dispatchWorkgroups(100);
    compute_pass_encoder2060.popDebugGroup()
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2046, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2047, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2047, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    device10.queue.submit([command_buffer100, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2048, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2048, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2047, 0);
    device20.queue.submit([command_buffer204, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
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
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
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

    compute_pass_encoder2050.setBindGroup(0, bind_group2021);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2027, "uint16");
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder2060.end();
    device50.queue.submit([]);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2051, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2051, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder2050.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2060.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2001.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2052, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2052, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer208, 0);
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer2053, 0);
    compute_pass_encoder3000.popDebugGroup()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer309, 0);
    device70.queue.submit([]);
    compute_pass_encoder2060.end();
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    device10.queue.submit([]);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2041, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2053, 0);
    device10.queue.submit([command_buffer100, ]);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2022);
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder2060.drawIndirect(buffer2024, 0);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2047, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2000.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3010, 0);
    render_pass_encoder2060.drawIndirect(buffer2053, 0);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    render_pass_encoder2040.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2030.drawIndirect(buffer2013, 0);
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
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2060.setBindGroup(0, bind_group2023);
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
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    render_pass_encoder2060.drawIndirect(buffer208, 0);
    render_pass_encoder2040.drawIndirect(buffer2052, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2060.drawIndirect(buffer2052, 0);
    render_pass_encoder2060.drawIndirect(buffer2054, 0);
    compute_pass_encoder2031.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2060.end();
    render_pass_encoder2001.drawIndirect(buffer2049, 0);
    device10.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2001.end();
    device30.queue.submit([]);
    render_pass_encoder2060.end();
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2060.setIndexBuffer(buffer2031, "uint16");
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2060.drawIndirect(buffer2048, 0);
    device10.queue.submit([]);
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    render_pass_encoder2030.drawIndirect(buffer2051, 0);
    render_pass_encoder2040.drawIndirect(buffer2051, 0);
    compute_pass_encoder2050.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([]);
    render_pass_encoder2060.setIndexBuffer(buffer2034, "uint16");
    device10.queue.submit([command_buffer100, ]);
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2026);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2050, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2030.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3013, 0);
    device10.queue.submit([command_buffer100, ]);
    const command_buffer401 = command_encoder401.finish();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3014, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3014, 0);
    compute_pass_encoder2060.end();
    render_pass_encoder2000.drawIndirect(buffer2040, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2030.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2047, 0);
    device20.queue.submit([command_buffer202, ]);
    device70.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2060.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder2030.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2065, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2065, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2060.setIndexBuffer(buffer2023, "uint16");
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3000.popDebugGroup()
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2066, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer2066, 0);
    render_pass_encoder2040.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    render_pass_encoder2001.drawIndirect(buffer2047, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2049, "uint16");
    device80.queue.submit([]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3015, 0);
    compute_pass_encoder2060.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2060.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2047, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, command_buffer206, ]);
    render_pass_encoder2060.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2065, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
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
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
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

    compute_pass_encoder2050.setBindGroup(0, bind_group2027);
    render_pass_encoder2040.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2001.drawIndirect(buffer2052, 0);
    render_pass_encoder2030.drawIndexed(3);
    compute_pass_encoder2050.end();
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2066, 0);
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2069, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer2069, 0);
    device20.queue.submit([command_buffer202, command_buffer204, command_buffer205, ]);
    device20.queue.submit([command_buffer206, ]);
    compute_pass_encoder2030.end();
    compute_pass_encoder3000.end();
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2000.end();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2050.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    render_pass_encoder2060.end();
    render_pass_encoder2060.drawIndirect(buffer2054, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2070, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2070, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2025, 0);
    compute_pass_encoder2060.end();
    device00.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2069, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2071, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2071, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2072, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2072, 0);
    render_pass_encoder2060.end();
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2053, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2024, "uint16");
    compute_pass_encoder2031.end();
    render_pass_encoder2060.drawIndirect(buffer2017, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2001.endOcclusionQuery()
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndirect(buffer2051, 0);
    render_pass_encoder2001.end();
    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2074,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2028);
    render_pass_encoder2001.end();
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2001.end();
    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
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
                    buffer: buffer2075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2076,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2029);
    render_pass_encoder2030.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2048, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2046, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer204, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer208, 0);
    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2078,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2030);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2079, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2079, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2074, "uint16");
    device10.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndirect(buffer2048, 0);
    compute_pass_encoder2031.end();
    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2081,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2031);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2040.end();
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    device70.queue.submit([]);
    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2083,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2032);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2060.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer208, 0);
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2040.end();
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder2040.drawIndexedIndirect(buffer2060, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2055, 0);
    render_pass_encoder2000.drawIndirect(buffer2075, 0);
    render_pass_encoder2001.drawIndirect(buffer2046, 0);
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
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2085,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2033);
    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2087,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2034);
    render_pass_encoder2030.drawIndirect(buffer2013, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2069, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2048, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2053, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2067, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    device10.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2056, 0);
    render_pass_encoder2000.drawIndirect(buffer2087, 0);
    compute_pass_encoder2050.end();
    compute_pass_encoder2000.end();
    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2089,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2035);
    render_pass_encoder2060.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2084, 0);
    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2091,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2036);
    device80.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2065, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2060.end();
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2060.popDebugGroup();
    compute_pass_encoder2050.end();
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2016, 0);
    device80.queue.submit([]);
    render_pass_encoder2001.end();
    compute_pass_encoder2000.end();
    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2093,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2037);
    compute_pass_encoder3000.end();
    device10.queue.submit([]);
    render_pass_encoder2060.drawIndirect(buffer2035, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2000.drawIndirect(buffer2051, 0);
    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2095,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2038);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2000.popDebugGroup()
    device80.queue.submit([]);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder2060.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    compute_pass_encoder2050.end();
    compute_pass_encoder2050.end();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2001.end();
    compute_pass_encoder2050.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2069, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    render_pass_encoder2040.drawIndirect(buffer2072, 0);
    render_pass_encoder2060.endOcclusionQuery()
    render_pass_encoder2001.drawIndirect(buffer2079, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2030.drawIndirect(buffer2048, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2030.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2050.end();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3000.end();
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([]);
    render_pass_encoder2000.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2093, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2047, 0);
    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2097,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2039);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2063, 0);
    device70.queue.submit([]);
    compute_pass_encoder2050.end();
    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2099,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2040);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20100, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20100, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2070, 0);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20101, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20101, 0);
    render_pass_encoder2040.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2001.drawIndirect(buffer2065, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2071, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2038, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2060, "uint16");
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20103,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2041);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    compute_pass_encoder2050.end();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2000.drawIndirect(buffer2059, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2083, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2070, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2060.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2031.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2030.drawIndirect(buffer2071, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2092, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2031.popDebugGroup()
    compute_pass_encoder2060.end();
    device40.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2065, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20105,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2042);
    device10.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2041, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3023, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3023, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    device20.queue.submit([]);
    compute_pass_encoder2031.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer203, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20106, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20106, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer2053, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2060.drawIndirect(buffer2066, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2066, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20107, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20107, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer20103, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2060.drawIndirect(buffer20100, 0);
    compute_pass_encoder2031.end();
    const buffer20108 = device20.createBuffer({
        label: "buffer20108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20109 = device20.createBuffer({
        label: "buffer20109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20109,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2043);
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2000.end();
    render_pass_encoder2060.drawIndirect(buffer2069, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndirect(buffer2069, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2060.end();
    const buffer20110 = device20.createBuffer({
        label: "buffer20110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20111 = device20.createBuffer({
        label: "buffer20111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20111,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2044);
    render_pass_encoder2030.drawIndexedIndirect(buffer2017, 0);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2017, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2010, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2060.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2076, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2060.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2047, 0);
    device20.queue.submit([]);
    render_pass_encoder2001.drawIndirect(buffer2065, 0);
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20112, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20112, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20112, 0);
    render_pass_encoder2030.drawIndirect(buffer2065, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2000.end();
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder2060.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2034, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3024, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3024, 0);
    render_pass_encoder2000.drawIndirect(buffer2050, 0);
    render_pass_encoder2040.drawIndirect(buffer20101, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2069, 0);
    compute_pass_encoder2060.end();
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndirect(buffer2045, 0);
    render_pass_encoder2060.drawIndirect(buffer2061, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20113, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20113, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2051, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer2051, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer2047, 0);
    compute_pass_encoder2050.end();
    compute_pass_encoder2031.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.end();
    const buffer20114 = device20.createBuffer({
        label: "buffer20114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2045 = device20.createBindGroup({
        label: "bind_group2045",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20115,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2045);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device30.queue.submit([]);
    compute_pass_encoder2060.end();
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2065, 0);
    compute_pass_encoder2060.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder2000.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2060.drawIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer203, command_buffer206, ]);
    compute_pass_encoder3000.popDebugGroup()
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20116, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20116, 0);
    render_pass_encoder2040.end();
    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2046 = device20.createBindGroup({
        label: "bind_group2046",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20118,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2046);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer20109, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    render_pass_encoder2001.drawIndirect(buffer2053, 0);
    render_pass_encoder2040.drawIndirect(buffer2037, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer205, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2001.drawIndirect(buffer2081, 0);
    device80.queue.submit([]);
    compute_pass_encoder2050.end();
    render_pass_encoder2001.setIndexBuffer(buffer2073, "uint16");
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20119, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20119, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2098, "uint16");
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20120, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20120, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2087, 0);
    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2047 = device20.createBindGroup({
        label: "bind_group2047",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20122,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2047);
    render_pass_encoder2040.drawIndexedIndirect(buffer20103, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20113, 0);
    compute_pass_encoder2000.end();
    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2048 = device20.createBindGroup({
        label: "bind_group2048",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20124,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2048);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer20116, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20119, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer20113, 0);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2030.end();
    device20.queue.submit([command_buffer200, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20125, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20125, 0);
    render_pass_encoder2060.drawIndirect(buffer2052, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2060, 0);
    compute_pass_encoder2031.end();
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20126, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20126, 0);
    render_pass_encoder2001.drawIndirect(buffer2045, 0);
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20114, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2048, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20127 = device20.createBuffer({
        label: "buffer20127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20127, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20127, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2040.drawIndirect(buffer2037, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2069, 0);
    const buffer20128 = device20.createBuffer({
        label: "buffer20128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2049 = device20.createBindGroup({
        label: "bind_group2049",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20129,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2049);
    render_pass_encoder2030.popDebugGroup();
    device70.queue.submit([]);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer202, command_buffer205, command_buffer206, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3025, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3025, 0);
    device70.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2069, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2074, 0);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2060.popDebugGroup()
    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20131 = device20.createBuffer({
        label: "buffer20131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2050 = device20.createBindGroup({
        label: "bind_group2050",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20131,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2050);
    render_pass_encoder2040.drawIndirect(buffer20112, 0);
    compute_pass_encoder2000.end();
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20132 = device20.createBuffer({
        label: "buffer20132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20132, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20132, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer20133 = device20.createBuffer({
        label: "buffer20133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20134 = device20.createBuffer({
        label: "buffer20134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2051 = device20.createBindGroup({
        label: "bind_group2051",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20134,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2051);
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20119, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer2058, "uint16");
    render_pass_encoder2001.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.draw(3);
    device80.queue.submit([]);
    render_pass_encoder2030.end();
    compute_pass_encoder2050.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer20125, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer2096, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2033, 0);
    compute_pass_encoder2031.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2001.end();
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20135 = device20.createBuffer({
        label: "buffer20135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20135, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20135, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2000.drawIndirect(buffer2069, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2067, "uint16");
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    const buffer20136 = device20.createBuffer({
        label: "buffer20136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20137 = device20.createBuffer({
        label: "buffer20137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2052 = device20.createBindGroup({
        label: "bind_group2052",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20137,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2052);
    compute_pass_encoder2060.end();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2030.end();
    render_pass_encoder2060.setIndexBuffer(buffer20131, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20138 = device20.createBuffer({
        label: "buffer20138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20138, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20138, 0);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder2030.end();
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    compute_pass_encoder2050.end();
    compute_pass_encoder2060.end();
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20139 = device20.createBuffer({
        label: "buffer20139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20139, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20139, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2060.end();
    device30.queue.submit([]);
    device80.queue.submit([]);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2000.drawIndirect(buffer20116, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2030.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer20127, 0);
    render_pass_encoder2060.drawIndirect(buffer20139, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2040.drawIndirect(buffer2047, 0);
    compute_pass_encoder2031.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2051, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3028, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3028, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20112, 0);
    render_pass_encoder2000.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20140 = device20.createBuffer({
        label: "buffer20140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20140, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20140, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20141 = device20.createBuffer({
        label: "buffer20141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20141, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20141, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer20140, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer20100, 0);
    compute_pass_encoder3000.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3029, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2030.drawIndirect(buffer20120, 0);
    const buffer20142 = device20.createBuffer({
        label: "buffer20142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20143 = device20.createBuffer({
        label: "buffer20143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2053 = device20.createBindGroup({
        label: "bind_group2053",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20143,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2053);
    compute_pass_encoder2060.popDebugGroup()
    const buffer20144 = device20.createBuffer({
        label: "buffer20144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20145 = device20.createBuffer({
        label: "buffer20145",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2054 = device20.createBindGroup({
        label: "bind_group2054",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20145,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2054);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2050.popDebugGroup()
    const buffer20146 = device20.createBuffer({
        label: "buffer20146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20147 = device20.createBuffer({
        label: "buffer20147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2055 = device20.createBindGroup({
        label: "bind_group2055",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20147,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2055);
    const buffer20148 = device20.createBuffer({
        label: "buffer20148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20149 = device20.createBuffer({
        label: "buffer20149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2056 = device20.createBindGroup({
        label: "bind_group2056",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20149,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2056);
    device10.queue.submit([]);
    render_pass_encoder2060.drawIndirect(buffer2051, 0);
    compute_pass_encoder3000.end();
    const buffer20150 = device20.createBuffer({
        label: "buffer20150",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20151 = device20.createBuffer({
        label: "buffer20151",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2057 = device20.createBindGroup({
        label: "bind_group2057",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20150,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20151,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2057);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2086, 0);
    render_pass_encoder2060.popDebugGroup();
    compute_pass_encoder2060.dispatchWorkgroups(100);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20152 = device20.createBuffer({
        label: "buffer20152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20152, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20152, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2030.drawIndirect(buffer20103, 0);
    const buffer20153 = device20.createBuffer({
        label: "buffer20153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20154 = device20.createBuffer({
        label: "buffer20154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2058 = device20.createBindGroup({
        label: "bind_group2058",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20154,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2058);
    render_pass_encoder2040.drawIndirect(buffer20127, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2070, 0);
    device10.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2060.setIndexBuffer(buffer20120, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer20112, 0);
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    compute_pass_encoder2030.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer2036, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2060.drawIndirect(buffer20145, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2060.drawIndirect(buffer2075, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20155 = device20.createBuffer({
        label: "buffer20155",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20155, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20155, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2040.drawIndirect(buffer2069, 0);
    render_pass_encoder2040.setIndexBuffer(buffer20112, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2080, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer20141, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer204, command_buffer206, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer20156 = device20.createBuffer({
        label: "buffer20156",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20157 = device20.createBuffer({
        label: "buffer20157",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2059 = device20.createBindGroup({
        label: "bind_group2059",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20156,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20157,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2059);
    render_pass_encoder2060.drawIndirect(buffer2051, 0);
    render_pass_encoder2000.drawIndirect(buffer20116, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2089, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    device70.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2021, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2001.draw(3);
    const buffer20158 = device20.createBuffer({
        label: "buffer20158",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20159 = device20.createBuffer({
        label: "buffer20159",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2060 = device20.createBindGroup({
        label: "bind_group2060",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20158,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20159,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2060);
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2067, 0);
    device80.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    device20.queue.submit([command_buffer204, command_buffer206, ]);
    render_pass_encoder2040.drawIndirect(buffer20106, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2091, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20132, 0);
    render_pass_encoder2040.drawIndirect(buffer20126, 0);
    render_pass_encoder2030.drawIndirect(buffer20106, 0);
    device30.queue.submit([command_buffer301, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3030, 0);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer20152, 0);
    render_pass_encoder2040.setIndexBuffer(buffer20143, "uint16");
    render_pass_encoder2001.drawIndirect(buffer20112, 0);
    render_pass_encoder2000.drawIndirect(buffer20140, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer20147, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20133, 0);
    compute_pass_encoder2060.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2000.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2060.popDebugGroup();
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20160 = device20.createBuffer({
        label: "buffer20160",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20160, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20160, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2060.drawIndirect(buffer2082, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2031.popDebugGroup()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3031, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2030.end();
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    render_pass_encoder2030.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20112, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder3000.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2071, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20161 = device20.createBuffer({
        label: "buffer20161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20161, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20161, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2047, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    render_pass_encoder2000.drawIndirect(buffer2072, 0);
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20162 = device20.createBuffer({
        label: "buffer20162",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20162, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20162, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20163 = device20.createBuffer({
        label: "buffer20163",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20163, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20163, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2061, "uint16");
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20164 = device20.createBuffer({
        label: "buffer20164",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20164, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20164, 0);
    render_pass_encoder2001.endOcclusionQuery()
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer20139, 0);
    render_pass_encoder2060.end();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20143, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2040.drawIndirect(buffer20101, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer20123, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2055, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20165 = device20.createBuffer({
        label: "buffer20165",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20165, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20165, 0);
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2040.drawIndirect(buffer20103, 0);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.end();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder2031.end();
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2060.draw(3);
    render_pass_encoder2060.drawIndirect(buffer2067, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20166 = device20.createBuffer({
        label: "buffer20166",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20166, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20166, 0);
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
    render_pass_encoder2001.setIndexBuffer(buffer20101, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2030.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2040.end();
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20167 = device20.createBuffer({
        label: "buffer20167",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20167, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20167, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20120, 0);
    device70.queue.submit([]);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2040.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2038, "uint16");
    device10.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder2030.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2060.drawIndirect(buffer2066, 0);
    render_pass_encoder2030.drawIndirect(buffer20106, 0);
    render_pass_encoder2040.drawIndirect(buffer20125, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2060.end();
    render_pass_encoder2060.drawIndirect(buffer2071, 0);
    render_pass_encoder2000.popDebugGroup();
    device70.queue.submit([]);
    device80.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20102, "uint16");
    render_pass_encoder2060.end();
    render_pass_encoder2040.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer20167, 0);
    device80.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer20163, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2040.drawIndirect(buffer20160, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2030, 0);
    device70.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer2078, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2046, 0);
    device20.queue.submit([command_buffer202, command_buffer205, command_buffer206, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer20140, 0);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer20136, "uint16");
    compute_pass_encoder2031.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2060.end();
    render_pass_encoder2030.drawIndirect(buffer20161, 0);
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    const buffer20168 = device20.createBuffer({
        label: "buffer20168",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20169 = device20.createBuffer({
        label: "buffer20169",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2061 = device20.createBindGroup({
        label: "bind_group2061",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20168,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20169,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2061);
    render_pass_encoder2040.drawIndirect(buffer20112, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer20167, 0);
    const buffer20170 = device20.createBuffer({
        label: "buffer20170",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20171 = device20.createBuffer({
        label: "buffer20171",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2062 = device20.createBindGroup({
        label: "bind_group2062",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20170,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20171,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2062);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer20123, 0);
    render_pass_encoder2030.drawIndirect(buffer2061, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2079, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndirect(buffer20106, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2040.drawIndirect(buffer20119, 0);
    render_pass_encoder2060.drawIndirect(buffer20124, 0);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20172 = device20.createBuffer({
        label: "buffer20172",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20172, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20172, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder2060.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer20136, 0);
    render_pass_encoder2060.drawIndirect(buffer20100, 0);
    device30.queue.submit([command_buffer300, ]);
    const buffer20173 = device20.createBuffer({
        label: "buffer20173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20174 = device20.createBuffer({
        label: "buffer20174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2063 = device20.createBindGroup({
        label: "bind_group2063",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20174,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2063);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer20163, 0);
    render_pass_encoder2060.drawIndirect(buffer2051, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2030.drawIndirect(buffer2070, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2060.drawIndirect(buffer20140, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer20165, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer20112, 0);
    render_pass_encoder2030.drawIndirect(buffer2069, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2000.setIndexBuffer(buffer2053, "uint16");
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2030.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20175 = device20.createBuffer({
        label: "buffer20175",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20175, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20175, 0);
    const buffer20176 = device20.createBuffer({
        label: "buffer20176",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20177 = device20.createBuffer({
        label: "buffer20177",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2064 = device20.createBindGroup({
        label: "bind_group2064",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20176,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20177,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2064);
    compute_pass_encoder2000.end();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2060.draw(3);
    compute_pass_encoder2031.popDebugGroup()
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20178 = device20.createBuffer({
        label: "buffer20178",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20178, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20178, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20100, 0);
    device20.queue.submit([command_buffer203, command_buffer206, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer20116, 0);
    compute_pass_encoder2060.end();
    render_pass_encoder2001.drawIndirect(buffer20126, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer20178, 0);
    compute_pass_encoder2031.end();
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2030.end();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2030.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.drawIndirect(buffer20166, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndirect(buffer20163, 0);
    render_pass_encoder2030.drawIndirect(buffer20142, 0);
    device30.queue.submit([]);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2040.drawIndirect(buffer20108, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer20166, 0);
    render_pass_encoder2030.drawIndirect(buffer20135, 0);
    const buffer20179 = device20.createBuffer({
        label: "buffer20179",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20180 = device20.createBuffer({
        label: "buffer20180",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2065 = device20.createBindGroup({
        label: "bind_group2065",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20179,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20180,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2065);
    render_pass_encoder2000.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20181 = device20.createBuffer({
        label: "buffer20181",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20181, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20181, 0);
    compute_pass_encoder2060.end();
    render_pass_encoder2000.setIndexBuffer(buffer2078, "uint16");
    compute_pass_encoder2030.end();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20182 = device20.createBuffer({
        label: "buffer20182",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20182, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20182, 0);
    compute_pass_encoder2030.end();
    const buffer20183 = device20.createBuffer({
        label: "buffer20183",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20184 = device20.createBuffer({
        label: "buffer20184",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2066 = device20.createBindGroup({
        label: "bind_group2066",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20183,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20184,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2066);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20185 = device20.createBuffer({
        label: "buffer20185",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20185, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20185, 0);
    device00.queue.submit([]);
    render_pass_encoder2060.drawIndexedIndirect(buffer20167, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20186 = device20.createBuffer({
        label: "buffer20186",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20186, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20186, 0);
    compute_pass_encoder2030.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.drawIndirect(buffer2071, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20109, 0);
    const buffer20187 = device20.createBuffer({
        label: "buffer20187",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20188 = device20.createBuffer({
        label: "buffer20188",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2067 = device20.createBindGroup({
        label: "bind_group2067",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20187,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20188,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2067);
    compute_pass_encoder3000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2040.drawIndirect(buffer2013, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20138, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.end();
    render_pass_encoder2060.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    const buffer20189 = device20.createBuffer({
        label: "buffer20189",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20190 = device20.createBuffer({
        label: "buffer20190",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2068 = device20.createBindGroup({
        label: "bind_group2068",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20189,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20190,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2068);
    render_pass_encoder2040.drawIndirect(buffer2077, 0);
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer20106, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2040.drawIndirect(buffer20160, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20191 = device20.createBuffer({
        label: "buffer20191",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20191, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20191, 0);
    render_pass_encoder2030.drawIndirect(buffer20147, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer20138, 0);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndexedIndirect(buffer20141, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20191, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3034, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3034, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20192 = device20.createBuffer({
        label: "buffer20192",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20192, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20192, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    device20.queue.submit([command_buffer205, ]);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20193 = device20.createBuffer({
        label: "buffer20193",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20193, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20193, 0);
    const buffer20194 = device20.createBuffer({
        label: "buffer20194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20195 = device20.createBuffer({
        label: "buffer20195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2069 = device20.createBindGroup({
        label: "bind_group2069",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20195,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2069);
    const buffer20196 = device20.createBuffer({
        label: "buffer20196",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20197 = device20.createBuffer({
        label: "buffer20197",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2070 = device20.createBindGroup({
        label: "bind_group2070",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20196,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20197,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2070);
    render_pass_encoder2040.drawIndexedIndirect(buffer20155, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20136, 0);
    render_pass_encoder2000.popDebugGroup();
    const buffer20198 = device20.createBuffer({
        label: "buffer20198",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20199 = device20.createBuffer({
        label: "buffer20199",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2071 = device20.createBindGroup({
        label: "bind_group2071",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20198,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20199,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2071);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2001.setIndexBuffer(buffer20159, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndirect(buffer20172, 0);
    compute_pass_encoder2050.end();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2001.drawIndirect(buffer2047, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20180, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20164, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer20192, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2001.setIndexBuffer(buffer20147, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer20161, 0);
    render_pass_encoder2040.drawIndirect(buffer20120, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2089, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer20166, 0);
    render_pass_encoder2000.drawIndirect(buffer20173, 0);
    render_pass_encoder2060.drawIndirect(buffer20166, 0);
    render_pass_encoder2040.popDebugGroup();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3035, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3035, 0);
    device30.queue.submit([command_buffer300, ]);
    device80.queue.submit([]);
    render_pass_encoder2040.setIndexBuffer(buffer20182, "uint16");
    device10.queue.submit([]);
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer20167, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer20152, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    device10.queue.submit([]);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20200 = device20.createBuffer({
        label: "buffer20200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20200, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20200, 0);
    render_pass_encoder2040.drawIndirect(buffer20160, 0);
    render_pass_encoder2001.drawIndirect(buffer2062, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2086, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer20161, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2060.popDebugGroup();
    compute_pass_encoder2060.end();
    render_pass_encoder2001.drawIndirect(buffer20140, 0);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device10.queue.submit([]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2055, 0);
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder3000.end();
    render_pass_encoder2060.endOcclusionQuery()
    const buffer20201 = device20.createBuffer({
        label: "buffer20201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20202 = device20.createBuffer({
        label: "buffer20202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2072 = device20.createBindGroup({
        label: "bind_group2072",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20202,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2072);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer2099, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer20200, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20167, 0);
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20203 = device20.createBuffer({
        label: "buffer20203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20203, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20203, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20138, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2071, 0);
    const buffer20204 = device20.createBuffer({
        label: "buffer20204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20205 = device20.createBuffer({
        label: "buffer20205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2073 = device20.createBindGroup({
        label: "bind_group2073",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20205,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2073);
    render_pass_encoder2040.drawIndirect(buffer20141, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer20193, 0);
    render_pass_encoder2030.popDebugGroup();
    const buffer20206 = device20.createBuffer({
        label: "buffer20206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20207 = device20.createBuffer({
        label: "buffer20207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2074 = device20.createBindGroup({
        label: "bind_group2074",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20207,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2074);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20208 = device20.createBuffer({
        label: "buffer20208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20208, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20208, 0);
    render_pass_encoder2060.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20209 = device20.createBuffer({
        label: "buffer20209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20209, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20209, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20210 = device20.createBuffer({
        label: "buffer20210",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20210, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20210, 0);
    render_pass_encoder2040.drawIndirect(buffer20100, 0);
    const buffer20211 = device20.createBuffer({
        label: "buffer20211",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20212 = device20.createBuffer({
        label: "buffer20212",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2075 = device20.createBindGroup({
        label: "bind_group2075",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20211,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20212,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2075);
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    render_pass_encoder2001.drawIndexedIndirect(buffer20164, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2050.end();
    compute_pass_encoder2030.end();
    render_pass_encoder2060.drawIndirect(buffer20164, 0);
    device20.queue.submit([command_buffer203, command_buffer206, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer20160, "uint16");
    device80.queue.submit([]);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2060.drawIndirect(buffer2065, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20213 = device20.createBuffer({
        label: "buffer20213",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20213, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20213, 0);
    render_pass_encoder2040.drawIndirect(buffer20126, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndirect(buffer20175, 0);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer20203, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20137, 0);
    const buffer20214 = device20.createBuffer({
        label: "buffer20214",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20215 = device20.createBuffer({
        label: "buffer20215",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2076 = device20.createBindGroup({
        label: "bind_group2076",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20214,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20215,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2076);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer20116, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer20161, 0);
    device30.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2053, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer20127, 0);
    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3039,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    render_pass_encoder2060.end();
    device80.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer200, command_buffer205, command_buffer206, ]);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20216 = device20.createBuffer({
        label: "buffer20216",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20216, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20216, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2060.drawIndirect(buffer2065, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer20127, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20101, 0);
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2071, 0);
    const buffer20217 = device20.createBuffer({
        label: "buffer20217",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20218 = device20.createBuffer({
        label: "buffer20218",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2077 = device20.createBindGroup({
        label: "bind_group2077",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20217,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20218,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2077);
    render_pass_encoder2060.drawIndirect(buffer20162, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3041,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3011);
    compute_pass_encoder2030.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20219 = device20.createBuffer({
        label: "buffer20219",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20219, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20219, 0);
    compute_pass_encoder2031.dispatchWorkgroups(100);
    render_pass_encoder2001.end();
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    render_pass_encoder2001.drawIndirect(buffer20172, 0);
    compute_pass_encoder2000.end();
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    render_pass_encoder2060.drawIndirect(buffer2072, 0);
    device80.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3044, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3044, 0);
    compute_pass_encoder2060.end();
    render_pass_encoder2060.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer20120, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2081, "uint16");
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20220 = device20.createBuffer({
        label: "buffer20220",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20220, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20220, 0);
    render_pass_encoder2040.drawIndirect(buffer20203, 0);
    render_pass_encoder2000.drawIndirect(buffer2053, 0);
    render_pass_encoder2060.popDebugGroup();
    compute_pass_encoder2050.end();
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2031.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer20178, 0);
    const buffer20221 = device20.createBuffer({
        label: "buffer20221",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20222 = device20.createBuffer({
        label: "buffer20222",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2078 = device20.createBindGroup({
        label: "bind_group2078",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20221,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20222,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2078);
    const buffer20223 = device20.createBuffer({
        label: "buffer20223",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20224 = device20.createBuffer({
        label: "buffer20224",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2079 = device20.createBindGroup({
        label: "bind_group2079",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20223,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20224,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2079);
    render_pass_encoder2060.setIndexBuffer(buffer20120, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2079, 0);
    render_pass_encoder2001.drawIndirect(buffer20100, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer20205, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2094, "uint16");
    render_pass_encoder2060.drawIndirect(buffer20167, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer20138, 0);
    const buffer20225 = device20.createBuffer({
        label: "buffer20225",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20226 = device20.createBuffer({
        label: "buffer20226",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2080 = device20.createBindGroup({
        label: "bind_group2080",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20225,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20226,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2080);
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndexedIndirect(buffer20208, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer20113, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer20120, 0);
    render_pass_encoder2001.drawIndirect(buffer20221, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer20166, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20119, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20209, 0);
    device30.queue.submit([]);
    render_pass_encoder2060.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    const buffer20227 = device20.createBuffer({
        label: "buffer20227",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20228 = device20.createBuffer({
        label: "buffer20228",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2081 = device20.createBindGroup({
        label: "bind_group2081",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20227,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20228,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2081);
    render_pass_encoder2040.drawIndirect(buffer2053, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer204, command_buffer205, command_buffer206, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer20220, 0);
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20229 = device20.createBuffer({
        label: "buffer20229",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20229, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20229, 0);
    device20.queue.submit([command_buffer202, command_buffer203, command_buffer206, ]);
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2060.setIndexBuffer(buffer2018, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer20210, 0);
    render_pass_encoder2000.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2060.drawIndirect(buffer20152, 0);
    compute_pass_encoder2031.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer20119, 0);
    device00.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer20101, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer20116, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20135, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer20193, 0);
    render_pass_encoder2030.drawIndirect(buffer20152, 0);
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2060.drawIndirect(buffer20119, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3045, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3045, 0);
    compute_pass_encoder2050.end();
    render_pass_encoder2040.setIndexBuffer(buffer20147, "uint16");
    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3047,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3013);
    render_pass_encoder2030.drawIndirect(buffer20185, 0);
    const buffer20230 = device20.createBuffer({
        label: "buffer20230",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20231 = device20.createBuffer({
        label: "buffer20231",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2082 = device20.createBindGroup({
        label: "bind_group2082",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20230,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20231,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2082);
    const buffer20232 = device20.createBuffer({
        label: "buffer20232",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20233 = device20.createBuffer({
        label: "buffer20233",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2083 = device20.createBindGroup({
        label: "bind_group2083",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20232,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20233,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2083);
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device70.queue.submit([]);
    compute_pass_encoder2030.end();
    render_pass_encoder2001.drawIndirect(buffer20206, 0);
    render_pass_encoder2060.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2040.end();
    render_pass_encoder2060.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2060.drawIndirect(buffer20127, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20193, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2054, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    compute_pass_encoder2060.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2053, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2053, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2001.end();
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2040.drawIndirect(buffer20155, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20148, "uint16");
    render_pass_encoder2040.drawIndirect(buffer20174, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2073, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3048, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3048, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer20161, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20132, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20107, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2040.drawIndirect(buffer2072, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2029, 0);
    const buffer20234 = device20.createBuffer({
        label: "buffer20234",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20235 = device20.createBuffer({
        label: "buffer20235",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2084 = device20.createBindGroup({
        label: "bind_group2084",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20234,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20235,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2084);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer20163, 0);
    device20.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3050,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3014);
    render_pass_encoder2001.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20126, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer20139, 0);
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    device30.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer20139, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2001.drawIndirect(buffer20191, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    const buffer20236 = device20.createBuffer({
        label: "buffer20236",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20237 = device20.createBuffer({
        label: "buffer20237",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2085 = device20.createBindGroup({
        label: "bind_group2085",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20236,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20237,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2085);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer20181, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20160, 0);
    render_pass_encoder2001.drawIndirect(buffer20160, 0);
    render_pass_encoder2060.drawIndirect(buffer2054, 0);
    render_pass_encoder2001.drawIndirect(buffer2053, 0);
    const buffer20238 = device20.createBuffer({
        label: "buffer20238",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20239 = device20.createBuffer({
        label: "buffer20239",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2086 = device20.createBindGroup({
        label: "bind_group2086",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20238,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20239,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2086);
    const buffer20240 = device20.createBuffer({
        label: "buffer20240",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20241 = device20.createBuffer({
        label: "buffer20241",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2087 = device20.createBindGroup({
        label: "bind_group2087",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20240,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20241,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2087);
    render_pass_encoder2060.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20218, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2071, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20242 = device20.createBuffer({
        label: "buffer20242",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20242, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20242, 0);
    render_pass_encoder2040.drawIndirect(buffer20220, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20243 = device20.createBuffer({
        label: "buffer20243",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20243, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20243, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20244 = device20.createBuffer({
        label: "buffer20244",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20244, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20244, 0);
    render_pass_encoder2001.drawIndirect(buffer2065, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    const buffer20245 = device20.createBuffer({
        label: "buffer20245",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20246 = device20.createBuffer({
        label: "buffer20246",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2088 = device20.createBindGroup({
        label: "bind_group2088",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20245,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20246,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2088);
    render_pass_encoder2060.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20135, 0);
    render_pass_encoder2001.drawIndirect(buffer2029, 0);
    device20.queue.submit([command_buffer203, ]);
    const buffer20247 = device20.createBuffer({
        label: "buffer20247",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20248 = device20.createBuffer({
        label: "buffer20248",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2089 = device20.createBindGroup({
        label: "bind_group2089",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20247,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20248,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2089);
    const buffer20249 = device20.createBuffer({
        label: "buffer20249",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20250 = device20.createBuffer({
        label: "buffer20250",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2090 = device20.createBindGroup({
        label: "bind_group2090",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20249,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20250,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2090);
    render_pass_encoder2040.drawIndexedIndirect(buffer20164, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20231, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2000.endOcclusionQuery()
    compute_pass_encoder2031.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2001.setIndexBuffer(buffer20124, "uint16");
    const buffer20251 = device20.createBuffer({
        label: "buffer20251",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20252 = device20.createBuffer({
        label: "buffer20252",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2091 = device20.createBindGroup({
        label: "bind_group2091",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20251,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20252,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2091);
    render_pass_encoder2000.setIndexBuffer(buffer20205, "uint16");
    render_pass_encoder2000.drawIndirect(buffer20139, 0);
    render_pass_encoder2060.drawIndirect(buffer20209, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2031.dispatchWorkgroups(100);
    compute_pass_encoder2050.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer20191, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20166, "uint16");
    const buffer20253 = device20.createBuffer({
        label: "buffer20253",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20254 = device20.createBuffer({
        label: "buffer20254",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2092 = device20.createBindGroup({
        label: "bind_group2092",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20253,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20254,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2092);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2060.end();
    render_pass_encoder2000.drawIndirect(buffer2088, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20138, 0);
    render_pass_encoder2040.drawIndirect(buffer20208, 0);
    device20.queue.submit([command_buffer202, command_buffer205, command_buffer206, ]);
    render_pass_encoder2060.drawIndirect(buffer20112, 0);
    const buffer20255 = device20.createBuffer({
        label: "buffer20255",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20256 = device20.createBuffer({
        label: "buffer20256",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2093 = device20.createBindGroup({
        label: "bind_group2093",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20255,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20256,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2093);
    render_pass_encoder2040.drawIndexedIndirect(buffer2070, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2000.end();
    const buffer20257 = device20.createBuffer({
        label: "buffer20257",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20258 = device20.createBuffer({
        label: "buffer20258",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2094 = device20.createBindGroup({
        label: "bind_group2094",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20257,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20258,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2094);
    render_pass_encoder2040.drawIndirect(buffer2090, 0);
    render_pass_encoder2030.drawIndirect(buffer2049, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer20127, 0);
    const uint32_2031 = new Uint32Array(3);

    uint32_2031[0] = 100;
    uint32_2031[1] = 1;
    uint32_2031[2] = 1;

    const buffer20259 = device20.createBuffer({
        label: "buffer20259",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20259, 0, uint32_2031, 0, uint32_2031.length);

    compute_pass_encoder2031.dispatchWorkgroupsIndirect(buffer20259, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20247, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2092, "uint16");
    compute_pass_encoder2030.end();
    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3052,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3015);
    render_pass_encoder2060.drawIndirect(buffer20175, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer20107, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20260 = device20.createBuffer({
        label: "buffer20260",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20260, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20260, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer20129, 0);
    render_pass_encoder2001.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20261 = device20.createBuffer({
        label: "buffer20261",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20261, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20261, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20116, 0);
    const buffer20262 = device20.createBuffer({
        label: "buffer20262",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20263 = device20.createBuffer({
        label: "buffer20263",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2095 = device20.createBindGroup({
        label: "bind_group2095",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20262,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20263,
                },
            },
        ],
    });

    compute_pass_encoder2031.setBindGroup(0, bind_group2095);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.end();
    compute_pass_encoder2031.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer20210, 0);
    device30.queue.submit([command_buffer300, ]);
}