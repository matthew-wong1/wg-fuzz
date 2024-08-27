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
    const array0 = new Float32Array([0.25, 0.75, -0.5, -1.0, -0.25, 0.0, 0.75, 0.0, -0.75, 1.0, 0.5, -0.25, 0.75, 0.0, -0.75, 0.5, 0.5, 0.25, -1.0, 0.0, 0.75, 0.25, -0.5, -0.5, 0.5, -0.5, 1.0, -1.0, 0.0, 1.0, 0.25, -0.75, -0.5, 1.0, 0.75, 1.0, 0.25, -0.75, -0.25, 1.0, 1.0, 0.75, -0.25, 0.25, 0.5, -1.0, -0.25, 0.5, -1.0, -1.0, 0.5, 0.5, 0.5, -0.75, 0.5, 0.5, 0.0, -0.75, 0.75, -0.75, -0.5, -0.25, -0.5, 0.75, 0.75, -0.75, -0.25, 0.25, 1.0, -0.5, -0.5, 0.0, -0.75, 0.75, -0.5, -0.25, -0.75, -0.25, -0.25, 1.0, 1.0, 1.0, 0.75, 0.25, 0.0, -0.25, 1.0, 0.25, 0.5, 0.75, 0.5, -1.0, 0.5, -0.75, -1.0, -1.0, -0.75, -1.0, 0.5, 1.0, ]);
    
    const array1 = new Float32Array([0.5, -1.0, 0.75, 1.0, 0.5, 0.25, 0.25, -0.75, 0.0, 0.0, 0.25, 1.0, -0.25, -1.0, -1.0, 0.25, -1.0, -0.25, 0.75, -1.0, 1.0, 0.25, -0.5, -0.75, 0.75, -0.25, 0.75, 0.0, -0.75, 0.0, 0.5, 0.5, -0.75, -0.75, -0.25, 1.0, 0.5, -0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 0.75, -0.75, 0.25, 0.0, 0.25, -0.75, -0.25, 0.5, -1.0, 0.0, -1.0, 1.0, -1.0, -0.25, -0.75, -0.25, -0.75, 0.5, -0.5, 0.75, 0.0, 0.5, -0.75, 0.75, -0.5, 0.5, 0.75, 1.0, 0.25, 0.75, 0.75, -0.75, 0.5, -0.75, 0.25, 0.5, 0.0, 0.5, 0.5, -0.5, 0.75, -0.75, -0.75, 1.0, 0.75, -0.75, 0.75, 0.5, 1.0, 0.0, 0.75, -0.25, -0.75, -1.0, 1.0, 0.75, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
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
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    query001.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer301.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer400.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.popDebugGroup();
    device20.pushErrorScope("validation");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder401.clearBuffer(buffer400);
    
    query400.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-0.5, 1.0, -1.0, -0.75, -0.5, 0.75, -0.5, 0.75, 0.5, -0.25, -1.0, 0.5, -0.5, 0.25, -0.5, -0.75, 0.5, 0.25, 0.5, 1.0, -0.25, 0.75, 0.0, 1.0, 0.25, 0.5, 0.25, -0.25, 0.0, 1.0, 0.0, -0.75, 0.0, 0.25, -0.75, 0.5, 0.75, 0.75, 0.75, -0.5, 0.0, 0.5, -0.25, 0.5, 0.25, 0.75, -0.5, 0.75, -0.75, 1.0, 0.75, -1.0, 0.75, -0.5, 0.75, 0.5, 0.25, -0.75, 0.0, 0.75, 0.75, -0.75, 0.0, -0.25, 0.0, 0.75, 0.0, 0.0, -0.75, 0.5, 0.25, 0.0, -0.75, 0.5, -0.75, 0.0, -1.0, 0.25, -0.75, -0.25, -0.25, 1.0, -1.0, -0.5, 0.25, -1.0, -0.75, 0.0, 0.25, 1.0, -0.5, -1.0, -0.5, -1.0, 0.0, 0.5, 1.0, -1.0, -0.25, -0.25, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const array3 = new Float32Array([-0.5, 0.75, 0.5, 1.0, 0.0, 0.75, 0.0, -1.0, 0.25, 0.0, 0.25, -0.75, -1.0, -0.75, 0.75, 0.0, 0.75, 1.0, -0.75, -0.5, 0.0, 0.25, 1.0, 0.25, -0.25, -0.5, 1.0, -0.25, -0.25, 0.25, -0.5, 0.75, 0.75, 0.5, 0.5, 0.75, 0.25, 0.75, 0.75, -1.0, -0.5, -1.0, -0.75, 0.75, 0.75, -0.75, 1.0, 0.0, -0.25, -0.75, -1.0, -0.25, 0.0, 0.75, 0.5, 1.0, -0.5, -0.75, 0.25, -0.75, 0.25, 1.0, -0.75, -0.5, -0.25, 0.75, -1.0, 0.5, -1.0, 0.5, 0.5, -0.25, -0.75, 0.25, -0.25, -0.75, 0.5, 0.75, 0.25, 0.75, 1.0, -0.5, 0.75, 0.0, 0.5, 1.0, 0.25, 0.25, -0.75, -0.5, 0.75, -0.75, 0.75, 0.5, -0.75, -0.75, 0.75, 1.0, 0.25, -1.0, ]);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    device50.pushErrorScope("internal");
    
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query501.destroy()
    query500.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.pushErrorScope("validation");
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    query001.destroy()
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.setPipeline(render_pipeline501);
    
    query501.destroy()
    buffer402.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    texture400.destroy();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.pushErrorScope("internal");
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    texture502.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    
    compute_pass_encoder5000.insertDebugMarker("marker")
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
        occlusionQuerySet: query402
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_pass_encoder4010.setStencilReference(1);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder4010.setStencilReference(1);
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    device50.pushErrorScope("validation");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query501
    });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.pushErrorScope("validation");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder5000.popDebugGroup()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    query401.destroy()
    query100.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer500.destroy()
    buffer501.destroy()
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    command_encoder501.insertDebugMarker("mymarker");
    const render_pass_encoder5021 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query500
    });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer403,
        0
    )
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder5021.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
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
    
    
    command_encoder503.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder501.setVertexBuffer(0, buffer503);
    device50.queue.writeBuffer(buffer503, 0, array0, 0, array0.length);
    query402.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder503.copyBufferToBuffer(
        buffer503,
        0,
        buffer503,
        0,
        400
    );
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout502,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder4010.setStencilReference(1);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5012,
            },
        ],
        occlusionQuerySet: query501
    });
    query402.destroy()
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    texture401.destroy();
    device50.queue.writeBuffer(buffer503, 0, array0, 0, array0.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
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
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5021.setPipeline(render_pipeline501);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5021.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    compute_pass_encoder5001.setPipeline(compute_pipeline501);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    query402.destroy()
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
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
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

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    device40.pushErrorScope("out-of-memory");
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder5020.pushDebugGroup("group_marker");
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    buffer502.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder501.copyTextureToBuffer(
        {
            texture: texture502
        },
        {
            buffer: buffer503
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder5030.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder5000.insertDebugMarker("marker");
    render_pass_encoder5010.setPipeline(render_pipeline501);
    compute_pass_encoder5010.setPipeline(compute_pipeline500);
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.setPipeline(render_pipeline502);
    
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view5013 = texture501.createView({ label: "texture_view5013" });
    buffer404.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5000.setPipeline(render_pipeline501);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_buffer501 = command_encoder501.finish();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder5020.setPipeline(render_pipeline500);
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    
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
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group502);
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    buffer401.destroy()
    
    render_pass_encoder5010.pushDebugGroup("group_marker");
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
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group503);
    render_pass_encoder5030.insertDebugMarker("marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder4010.setStencilReference(1);
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
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
    render_pass_encoder5030.setStencilReference(1);
    query405.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder4020.executeBundles([render_bundle_encoder400, ])
    buffer506.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    texture501.destroy();
    
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder500.setVertexBuffer(0, buffer503);
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
        occlusionQuerySet: query405
    });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5012,
            },
        ],
        occlusionQuerySet: query501
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query404
    });
    compute_pass_encoder4030.insertDebugMarker("marker")
    render_pass_encoder5001.setPipeline(render_pipeline502);
    buffer505.destroy()
    query405.destroy()
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query503
    });
    render_pass_encoder4021.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder5030.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5001.pushDebugGroup("group_marker");
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const render_pass_encoder5051 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5051",
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
    
    render_pass_encoder5001.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4040.insertDebugMarker("marker");
    
    
    
    
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
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
    render_pass_encoder5050.setPipeline(render_pipeline502);
    buffer507.destroy()
    buffer5011.destroy()
    render_pass_encoder5000.pushDebugGroup("group_marker");
    render_pass_encoder5040.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_bundle_encoder500.drawIndirect(buffer509, 0);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query503.destroy()
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    render_pass_encoder5021.setStencilReference(1);
    buffer504.destroy()
    render_pass_encoder5010.setStencilReference(1);
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder501.draw(3);
    compute_pass_encoder5001.pushDebugGroup("group_marker")
    
    render_pass_encoder5051.beginOcclusionQuery(0)
    render_pass_encoder5021.beginOcclusionQuery(0)
    render_pass_encoder4040.executeBundles([])
    command_encoder406.copyBufferToTexture(
        {
            buffer: buffer403
        },
        {
            texture: texture402
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder5051.setPipeline(render_pipeline503);
    render_bundle_encoder500.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query401.destroy()
    query503.destroy()
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    command_encoder405.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
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
        occlusionQuerySet: query401
    });
    command_encoder505.resolveQuerySet(
        query501,
        0,
        32,
        buffer506,
        0
    )
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const render_pass_encoder4060 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4060",
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
    
    texture001.destroy();
    render_bundle_encoder501.popDebugGroup();
    command_encoder504.clearBuffer(buffer503);
    compute_pass_encoder5010.popDebugGroup()
    render_bundle_encoder400.popDebugGroup();
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    
    render_pass_encoder5021.pushDebugGroup("group_marker");
    query501.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5021.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    render_pass_encoder4060.setStencilReference(1);
    command_encoder503.pushDebugGroup("mygroupmarker")
    render_pass_encoder4060.setStencilReference(1);
    
    const command_buffer403 = command_encoder403.finish();
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    render_pass_encoder4060.executeBundles([])
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_pass_encoder5030.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder5021.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5010.end();
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    command_encoder402.popDebugGroup()
    render_pass_encoder5040.executeBundles([render_bundle_encoder501, ])
    render_pass_encoder5051.pushDebugGroup("group_marker");
    render_pass_encoder4021.beginOcclusionQuery(0)
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder5041 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query501
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query400.destroy()
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5041.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    
    render_bundle_encoder500.finish();
    command_encoder503.popDebugGroup()
    render_pass_encoder4050.executeBundles([render_bundle_encoder400, render_bundle_encoder401, ])
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
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline502.getBindGroupLayout(0),
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

    render_pass_encoder5001.setBindGroup(0, bind_group504);
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
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_pass_encoder5021.setBindGroup(0, bind_group505);
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group506);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5051.endOcclusionQuery()
    render_pass_encoder5041.setPipeline(render_pipeline502);
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
        
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5001.setBindGroup(0, bind_group507);
    render_pass_encoder5001.setVertexBuffer(0, buffer504);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder5010.endOcclusionQuery()
    compute_pass_encoder4030.setPipeline(compute_pipeline400);
    render_pass_encoder5000.setVertexBuffer(0, buffer507);
    render_pass_encoder5021.popDebugGroup();
    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5021,
                },
            },
        ],
    });

    render_pass_encoder5051.setBindGroup(0, bind_group508);
    render_pass_encoder4010.popDebugGroup();
    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group509 = device50.createBindGroup({
        label: "bind_group509",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5023,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group509);
    const buffer5024 = device50.createBuffer({
        label: "buffer5024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5025 = device50.createBuffer({
        label: "buffer5025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5010 = device50.createBindGroup({
        label: "bind_group5010",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5025,
                },
            },
        ],
    });

    render_pass_encoder5041.setBindGroup(0, bind_group5010);
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer5026 = device50.createBuffer({
        label: "buffer5026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5026, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer5026, 0);
    render_pass_encoder4010.popDebugGroup();
    const command_buffer405 = command_encoder405.finish();
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder5001.popDebugGroup()
    device40.queue.submit([command_buffer405, ]);
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

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    render_pass_encoder5001.draw(3);
    render_pass_encoder5000.setIndexBuffer(buffer509, "uint16");
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer407, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer407, 0);
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5041.setVertexBuffer(0, buffer5012);
    render_pass_encoder5000.drawIndexedIndirect(buffer5015, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5051.setVertexBuffer(0, buffer5025);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5041.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5051.draw(3);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5041.endOcclusionQuery()
    render_pass_encoder5041.drawIndexed(3);
    render_pass_encoder5051.drawIndirect(buffer500, 0);
    command_encoder401.popDebugGroup()
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5051.popDebugGroup();
    render_pass_encoder5051.end();
    render_pass_encoder5051.drawIndirect(buffer5015, 0);
    render_pass_encoder5020.endOcclusionQuery()
    render_pass_encoder5001.setIndexBuffer(buffer508, "uint16");
    compute_pass_encoder4010.end();
    compute_pass_encoder5001.end();
    render_pass_encoder5021.setVertexBuffer(0, buffer5021);
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4030.setBindGroup(0, bind_group402);
    render_pass_encoder5000.end();
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
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group403);
    device40.queue.submit([command_buffer403, ]);
    const buffer5027 = device50.createBuffer({
        label: "buffer5027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5028 = device50.createBuffer({
        label: "buffer5028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5011 = device50.createBindGroup({
        label: "bind_group5011",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5028,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group5011);
    render_pass_encoder5021.setIndexBuffer(buffer5010, "uint16");
    render_pass_encoder5021.drawIndexedIndirect(buffer5010, 0);
    device50.queue.submit([command_buffer502, ]);
    const buffer5029 = device50.createBuffer({
        label: "buffer5029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5030 = device50.createBuffer({
        label: "buffer5030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5012 = device50.createBindGroup({
        label: "bind_group5012",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5030,
                },
            },
        ],
    });

    render_pass_encoder5050.setBindGroup(0, bind_group5012);
    render_pass_encoder5010.popDebugGroup();
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
    render_pass_encoder5051.drawIndirect(buffer5026, 0);
    render_pass_encoder5041.endOcclusionQuery()
    render_pass_encoder5000.end();
    render_pass_encoder4020.popDebugGroup();
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4030.setBindGroup(0, bind_group404);
    const buffer5031 = device50.createBuffer({
        label: "buffer5031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5032 = device50.createBuffer({
        label: "buffer5032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5013 = device50.createBindGroup({
        label: "bind_group5013",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5032,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group5013);
    render_pass_encoder5000.drawIndexedIndirect(buffer5021, 0);
    render_pass_encoder5020.setVertexBuffer(0, buffer507);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder5041.end();
    compute_pass_encoder4000.end();
    render_pass_encoder5050.setVertexBuffer(0, buffer5016);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5050.drawIndirect(buffer502, 0);
    render_pass_encoder5020.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder4060.endOcclusionQuery()
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5050.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer5026, 0);
    render_pass_encoder5040.setIndexBuffer(buffer509, "uint16");
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder5040.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder5000.drawIndirect(buffer503, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder5021.end();
    render_pass_encoder5021.setIndexBuffer(buffer5012, "uint16");
    render_pass_encoder5030.setVertexBuffer(0, buffer5023);
    render_pass_encoder5030.draw(3);
    render_pass_encoder5030.draw(3);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5020.drawIndexedIndirect(buffer506, 0);
    render_pass_encoder5040.drawIndirect(buffer5015, 0);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4017, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4017, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder4021.endOcclusionQuery()
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5020.end();
    render_pass_encoder5041.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder5050.drawIndirect(buffer5024, 0);
    compute_pass_encoder5001.end();
    device60.queue.submit([]);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer500, 0);
    compute_pass_encoder5000.end();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5041.drawIndirect(buffer505, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder4020.popDebugGroup();
    const buffer5033 = device50.createBuffer({
        label: "buffer5033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5034 = device50.createBuffer({
        label: "buffer5034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5014 = device50.createBindGroup({
        label: "bind_group5014",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5034,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5014);
    const command_buffer504 = command_encoder504.finish();
    const buffer5035 = device50.createBuffer({
        label: "buffer5035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5036 = device50.createBuffer({
        label: "buffer5036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5015 = device50.createBindGroup({
        label: "bind_group5015",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5036,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5015);
    render_pass_encoder5021.drawIndexedIndirect(buffer5027, 0);
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    render_pass_encoder5000.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder5000.end();
    render_pass_encoder5041.drawIndexed(3);
    render_pass_encoder5020.setIndexBuffer(buffer5028, "uint16");
    render_pass_encoder5051.drawIndirect(buffer505, 0);
    render_pass_encoder5030.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer5022, 0);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder5041.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder4010.endOcclusionQuery()
    device70.queue.submit([]);
    render_pass_encoder5001.drawIndexedIndirect(buffer5022, 0);
    const command_buffer505 = command_encoder505.finish();
    render_pass_encoder5040.setIndexBuffer(buffer5034, "uint16");
    render_pass_encoder5051.end();
    render_pass_encoder5001.end();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer5028, 0);
    render_pass_encoder5041.setIndexBuffer(buffer5035, "uint16");
    render_pass_encoder5040.drawIndexed(3);
    device40.queue.submit([command_buffer405, ]);
    const buffer5037 = device50.createBuffer({
        label: "buffer5037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5038 = device50.createBuffer({
        label: "buffer5038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5016 = device50.createBindGroup({
        label: "bind_group5016",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5038,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group5016);
    render_pass_encoder5010.setVertexBuffer(0, buffer5017);
    render_pass_encoder5010.setIndexBuffer(buffer5034, "uint16");
    device50.queue.submit([]);
    render_pass_encoder5030.drawIndirect(buffer501, 0);
    compute_pass_encoder4030.end();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder5041.setIndexBuffer(buffer5036, "uint16");
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder5010.draw(3);
    compute_pass_encoder4030.end();
    render_pass_encoder5020.drawIndirect(buffer5020, 0);
    render_pass_encoder5010.end();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5001.end();
    compute_pass_encoder5001.dispatchWorkgroups(100);
    render_pass_encoder5041.drawIndirect(buffer5033, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5035, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder5041.draw(3);
    render_pass_encoder5041.setIndexBuffer(buffer508, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5051.end();
    render_pass_encoder4010.endOcclusionQuery()
    device70.queue.submit([]);
    render_pass_encoder5051.setIndexBuffer(buffer5015, "uint16");
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5051.setIndexBuffer(buffer5014, "uint16");
    const buffer5039 = device50.createBuffer({
        label: "buffer5039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5040 = device50.createBuffer({
        label: "buffer5040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5017 = device50.createBindGroup({
        label: "bind_group5017",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5040,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5017);
    render_pass_encoder5010.drawIndexed(3);
    compute_pass_encoder5010.end();
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5021.drawIndexedIndirect(buffer5021, 0);
    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4019,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    render_pass_encoder5050.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5001.setIndexBuffer(buffer5010, "uint16");
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5021.setIndexBuffer(buffer5038, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer5012, "uint16");
    render_pass_encoder5021.draw(3);
    render_pass_encoder5000.drawIndirect(buffer5027, 0);
    render_pass_encoder5051.setIndexBuffer(buffer5028, "uint16");
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer5018, 0);
    const command_buffer301 = command_encoder301.finish();
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder5030.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder5021.drawIndexedIndirect(buffer5010, 0);
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder5000.drawIndirect(buffer5012, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5013, "uint16");
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5001.end();
    render_pass_encoder5050.setIndexBuffer(buffer5037, "uint16");
    render_pass_encoder5030.drawIndirect(buffer5029, 0);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5021.draw(3);
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5001.drawIndexedIndirect(buffer5021, 0);
    device50.queue.submit([command_buffer505, ]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5020.end();
    render_pass_encoder5050.endOcclusionQuery()
    render_pass_encoder5051.drawIndexed(3);
    render_pass_encoder5020.drawIndexedIndirect(buffer5012, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer500, 0);
    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4021,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group406);
    const buffer5041 = device50.createBuffer({
        label: "buffer5041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5042 = device50.createBuffer({
        label: "buffer5042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5018 = device50.createBindGroup({
        label: "bind_group5018",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5042,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5018);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder5051.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5017, 0);
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer5043 = device50.createBuffer({
        label: "buffer5043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5043, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer5043, 0);
    device70.queue.submit([]);
    render_pass_encoder5050.draw(3);
    render_pass_encoder5010.setIndexBuffer(buffer5018, "uint16");
    render_pass_encoder5041.drawIndirect(buffer5017, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5043, 0);
    const buffer5044 = device50.createBuffer({
        label: "buffer5044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5045 = device50.createBuffer({
        label: "buffer5045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5019 = device50.createBindGroup({
        label: "bind_group5019",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5045,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5019);
    compute_pass_encoder4000.end();
    render_pass_encoder5021.drawIndirect(buffer5014, 0);
    render_pass_encoder5041.draw(3);
    render_pass_encoder5040.setIndexBuffer(buffer5044, "uint16");
    render_pass_encoder5040.drawIndirect(buffer5019, 0);
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    const command_buffer406 = command_encoder406.finish();
    render_pass_encoder5051.drawIndexedIndirect(buffer5019, 0);
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    render_pass_encoder5040.drawIndirect(buffer5026, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5001.drawIndirect(buffer5033, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5024, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5026, 0);
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    render_pass_encoder5001.drawIndexedIndirect(buffer5043, 0);
    render_pass_encoder5030.drawIndirect(buffer5030, 0);
    render_pass_encoder5001.drawIndirect(buffer5026, 0);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder5050.drawIndexed(3);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer5035, 0);
    render_pass_encoder5051.draw(3);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5040.drawIndexedIndirect(buffer5027, 0);
    device40.queue.submit([command_buffer402, ]);
    const buffer5046 = device50.createBuffer({
        label: "buffer5046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5047 = device50.createBuffer({
        label: "buffer5047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5020 = device50.createBindGroup({
        label: "bind_group5020",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5047,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5020);
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5021.draw(3);
    render_pass_encoder5030.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5026, 0);
    device70.queue.submit([]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder5010.drawIndirect(buffer5018, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5000.drawIndirect(buffer5019, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder5030.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder5010.drawIndexedIndirect(buffer5026, 0);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder5050.drawIndexedIndirect(buffer5010, 0);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder5041.setIndexBuffer(buffer5037, "uint16");
    render_pass_encoder5050.drawIndirect(buffer5029, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5031, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5041, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5019, "uint16");
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5010.setIndexBuffer(buffer5018, "uint16");
    render_pass_encoder5021.endOcclusionQuery()
    render_pass_encoder5020.setIndexBuffer(buffer5035, "uint16");
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer5043, 0);
    render_pass_encoder5021.draw(3);
    device40.queue.submit([command_buffer401, command_buffer405, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4024, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4024, 0);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder5030.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5021.drawIndirect(buffer5046, 0);
    render_pass_encoder5050.end();
    device40.queue.submit([command_buffer402, command_buffer405, ]);
    render_pass_encoder5051.drawIndirect(buffer5043, 0);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5051.setIndexBuffer(buffer5033, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5043, 0);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5048 = device50.createBuffer({
        label: "buffer5048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5048, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5048, 0);
    render_pass_encoder5041.drawIndirect(buffer5048, 0);
    render_pass_encoder5000.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5040.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5001.drawIndexedIndirect(buffer5033, 0);
    render_pass_encoder5050.drawIndexed(3);
    const buffer5049 = device50.createBuffer({
        label: "buffer5049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5050 = device50.createBuffer({
        label: "buffer5050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5021 = device50.createBindGroup({
        label: "bind_group5021",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5050,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5021);
    render_pass_encoder5050.setIndexBuffer(buffer5047, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5000.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5026, "uint16");
    compute_pass_encoder5010.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5001.drawIndirect(buffer5029, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder5020.drawIndirect(buffer503, 0);
    render_pass_encoder5030.drawIndirect(buffer5026, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder5030.draw(3);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5051.end();
    render_pass_encoder5030.setIndexBuffer(buffer5048, "uint16");
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5041.drawIndirect(buffer5029, 0);
    render_pass_encoder5021.setIndexBuffer(buffer5041, "uint16");
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
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group408);
    render_pass_encoder5040.drawIndirect(buffer508, 0);
    render_pass_encoder5001.drawIndirect(buffer5043, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5001.end();
    render_pass_encoder5050.draw(3);
    render_pass_encoder5001.drawIndirect(buffer5027, 0);
    render_pass_encoder5051.end();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5051.setIndexBuffer(buffer5022, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer5030, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5020.drawIndexedIndirect(buffer5026, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5001.drawIndexedIndirect(buffer5035, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5000.draw(3);
    render_pass_encoder5041.setIndexBuffer(buffer5028, "uint16");
    render_pass_encoder5040.drawIndexed(3);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer5036, "uint16");
    render_pass_encoder5040.end();
    render_pass_encoder5041.setIndexBuffer(buffer5050, "uint16");
    render_pass_encoder5021.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5041.drawIndirect(buffer5036, 0);
    device40.queue.submit([command_buffer404, command_buffer405, ]);
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder5051.drawIndexed(3);
    render_pass_encoder5021.drawIndirect(buffer5042, 0);
    render_pass_encoder5051.drawIndirect(buffer5013, 0);
    render_pass_encoder5000.end();
    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4028,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group409);
    device40.queue.submit([command_buffer401, command_buffer405, ]);
    render_pass_encoder5050.end();
    render_pass_encoder5041.drawIndirect(buffer5012, 0);
    render_pass_encoder5051.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const buffer5051 = device50.createBuffer({
        label: "buffer5051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5052 = device50.createBuffer({
        label: "buffer5052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5022 = device50.createBindGroup({
        label: "bind_group5022",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5052,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5022);
    render_pass_encoder5021.setIndexBuffer(buffer5036, "uint16");
    render_pass_encoder5010.end();
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4010);
    render_pass_encoder5001.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5044, 0);
    render_pass_encoder5051.popDebugGroup();
    render_pass_encoder5051.drawIndexedIndirect(buffer5026, 0);
    compute_pass_encoder4030.end();
    render_pass_encoder5001.drawIndirect(buffer5029, 0);
    render_pass_encoder5050.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer5044, "uint16");
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5041.drawIndexed(3);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder5040.drawIndirect(buffer501, 0);
    render_pass_encoder5051.end();
    render_pass_encoder5001.drawIndexed(3);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5053 = device50.createBuffer({
        label: "buffer5053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5053, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5053, 0);
    render_pass_encoder5050.drawIndirect(buffer505, 0);
    render_pass_encoder5020.popDebugGroup();
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5050.drawIndexedIndirect(buffer5015, 0);
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder5001.drawIndexedIndirect(buffer5044, 0);
    device40.queue.submit([command_buffer405, command_buffer406, ]);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder5051.setIndexBuffer(buffer5030, "uint16");
    render_pass_encoder4040.endOcclusionQuery()
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    render_pass_encoder5000.drawIndexedIndirect(buffer500, 0);
    device70.queue.submit([]);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5030.drawIndexedIndirect(buffer5018, 0);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4031, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4031, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5040, "uint16");
    render_pass_encoder5050.setIndexBuffer(buffer5034, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer5051, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5035, 0);
    render_pass_encoder4040.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder5041.drawIndirect(buffer5053, 0);
    render_pass_encoder5021.drawIndirect(buffer506, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5000.end();
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder5051.drawIndexedIndirect(buffer5024, 0);
    device50.queue.submit([command_buffer500, command_buffer505, ]);
    render_pass_encoder5010.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5051.setIndexBuffer(buffer5012, "uint16");
    render_pass_encoder5050.drawIndirect(buffer5020, 0);
    render_pass_encoder5051.end();
    render_pass_encoder5021.drawIndirect(buffer5053, 0);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5020.end();
    render_pass_encoder5030.drawIndirect(buffer5043, 0);
    render_pass_encoder5041.drawIndirect(buffer5048, 0);
    render_pass_encoder5021.drawIndirect(buffer5035, 0);
    render_pass_encoder5040.setIndexBuffer(buffer501, "uint16");
    device50.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4032, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4032, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5001.drawIndexedIndirect(buffer5021, 0);
    render_pass_encoder5051.end();
    render_pass_encoder5050.draw(3);
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
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4011);
    render_pass_encoder5030.drawIndexedIndirect(buffer5043, 0);
    const buffer5054 = device50.createBuffer({
        label: "buffer5054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5055 = device50.createBuffer({
        label: "buffer5055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5023 = device50.createBindGroup({
        label: "bind_group5023",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5055,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5023);
    render_pass_encoder5050.popDebugGroup();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4035, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4035, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5030.drawIndirect(buffer5026, 0);
    render_pass_encoder5050.drawIndirect(buffer5034, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder5041.drawIndirect(buffer5052, 0);
    render_pass_encoder5000.drawIndirect(buffer5044, 0);
    const buffer5056 = device50.createBuffer({
        label: "buffer5056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5057 = device50.createBuffer({
        label: "buffer5057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5024 = device50.createBindGroup({
        label: "bind_group5024",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5057,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5024);
    render_pass_encoder5000.end();
    render_pass_encoder5020.drawIndirect(buffer5043, 0);
    compute_pass_encoder4010.end();
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5000.draw(3);
    render_pass_encoder5030.setIndexBuffer(buffer5044, "uint16");
    const buffer5058 = device50.createBuffer({
        label: "buffer5058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5059 = device50.createBuffer({
        label: "buffer5059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5025 = device50.createBindGroup({
        label: "bind_group5025",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5059,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5025);
    render_pass_encoder5001.drawIndirect(buffer5032, 0);
    render_pass_encoder5050.setIndexBuffer(buffer5039, "uint16");
    render_pass_encoder5050.end();
    render_pass_encoder5001.drawIndexedIndirect(buffer5021, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5033, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5000.end();
    compute_pass_encoder5001.dispatchWorkgroups(100);
    render_pass_encoder5010.drawIndirect(buffer5034, 0);
    render_pass_encoder5050.setIndexBuffer(buffer504, "uint16");
    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4037,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4012);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5001.drawIndirect(buffer5026, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5041.end();
    render_pass_encoder5010.drawIndirect(buffer5026, 0);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder4050.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5040.setIndexBuffer(buffer5018, "uint16");
    render_pass_encoder5021.setIndexBuffer(buffer5039, "uint16");
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5040.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5001.drawIndirect(buffer5023, 0);
    render_pass_encoder5041.setIndexBuffer(buffer5045, "uint16");
    compute_pass_encoder5001.end();
    render_pass_encoder5030.drawIndirect(buffer5047, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder5030.drawIndirect(buffer506, 0);
    compute_pass_encoder5000.end();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5050.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5020.setIndexBuffer(buffer5018, "uint16");
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5010.setIndexBuffer(buffer508, "uint16");
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder5021.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder5041.drawIndexedIndirect(buffer5012, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5037, "uint16");
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5020.drawIndirect(buffer500, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5051.drawIndexedIndirect(buffer5034, 0);
    const buffer5060 = device50.createBuffer({
        label: "buffer5060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5061 = device50.createBuffer({
        label: "buffer5061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5026 = device50.createBindGroup({
        label: "bind_group5026",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5061,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5026);
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer5062 = device50.createBuffer({
        label: "buffer5062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5062, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer5062, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder5041.popDebugGroup();
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5063 = device50.createBuffer({
        label: "buffer5063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5063, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5063, 0);
    render_pass_encoder5050.setIndexBuffer(buffer5033, "uint16");
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5030.drawIndirect(buffer5024, 0);
    render_pass_encoder5051.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5030.drawIndirect(buffer5038, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder5000.setIndexBuffer(buffer5044, "uint16");
    render_pass_encoder5001.drawIndirect(buffer5032, 0);
    render_pass_encoder5021.end();
    render_pass_encoder5000.draw(3);
    render_pass_encoder5021.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5044, "uint16");
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
        layout: compute_pipeline401.getBindGroupLayout(0),
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
    render_pass_encoder5050.end();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5050.setIndexBuffer(buffer5027, "uint16");
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5021.drawIndexedIndirect(buffer5043, 0);
    render_pass_encoder5051.drawIndirect(buffer5036, 0);
    device50.queue.submit([command_buffer502, command_buffer505, ]);
    render_pass_encoder5050.drawIndirect(buffer5026, 0);
    render_pass_encoder5040.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5051.drawIndirect(buffer5041, 0);
    render_pass_encoder5020.drawIndirect(buffer5053, 0);
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([]);
    render_pass_encoder5040.draw(3);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5041.drawIndirect(buffer5039, 0);
    render_pass_encoder5030.drawIndirect(buffer504, 0);
    render_pass_encoder4010.endOcclusionQuery()
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder5041.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder5001.setIndexBuffer(buffer5050, "uint16");
    render_pass_encoder5041.drawIndirect(buffer5032, 0);
    render_pass_encoder5001.drawIndirect(buffer5047, 0);
    render_pass_encoder5020.drawIndirect(buffer5043, 0);
    render_pass_encoder5000.popDebugGroup();
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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
    render_pass_encoder5030.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5020.setIndexBuffer(buffer5017, "uint16");
    render_pass_encoder5010.drawIndirect(buffer5062, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5021.drawIndirect(buffer5032, 0);
    render_pass_encoder5050.draw(3);
    render_pass_encoder5020.drawIndexed(3);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5051.drawIndexedIndirect(buffer502, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5021.drawIndirect(buffer5026, 0);
    render_pass_encoder5021.setIndexBuffer(buffer508, "uint16");
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5030.drawIndirect(buffer5017, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5051.end();
    device50.queue.submit([command_buffer501, command_buffer505, ]);
    device40.queue.submit([]);
    device70.queue.submit([]);
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
        layout: compute_pipeline401.getBindGroupLayout(0),
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
    device50.queue.submit([command_buffer502, ]);
    const buffer5064 = device50.createBuffer({
        label: "buffer5064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5065 = device50.createBuffer({
        label: "buffer5065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5027 = device50.createBindGroup({
        label: "bind_group5027",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5065,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5027);
    render_pass_encoder5010.drawIndexedIndirect(buffer5026, 0);
    device60.queue.submit([]);
    render_pass_encoder4060.endOcclusionQuery()
    render_pass_encoder5021.drawIndirect(buffer5023, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder5041.drawIndexedIndirect(buffer5046, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5031, 0);
    render_pass_encoder4010.popDebugGroup();
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    render_pass_encoder5050.setIndexBuffer(buffer5030, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer5021, "uint16");
    device50.queue.submit([]);
    render_pass_encoder5030.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5051.popDebugGroup();
    render_pass_encoder5051.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5041.drawIndexedIndirect(buffer5047, 0);
    compute_pass_encoder5010.end();
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer5058, "uint16");
    render_pass_encoder5050.drawIndirect(buffer5048, 0);
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5021.drawIndirect(buffer5043, 0);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5020.setIndexBuffer(buffer5036, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer5032, "uint16");
    render_pass_encoder5021.drawIndirect(buffer5043, 0);
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder5001.setIndexBuffer(buffer5049, "uint16");
    render_pass_encoder5001.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer5062, 0);
    render_pass_encoder5021.drawIndirect(buffer500, 0);
    render_pass_encoder5001.drawIndirect(buffer5053, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5050.drawIndirect(buffer5048, 0);
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

    compute_pass_encoder4010.setBindGroup(0, bind_group4016);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5040.drawIndirect(buffer5022, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder5020.drawIndirect(buffer5053, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5023, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5049, 0);
    render_pass_encoder5040.drawIndirect(buffer5031, 0);
    device40.queue.submit([command_buffer404, command_buffer405, ]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5066 = device50.createBuffer({
        label: "buffer5066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5066, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5066, 0);
    render_pass_encoder5001.drawIndirect(buffer508, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5026, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5001.drawIndexedIndirect(buffer5036, 0);
    render_pass_encoder5000.drawIndirect(buffer5051, 0);
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    render_pass_encoder5050.setIndexBuffer(buffer5057, "uint16");
    const buffer5067 = device50.createBuffer({
        label: "buffer5067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5068 = device50.createBuffer({
        label: "buffer5068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5028 = device50.createBindGroup({
        label: "bind_group5028",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5068,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5028);
    render_pass_encoder5001.drawIndirect(buffer5053, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5066, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5053, "uint16");
    render_pass_encoder5040.setIndexBuffer(buffer5049, "uint16");
    render_pass_encoder5040.drawIndirect(buffer5067, 0);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4010.endOcclusionQuery()
    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4047,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4017);
    compute_pass_encoder5001.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5041.setIndexBuffer(buffer5067, "uint16");
    render_pass_encoder5050.drawIndexedIndirect(buffer5066, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5033, 0);
    render_pass_encoder5041.drawIndirect(buffer504, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5066, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5011, 0);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4048, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4048, 0);
    render_pass_encoder5051.drawIndirect(buffer5043, 0);
    render_pass_encoder5000.drawIndirect(buffer5055, 0);
    render_pass_encoder5001.drawIndirect(buffer5026, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5054, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5046, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5061, 0);
    render_pass_encoder5030.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5032, 0);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder5041.drawIndexedIndirect(buffer5034, 0);
    render_pass_encoder5010.drawIndirect(buffer5053, 0);
    render_pass_encoder5041.drawIndirect(buffer5036, 0);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4049, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4049, 0);
    render_pass_encoder5041.setIndexBuffer(buffer5057, "uint16");
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    render_pass_encoder5041.drawIndirect(buffer5044, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5026, 0);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5001.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5043, 0);
    render_pass_encoder5041.drawIndirect(buffer5048, 0);
    render_pass_encoder5050.drawIndirect(buffer501, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5019, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5050.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5020.end();
    render_pass_encoder5040.drawIndexedIndirect(buffer5024, 0);
    render_pass_encoder5000.drawIndirect(buffer5053, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5031, "uint16");
    render_pass_encoder5041.drawIndexedIndirect(buffer5048, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5051.end();
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder5041.drawIndirect(buffer5066, 0);
    compute_pass_encoder4000.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder5030.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5028, 0);
    render_pass_encoder5051.drawIndirect(buffer5062, 0);
    render_pass_encoder5001.drawIndirect(buffer5026, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4050, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4050, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5025, 0);
    render_pass_encoder5040.drawIndirect(buffer5026, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5066, 0);
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder5030.drawIndirect(buffer5048, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5030.setIndexBuffer(buffer5022, "uint16");
    render_pass_encoder5020.draw(3);
    render_pass_encoder5021.end();
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder5010.setIndexBuffer(buffer5030, "uint16");
    render_pass_encoder5021.end();
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5050.drawIndexedIndirect(buffer5043, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5001.end();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5010.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5030.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5051.drawIndirect(buffer5043, 0);
    render_pass_encoder5021.end();
    render_pass_encoder5010.drawIndirect(buffer5042, 0);
    device00.queue.submit([]);
    render_pass_encoder5010.drawIndirect(buffer5019, 0);
    device50.queue.submit([]);
    render_pass_encoder5020.drawIndexedIndirect(buffer506, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5062, 0);
    render_pass_encoder5000.drawIndirect(buffer5063, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5041.drawIndexedIndirect(buffer5062, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5000.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5001.drawIndirect(buffer5066, 0);
    render_pass_encoder5020.popDebugGroup();
    compute_pass_encoder5000.end();
    render_pass_encoder5051.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5026, 0);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4051, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4051, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5051.drawIndirect(buffer5062, 0);
    device10.queue.submit([]);
    render_pass_encoder5050.setIndexBuffer(buffer5066, "uint16");
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder5001.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5000.drawIndirect(buffer5065, 0);
    render_pass_encoder5000.drawIndirect(buffer5066, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer504, 0);
    render_pass_encoder5050.drawIndexed(3);
    render_pass_encoder5051.drawIndirect(buffer5063, 0);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer502, 0);
    render_pass_encoder5010.drawIndirect(buffer5024, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5023, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5050.drawIndirect(buffer5038, 0);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer5064, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5054, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5021.drawIndexedIndirect(buffer5055, 0);
    render_pass_encoder5000.drawIndirect(buffer5030, 0);
    compute_pass_encoder4030.end();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5020.drawIndexedIndirect(buffer5050, 0);
    device40.queue.submit([]);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5001.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5020.drawIndirect(buffer5053, 0);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4052, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4052, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5031, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder5051.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder5041.drawIndirect(buffer5063, 0);
    render_pass_encoder5050.setIndexBuffer(buffer5063, "uint16");
    compute_pass_encoder4030.end();
    render_pass_encoder5001.drawIndirect(buffer5065, 0);
    render_pass_encoder5051.drawIndirect(buffer5053, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5020.end();
    render_pass_encoder5000.drawIndirect(buffer5040, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5025, 0);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5069 = device50.createBuffer({
        label: "buffer5069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5069, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5069, 0);
    render_pass_encoder5010.drawIndirect(buffer5016, 0);
    render_pass_encoder5051.drawIndirect(buffer5054, 0);
    render_pass_encoder5020.drawIndirect(buffer5063, 0);
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer5029, "uint16");
    render_pass_encoder5020.draw(3);
    render_pass_encoder5010.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5051.draw(3);
    render_pass_encoder5000.drawIndexedIndirect(buffer5048, 0);
    device50.queue.submit([command_buffer500, command_buffer505, ]);
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5000.drawIndirect(buffer5032, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5062, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5058, 0);
    render_pass_encoder5030.drawIndirect(buffer5023, 0);
    render_pass_encoder5050.drawIndirect(buffer5014, 0);
    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
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
                    buffer: buffer4053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4054,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4018);
    render_pass_encoder4020.endOcclusionQuery()
    render_pass_encoder5000.drawIndirect(buffer5034, 0);
    render_pass_encoder5040.drawIndirect(buffer5053, 0);
    render_pass_encoder5020.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5001.drawIndexedIndirect(buffer5069, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5001.draw(3);
    render_pass_encoder5040.drawIndirect(buffer5062, 0);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5050.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5051.drawIndirect(buffer5021, 0);
    render_pass_encoder5041.drawIndirect(buffer507, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5030, 0);
    render_pass_encoder5050.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder4060.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder5030.drawIndirect(buffer5013, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5030.drawIndirect(buffer5040, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5001.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5030.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder5000.drawIndirect(buffer5063, 0);
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5000.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5062, 0);
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder5040.drawIndirect(buffer5048, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5010.drawIndirect(buffer5021, 0);
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder5051.drawIndirect(buffer5059, 0);
    render_pass_encoder5051.drawIndirect(buffer5027, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5023, 0);
    compute_pass_encoder4030.end();
    render_pass_encoder5050.draw(3);
    render_pass_encoder5041.end();
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder4060.endOcclusionQuery()
    render_pass_encoder5051.drawIndirect(buffer5048, 0);
    device40.queue.submit([]);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5051.drawIndirect(buffer5020, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5040.drawIndirect(buffer5069, 0);
    compute_pass_encoder4030.end();
    render_pass_encoder5040.drawIndexedIndirect(buffer5016, 0);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer404, command_buffer405, ]);
    render_pass_encoder5041.drawIndirect(buffer5062, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder5041.draw(3);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder5021.end();
    render_pass_encoder5001.end();
    render_pass_encoder5051.draw(3);
    render_pass_encoder5000.drawIndirect(buffer5038, 0);
    render_pass_encoder5051.drawIndirect(buffer5066, 0);
    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
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
                    buffer: buffer4055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4056,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4019);
    device30.queue.submit([]);
    render_pass_encoder5030.setIndexBuffer(buffer5056, "uint16");
    const buffer5070 = device50.createBuffer({
        label: "buffer5070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5071 = device50.createBuffer({
        label: "buffer5071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5029 = device50.createBindGroup({
        label: "bind_group5029",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5071,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5029);
    render_pass_encoder5000.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5021.drawIndirect(buffer5010, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5065, 0);
    render_pass_encoder5050.drawIndirect(buffer5014, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder5050.popDebugGroup();
    compute_pass_encoder5001.end();
    render_pass_encoder5030.drawIndirect(buffer5062, 0);
    render_pass_encoder5000.drawIndirect(buffer5053, 0);
    render_pass_encoder5001.drawIndirect(buffer5062, 0);
    device50.queue.submit([command_buffer503, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5021.drawIndirect(buffer5068, 0);
    render_pass_encoder5001.drawIndirect(buffer5026, 0);
    compute_pass_encoder5000.end();
    const buffer5072 = device50.createBuffer({
        label: "buffer5072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5073 = device50.createBuffer({
        label: "buffer5073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5030 = device50.createBindGroup({
        label: "bind_group5030",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5073,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5030);
    render_pass_encoder5020.endOcclusionQuery()
    render_pass_encoder5041.drawIndirect(buffer5021, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer505, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder5050.drawIndirect(buffer5054, 0);
    render_pass_encoder5030.drawIndirect(buffer5062, 0);
    render_pass_encoder5021.setIndexBuffer(buffer5052, "uint16");
    render_pass_encoder5021.drawIndirect(buffer5048, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5063, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder5001.drawIndirect(buffer5066, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder5040.setIndexBuffer(buffer5017, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5050.end();
    render_pass_encoder5030.setIndexBuffer(buffer5061, "uint16");
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder5020.drawIndexedIndirect(buffer5025, 0);
    render_pass_encoder5001.end();
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5040.setIndexBuffer(buffer5060, "uint16");
    render_pass_encoder5051.drawIndexedIndirect(buffer5025, 0);
    render_pass_encoder5050.drawIndirect(buffer5066, 0);
    render_pass_encoder5050.drawIndirect(buffer509, 0);
    render_pass_encoder5021.drawIndirect(buffer5071, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5067, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5001.drawIndirect(buffer5062, 0);
    render_pass_encoder5030.drawIndirect(buffer5063, 0);
    render_pass_encoder5040.drawIndirect(buffer5066, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer506, 0);
    const buffer5074 = device50.createBuffer({
        label: "buffer5074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5075 = device50.createBuffer({
        label: "buffer5075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5031 = device50.createBindGroup({
        label: "bind_group5031",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5075,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5031);
    compute_pass_encoder4010.end();
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5010.drawIndirect(buffer5069, 0);
    render_pass_encoder5021.drawIndirect(buffer5016, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5001.setIndexBuffer(buffer5063, "uint16");
    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4058 = device40.createBuffer({
        label: "buffer4058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4058,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4020);
    render_pass_encoder5021.drawIndexedIndirect(buffer5058, 0);
    render_pass_encoder5050.setIndexBuffer(buffer5043, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer5036, "uint16");
    render_pass_encoder5051.setIndexBuffer(buffer5031, "uint16");
    render_pass_encoder5000.drawIndexedIndirect(buffer5048, 0);
    compute_pass_encoder4030.end();
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer5076 = device50.createBuffer({
        label: "buffer5076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5076, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer5076, 0);
    render_pass_encoder5020.drawIndirect(buffer5066, 0);
    render_pass_encoder5030.drawIndirect(buffer5063, 0);
    render_pass_encoder5041.end();
    render_pass_encoder5001.drawIndexedIndirect(buffer5065, 0);
    render_pass_encoder5020.drawIndirect(buffer5076, 0);
    render_pass_encoder5051.popDebugGroup();
    render_pass_encoder5051.drawIndexedIndirect(buffer5069, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5041, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5048, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder5040.draw(3);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder5010.popDebugGroup()
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5077 = device50.createBuffer({
        label: "buffer5077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5077, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5077, 0);
    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4060,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4021);
    render_pass_encoder5040.setIndexBuffer(buffer5034, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer5023, "uint16");
    render_pass_encoder5050.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5021.drawIndirect(buffer5048, 0);
    render_pass_encoder5041.setIndexBuffer(buffer5017, "uint16");
    render_pass_encoder5001.drawIndirect(buffer5069, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer5045, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5072, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5072, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5069, 0);
    render_pass_encoder5001.setIndexBuffer(buffer5028, "uint16");
    render_pass_encoder5001.drawIndexedIndirect(buffer5066, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder4060.endOcclusionQuery()
    render_pass_encoder5030.drawIndexedIndirect(buffer5043, 0);
    render_pass_encoder5021.drawIndirect(buffer5019, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5040, "uint16");
    render_pass_encoder5010.drawIndirect(buffer5017, 0);
    render_pass_encoder5050.drawIndirect(buffer5048, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder5041.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5030.popDebugGroup();
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    render_pass_encoder5041.drawIndirect(buffer5053, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5070, "uint16");
    render_pass_encoder5050.end();
    device50.queue.submit([command_buffer503, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4061, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4061, 0);
    render_pass_encoder5021.drawIndirect(buffer5061, 0);
    render_pass_encoder5051.popDebugGroup();
    render_pass_encoder5021.drawIndirect(buffer5062, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5015, 0);
    render_pass_encoder5001.drawIndirect(buffer503, 0);
    render_pass_encoder5030.drawIndirect(buffer5062, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5062, 0);
    render_pass_encoder5030.endOcclusionQuery()
    render_pass_encoder5041.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5010.draw(3);
    render_pass_encoder5030.setIndexBuffer(buffer5018, "uint16");
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer5078 = device50.createBuffer({
        label: "buffer5078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5078, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer5078, 0);
    render_pass_encoder5020.drawIndirect(buffer5024, 0);
    render_pass_encoder5021.drawIndirect(buffer5062, 0);
    render_pass_encoder5021.drawIndirect(buffer5040, 0);
    render_pass_encoder5010.drawIndirect(buffer5069, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5078, 0);
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5040.popDebugGroup();
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder5001.drawIndirect(buffer5062, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5076, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5030.drawIndirect(buffer5048, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5078, 0);
    render_pass_encoder4010.endOcclusionQuery()
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5079 = device50.createBuffer({
        label: "buffer5079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5079, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5079, 0);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer5069, 0);
    render_pass_encoder5000.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5001.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5010.drawIndirect(buffer5062, 0);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5030.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer5066, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5077, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5041, 0);
    render_pass_encoder5041.drawIndirect(buffer5043, 0);
    compute_pass_encoder5001.dispatchWorkgroups(100);
    render_pass_encoder5051.end();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5041.setIndexBuffer(buffer5037, "uint16");
    const buffer5080 = device50.createBuffer({
        label: "buffer5080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5081 = device50.createBuffer({
        label: "buffer5081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5032 = device50.createBindGroup({
        label: "bind_group5032",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5081,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5032);
    render_pass_encoder5021.drawIndexedIndirect(buffer5069, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder4060.popDebugGroup();
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5050.drawIndexedIndirect(buffer5069, 0);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4062, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4062, 0);
    render_pass_encoder5020.drawIndirect(buffer5074, 0);
    render_pass_encoder5000.drawIndirect(buffer5026, 0);
    device40.queue.submit([command_buffer403, command_buffer405, ]);
    render_pass_encoder5041.drawIndexedIndirect(buffer5028, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5048, 0);
    const buffer5082 = device50.createBuffer({
        label: "buffer5082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5083 = device50.createBuffer({
        label: "buffer5083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5033 = device50.createBindGroup({
        label: "bind_group5033",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5083,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5033);
    render_pass_encoder5000.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5020.drawIndirect(buffer5062, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5077, 0);
    render_pass_encoder5021.drawIndirect(buffer5056, 0);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5084 = device50.createBuffer({
        label: "buffer5084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5084, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5084, 0);
    render_pass_encoder5010.drawIndirect(buffer5084, 0);
    render_pass_encoder5030.drawIndirect(buffer5011, 0);
    render_pass_encoder5030.drawIndirect(buffer5066, 0);
    const buffer4063 = device40.createBuffer({
        label: "buffer4063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4064 = device40.createBuffer({
        label: "buffer4064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4064,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4022);
    render_pass_encoder5020.setIndexBuffer(buffer5076, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer5079, 0);
    render_pass_encoder5021.drawIndirect(buffer5075, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5078, 0);
    const buffer4065 = device40.createBuffer({
        label: "buffer4065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4066 = device40.createBuffer({
        label: "buffer4066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4066,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4023);
    render_pass_encoder5010.drawIndirect(buffer5078, 0);
    render_pass_encoder5051.drawIndirect(buffer5053, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder5040.drawIndirect(buffer5043, 0);
    render_pass_encoder5050.drawIndirect(buffer5013, 0);
    render_pass_encoder5021.drawIndirect(buffer5021, 0);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder5010.drawIndirect(buffer5074, 0);
    render_pass_encoder5000.drawIndirect(buffer5062, 0);
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder5010.drawIndexedIndirect(buffer5084, 0);
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    render_pass_encoder5051.drawIndirect(buffer5084, 0);
    render_pass_encoder5001.end();
    render_pass_encoder5021.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5076, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5078, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5062, "uint16");
    render_pass_encoder5051.drawIndexedIndirect(buffer5027, 0);
    const buffer5085 = device50.createBuffer({
        label: "buffer5085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5086 = device50.createBuffer({
        label: "buffer5086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5034 = device50.createBindGroup({
        label: "bind_group5034",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5086,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5034);
    render_pass_encoder5021.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5045, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder5021.drawIndirect(buffer5084, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder5010.setIndexBuffer(buffer5054, "uint16");
    render_pass_encoder5050.drawIndexedIndirect(buffer5048, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder5001.drawIndexedIndirect(buffer5056, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5001.drawIndirect(buffer5078, 0);
    render_pass_encoder5000.setIndexBuffer(buffer5066, "uint16");
    device50.queue.submit([command_buffer501, command_buffer505, ]);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5040.drawIndexedIndirect(buffer5071, 0);
    render_pass_encoder5000.end();
    render_pass_encoder4060.endOcclusionQuery()
    render_pass_encoder5050.setIndexBuffer(buffer5060, "uint16");
    compute_pass_encoder4000.end();
    render_pass_encoder5001.drawIndirect(buffer5082, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5062, 0);
    const buffer5087 = device50.createBuffer({
        label: "buffer5087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5088 = device50.createBuffer({
        label: "buffer5088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5035 = device50.createBindGroup({
        label: "bind_group5035",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5088,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5035);
    compute_pass_encoder4000.end();
    render_pass_encoder5021.drawIndirect(buffer5076, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5043, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5076, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4067 = device40.createBuffer({
        label: "buffer4067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4067, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4067, 0);
    render_pass_encoder5000.drawIndirect(buffer5076, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5010, 0);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder5000.end();
    render_pass_encoder5001.setIndexBuffer(buffer5042, "uint16");
    render_pass_encoder5021.drawIndirect(buffer5077, 0);
    render_pass_encoder5051.drawIndirect(buffer5046, 0);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer5035, "uint16");
    render_pass_encoder5030.drawIndirect(buffer5063, 0);
    render_pass_encoder5021.setIndexBuffer(buffer5042, "uint16");
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5089 = device50.createBuffer({
        label: "buffer5089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5089, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5089, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5059, 0);
    render_pass_encoder5010.drawIndirect(buffer5071, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5050.drawIndirect(buffer5026, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5026, "uint16");
    render_pass_encoder5010.drawIndirect(buffer5087, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder5000.drawIndirect(buffer5084, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5078, 0);
    render_pass_encoder5041.end();
    render_pass_encoder5051.setIndexBuffer(buffer5055, "uint16");
    render_pass_encoder5041.drawIndexedIndirect(buffer5069, 0);
    render_pass_encoder5021.end();
    render_pass_encoder5050.drawIndirect(buffer5066, 0);
    render_pass_encoder5051.drawIndirect(buffer5089, 0);
    device50.queue.submit([command_buffer502, command_buffer504, ]);
    render_pass_encoder5041.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5001.end();
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5010.setIndexBuffer(buffer5037, "uint16");
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder5030.popDebugGroup();
    device40.queue.submit([]);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5020.setIndexBuffer(buffer5025, "uint16");
    render_pass_encoder5041.drawIndexedIndirect(buffer5025, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5021.end();
    render_pass_encoder4020.popDebugGroup();
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, command_buffer405, ]);
    device50.queue.submit([]);
    render_pass_encoder4010.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder5030.setIndexBuffer(buffer5032, "uint16");
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5090 = device50.createBuffer({
        label: "buffer5090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5090, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5090, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5028, 0);
    render_pass_encoder5041.drawIndirect(buffer5073, 0);
    render_pass_encoder5050.drawIndirect(buffer500, 0);
    render_pass_encoder5000.drawIndirect(buffer5078, 0);
    render_pass_encoder5040.drawIndirect(buffer5089, 0);
    render_pass_encoder5000.drawIndirect(buffer5016, 0);
    compute_pass_encoder4010.end();
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5041.drawIndexedIndirect(buffer5062, 0);
    render_pass_encoder5001.drawIndirect(buffer507, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5084, 0);
    render_pass_encoder5021.drawIndirect(buffer508, 0);
    render_pass_encoder5021.drawIndirect(buffer5076, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5072, "uint16");
    render_pass_encoder5021.popDebugGroup();
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5000.drawIndirect(buffer5069, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder5020.drawIndexedIndirect(buffer5078, 0);
    render_pass_encoder5021.setIndexBuffer(buffer5064, "uint16");
    render_pass_encoder5000.end();
    render_pass_encoder5010.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer5078, 0);
    render_pass_encoder5041.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder5021.drawIndirect(buffer5026, 0);
    render_pass_encoder5051.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4068 = device40.createBuffer({
        label: "buffer4068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4068, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4068, 0);
    render_pass_encoder5051.drawIndirect(buffer5079, 0);
    render_pass_encoder5041.drawIndirect(buffer5063, 0);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5040.drawIndirect(buffer5090, 0);
    render_pass_encoder5021.drawIndirect(buffer5077, 0);
    render_pass_encoder5040.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer5084, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder5030.drawIndirect(buffer5089, 0);
    render_pass_encoder5021.drawIndirect(buffer5048, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5083, 0);
    render_pass_encoder5050.setIndexBuffer(buffer5065, "uint16");
    render_pass_encoder5020.drawIndirect(buffer5090, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer5053, 0);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5010.drawIndexedIndirect(buffer5077, 0);
    render_pass_encoder5001.drawIndirect(buffer5024, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5020, 0);
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder5010.drawIndirect(buffer5079, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5031, 0);
    render_pass_encoder5051.drawIndirect(buffer5053, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5001.drawIndexedIndirect(buffer5066, 0);
    render_pass_encoder5041.drawIndirect(buffer502, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5079, 0);
    render_pass_encoder5000.setIndexBuffer(buffer5061, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer5082, "uint16");
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5010.drawIndirect(buffer5078, 0);
    render_pass_encoder5001.end();
    render_pass_encoder5040.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5001.setIndexBuffer(buffer5063, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer5025, 0);
    render_pass_encoder5020.drawIndirect(buffer5062, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder4060.endOcclusionQuery()
    render_pass_encoder5041.drawIndirect(buffer5064, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5010.drawIndexedIndirect(buffer5023, 0);
    render_pass_encoder5041.drawIndirect(buffer502, 0);
    render_pass_encoder5030.drawIndirect(buffer500, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5084, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5069, 0);
    render_pass_encoder5000.setIndexBuffer(buffer5085, "uint16");
    render_pass_encoder5001.drawIndirect(buffer5066, 0);
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5050.setIndexBuffer(buffer5038, "uint16");
    device40.queue.submit([]);
    render_pass_encoder5051.drawIndexedIndirect(buffer5043, 0);
    render_pass_encoder5010.draw(3);
    const buffer5091 = device50.createBuffer({
        label: "buffer5091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5092 = device50.createBuffer({
        label: "buffer5092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5036 = device50.createBindGroup({
        label: "bind_group5036",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5092,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5036);
    render_pass_encoder5041.drawIndexed(3);
    render_pass_encoder5050.drawIndexedIndirect(buffer5012, 0);
    device60.queue.submit([]);
    render_pass_encoder5021.draw(3);
    render_pass_encoder5030.drawIndexedIndirect(buffer5031, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5041.drawIndexedIndirect(buffer5077, 0);
    render_pass_encoder5030.drawIndirect(buffer5069, 0);
    const buffer4069 = device40.createBuffer({
        label: "buffer4069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4070 = device40.createBuffer({
        label: "buffer4070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4070,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4024);
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    render_pass_encoder5020.setIndexBuffer(buffer5079, "uint16");
    device70.queue.submit([]);
    render_pass_encoder5051.drawIndirect(buffer5040, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5078, 0);
    render_pass_encoder5050.end();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer5066, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5041.drawIndirect(buffer5069, 0);
    render_pass_encoder5041.setIndexBuffer(buffer5072, "uint16");
    render_pass_encoder5041.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5086, 0);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5030.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5041.drawIndexedIndirect(buffer5076, 0);
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder5021.drawIndexedIndirect(buffer5017, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5077, 0);
    render_pass_encoder5000.drawIndirect(buffer5081, 0);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5021.end();
    render_pass_encoder5040.drawIndexedIndirect(buffer5028, 0);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer5012, 0);
    compute_pass_encoder4010.end();
    device50.queue.submit([command_buffer504, ]);
    device10.queue.submit([]);
    render_pass_encoder5021.drawIndirect(buffer5016, 0);
    render_pass_encoder5021.drawIndirect(buffer5084, 0);
    render_pass_encoder5010.end();
    render_pass_encoder4010.endOcclusionQuery()
    device60.queue.submit([]);
    const buffer4071 = device40.createBuffer({
        label: "buffer4071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4072 = device40.createBuffer({
        label: "buffer4072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4025 = device40.createBindGroup({
        label: "bind_group4025",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4072,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4025);
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    render_pass_encoder5030.drawIndexedIndirect(buffer5020, 0);
    render_pass_encoder5051.popDebugGroup();
    render_pass_encoder5041.drawIndirect(buffer5025, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5073, "uint16");
    render_pass_encoder5010.drawIndirect(buffer5015, 0);
    render_pass_encoder5041.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5041.drawIndirect(buffer5079, 0);
    render_pass_encoder5020.end();
    const buffer4073 = device40.createBuffer({
        label: "buffer4073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4074 = device40.createBuffer({
        label: "buffer4074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4026 = device40.createBindGroup({
        label: "bind_group4026",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4074,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4026);
    render_pass_encoder5051.drawIndirect(buffer5026, 0);
    render_pass_encoder5021.drawIndirect(buffer5078, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder5001.end();
    render_pass_encoder5050.drawIndexedIndirect(buffer5072, 0);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5050.drawIndirect(buffer5041, 0);
    render_pass_encoder5040.drawIndirect(buffer5054, 0);
    render_pass_encoder5021.drawIndirect(buffer5076, 0);
    render_pass_encoder5051.drawIndirect(buffer5053, 0);
    render_pass_encoder5040.end();
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer5076, 0);
    render_pass_encoder5030.drawIndirect(buffer5065, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5020.drawIndexedIndirect(buffer5076, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5040, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5048, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder5051.drawIndirect(buffer5084, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5028, 0);
    render_pass_encoder5020.drawIndirect(buffer5062, 0);
    render_pass_encoder5021.drawIndirect(buffer5065, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5040, 0);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5030.end();
    render_pass_encoder5001.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder5001.drawIndirect(buffer5062, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5030.drawIndexedIndirect(buffer5076, 0);
    render_pass_encoder5041.drawIndirect(buffer5090, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5039, 0);
    compute_pass_encoder5000.end();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5021.drawIndirect(buffer5058, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5084, 0);
    render_pass_encoder5021.drawIndirect(buffer5062, 0);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder5000.end();
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5000.setIndexBuffer(buffer5040, "uint16");
    render_pass_encoder5041.drawIndirect(buffer5084, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5092, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer507, 0);
    const buffer5093 = device50.createBuffer({
        label: "buffer5093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5094 = device50.createBuffer({
        label: "buffer5094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5037 = device50.createBindGroup({
        label: "bind_group5037",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5094,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5037);
    render_pass_encoder5010.end();
    render_pass_encoder5000.setIndexBuffer(buffer5080, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer5066, "uint16");
    render_pass_encoder5051.drawIndexedIndirect(buffer506, 0);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer405, ]);
    render_pass_encoder5041.drawIndirect(buffer5079, 0);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer5066, 0);
    compute_pass_encoder4010.end();
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder5020.setIndexBuffer(buffer5021, "uint16");
    render_pass_encoder5000.drawIndirect(buffer5050, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5066, 0);
    render_pass_encoder5040.drawIndirect(buffer5079, 0);
    render_pass_encoder5030.drawIndirect(buffer500, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5052, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder5021.drawIndirect(buffer5048, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5076, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5094, "uint16");
    render_pass_encoder5020.endOcclusionQuery()
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5040.drawIndexedIndirect(buffer5048, 0);
    render_pass_encoder5041.drawIndirect(buffer5078, 0);
    render_pass_encoder5030.popDebugGroup();
    const buffer5095 = device50.createBuffer({
        label: "buffer5095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5096 = device50.createBuffer({
        label: "buffer5096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5038 = device50.createBindGroup({
        label: "bind_group5038",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5096,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5038);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5041.setIndexBuffer(buffer5094, "uint16");
    render_pass_encoder5021.drawIndirect(buffer5074, 0);
    render_pass_encoder5030.drawIndirect(buffer505, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5021.drawIndirect(buffer5077, 0);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5041.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5051.drawIndexedIndirect(buffer5043, 0);
    render_pass_encoder5001.end();
    render_pass_encoder5010.drawIndirect(buffer5069, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    render_pass_encoder5051.drawIndexedIndirect(buffer5053, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer5030, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5070, 0);
    render_pass_encoder4060.endOcclusionQuery()
    const buffer5097 = device50.createBuffer({
        label: "buffer5097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5098 = device50.createBuffer({
        label: "buffer5098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5039 = device50.createBindGroup({
        label: "bind_group5039",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5098,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5039);
    render_pass_encoder5001.setIndexBuffer(buffer5022, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5020.drawIndexedIndirect(buffer5097, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5015, 0);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5051.drawIndirect(buffer5079, 0);
    render_pass_encoder5051.draw(3);
    render_pass_encoder5030.drawIndexedIndirect(buffer5062, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5041.drawIndexedIndirect(buffer5053, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.setIndexBuffer(buffer506, "uint16");
    device50.queue.submit([command_buffer503, command_buffer505, ]);
    render_pass_encoder5050.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5053, 0);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5050.setIndexBuffer(buffer5041, "uint16");
    render_pass_encoder5000.popDebugGroup();
    device00.queue.submit([]);
    compute_pass_encoder4000.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer5070, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5040, 0);
    render_pass_encoder5051.drawIndirect(buffer5072, 0);
    render_pass_encoder5020.drawIndirect(buffer5059, 0);
    render_pass_encoder5030.drawIndirect(buffer5047, 0);
    render_pass_encoder5040.end();
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder5020.drawIndexed(3);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5099 = device50.createBuffer({
        label: "buffer5099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5099, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5099, 0);
    const buffer4075 = device40.createBuffer({
        label: "buffer4075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4076 = device40.createBuffer({
        label: "buffer4076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4027 = device40.createBindGroup({
        label: "bind_group4027",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4076,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4027);
    render_pass_encoder5040.drawIndirect(buffer5048, 0);
    render_pass_encoder5021.end();
    render_pass_encoder5021.setIndexBuffer(buffer5092, "uint16");
    render_pass_encoder5050.drawIndirect(buffer5059, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5051.drawIndexedIndirect(buffer5077, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5090, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5089, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5084, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5098, 0);
    render_pass_encoder5041.drawIndirect(buffer5026, 0);
    render_pass_encoder5050.drawIndirect(buffer5078, 0);
    const buffer50100 = device50.createBuffer({
        label: "buffer50100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer50101 = device50.createBuffer({
        label: "buffer50101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5040 = device50.createBindGroup({
        label: "bind_group5040",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer50100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer50101,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5040);
    render_pass_encoder5010.drawIndexedIndirect(buffer5062, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5079, "uint16");
    render_pass_encoder5050.drawIndirect(buffer507, 0);
    render_pass_encoder5050.drawIndirect(buffer5099, 0);
    render_pass_encoder5000.drawIndirect(buffer5021, 0);
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5020.drawIndexedIndirect(buffer5089, 0);
    render_pass_encoder5020.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5041.setIndexBuffer(buffer501, "uint16");
    device20.queue.submit([]);
    render_pass_encoder5030.drawIndexedIndirect(buffer5045, 0);
    render_pass_encoder5020.endOcclusionQuery()
    render_pass_encoder5020.drawIndirect(buffer5082, 0);
    render_pass_encoder5050.drawIndirect(buffer5050, 0);
    render_pass_encoder5001.setIndexBuffer(buffer5040, "uint16");
    render_pass_encoder5001.drawIndirect(buffer5084, 0);
    render_pass_encoder5051.drawIndirect(buffer5072, 0);
    render_pass_encoder5020.drawIndirect(buffer5090, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5043, 0);
    render_pass_encoder5010.end();
    render_pass_encoder5041.drawIndirect(buffer5047, 0);
    const buffer4077 = device40.createBuffer({
        label: "buffer4077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4078 = device40.createBuffer({
        label: "buffer4078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4028 = device40.createBindGroup({
        label: "bind_group4028",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4078,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4028);
    compute_pass_encoder4030.end();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4079 = device40.createBuffer({
        label: "buffer4079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4079, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4079, 0);
    render_pass_encoder5010.drawIndirect(buffer5066, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5078, 0);
    render_pass_encoder5001.drawIndirect(buffer5062, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder5040.setIndexBuffer(buffer5059, "uint16");
    render_pass_encoder5050.setIndexBuffer(buffer5088, "uint16");
    render_pass_encoder5030.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5079, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5089, 0);
    device70.queue.submit([]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer5076, 0);
    const buffer50102 = device50.createBuffer({
        label: "buffer50102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer50103 = device50.createBuffer({
        label: "buffer50103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5041 = device50.createBindGroup({
        label: "bind_group5041",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer50102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer50103,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5041);
    render_pass_encoder5000.drawIndexedIndirect(buffer5040, 0);
    render_pass_encoder5051.drawIndexed(3);
    render_pass_encoder5050.end();
    render_pass_encoder5020.drawIndirect(buffer5077, 0);
    render_pass_encoder5020.drawIndirect(buffer5069, 0);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5041.setIndexBuffer(buffer5017, "uint16");
    render_pass_encoder5021.drawIndirect(buffer5010, 0);
    render_pass_encoder5021.drawIndirect(buffer5048, 0);
    render_pass_encoder5041.setIndexBuffer(buffer5056, "uint16");
    render_pass_encoder5001.drawIndexedIndirect(buffer5089, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5010.drawIndexedIndirect(buffer5022, 0);
    render_pass_encoder5001.end();
    render_pass_encoder5041.end();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder5021.drawIndirect(buffer5062, 0);
    render_pass_encoder5041.drawIndirect(buffer5042, 0);
    render_pass_encoder5051.drawIndirect(buffer5082, 0);
    render_pass_encoder5040.drawIndirect(buffer5079, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5038, 0);
    render_pass_encoder5030.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder5051.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder5001.drawIndirect(buffer5069, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5099, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5051.drawIndirect(buffer5053, 0);
    device10.queue.submit([]);
    render_pass_encoder5021.drawIndexedIndirect(buffer5060, 0);
    device50.queue.submit([command_buffer501, command_buffer504, ]);
    render_pass_encoder5000.drawIndirect(buffer5076, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5084, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5099, 0);
    const buffer4080 = device40.createBuffer({
        label: "buffer4080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4081 = device40.createBuffer({
        label: "buffer4081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4029 = device40.createBindGroup({
        label: "bind_group4029",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4081,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4029);
    render_pass_encoder5030.drawIndirect(buffer5062, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5020, 0);
    render_pass_encoder5021.setIndexBuffer(buffer5067, "uint16");
    render_pass_encoder5041.drawIndirect(buffer5069, 0);
    render_pass_encoder5030.end();
    render_pass_encoder5040.drawIndexedIndirect(buffer5069, 0);
    render_pass_encoder5051.end();
    render_pass_encoder5030.drawIndirect(buffer5090, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5030.drawIndirect(buffer5069, 0);
    render_pass_encoder5001.drawIndirect(buffer5013, 0);
    render_pass_encoder5041.draw(3);
    render_pass_encoder5041.drawIndexedIndirect(buffer5076, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5050.drawIndexedIndirect(buffer5014, 0);
    const buffer4082 = device40.createBuffer({
        label: "buffer4082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4083 = device40.createBuffer({
        label: "buffer4083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4030 = device40.createBindGroup({
        label: "bind_group4030",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4083,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4030);
    render_pass_encoder4010.popDebugGroup();
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder5040.drawIndirect(buffer5015, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5061, 0);
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer50104 = device50.createBuffer({
        label: "buffer50104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer50104, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer50104, 0);
    render_pass_encoder5010.drawIndirect(buffer5043, 0);
    render_pass_encoder5030.drawIndirect(buffer5076, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5076, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder5010.drawIndirect(buffer5032, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder5040.drawIndexedIndirect(buffer5058, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5089, 0);
    device10.queue.submit([]);
    render_pass_encoder5021.drawIndirect(buffer5090, 0);
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5021.drawIndirect(buffer5015, 0);
    render_pass_encoder4060.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder5000.end();
    render_pass_encoder5001.end();
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer5030, "uint16");
    render_pass_encoder5000.drawIndirect(buffer5052, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5030.drawIndexedIndirect(buffer5053, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder5030.drawIndirect(buffer5053, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5069, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5046, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5089, 0);
    render_pass_encoder5000.drawIndirect(buffer5079, 0);
    render_pass_encoder5010.drawIndirect(buffer5066, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5094, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5041.popDebugGroup();
    const buffer4084 = device40.createBuffer({
        label: "buffer4084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4085 = device40.createBuffer({
        label: "buffer4085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4031 = device40.createBindGroup({
        label: "bind_group4031",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4085,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4031);
    const buffer4086 = device40.createBuffer({
        label: "buffer4086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4087 = device40.createBuffer({
        label: "buffer4087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4032 = device40.createBindGroup({
        label: "bind_group4032",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4087,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4032);
    render_pass_encoder5051.drawIndirect(buffer5012, 0);
    compute_pass_encoder4000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.drawIndirect(buffer5066, 0);
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer50105 = device50.createBuffer({
        label: "buffer50105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer50105, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer50105, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5089, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5027, 0);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([]);
    render_pass_encoder5021.setIndexBuffer(buffer5056, "uint16");
    render_pass_encoder5030.drawIndirect(buffer5089, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5042, "uint16");
    render_pass_encoder5021.drawIndirect(buffer5076, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5086, 0);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5020.setIndexBuffer(buffer509, "uint16");
    compute_pass_encoder5001.end();
    device60.queue.submit([]);
    render_pass_encoder5030.setIndexBuffer(buffer5076, "uint16");
    render_pass_encoder5041.drawIndirect(buffer5099, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5018, 0);
    compute_pass_encoder5000.popDebugGroup()
    const buffer50106 = device50.createBuffer({
        label: "buffer50106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer50107 = device50.createBuffer({
        label: "buffer50107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5042 = device50.createBindGroup({
        label: "bind_group5042",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer50106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer50107,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5042);
    render_pass_encoder5040.drawIndirect(buffer508, 0);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder5000.drawIndirect(buffer5021, 0);
    render_pass_encoder5041.end();
    render_pass_encoder5020.drawIndirect(buffer5018, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder5050.drawIndexedIndirect(buffer5078, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5061, 0);
    render_pass_encoder5020.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5000.end();
    render_pass_encoder5000.drawIndirect(buffer5076, 0);
    compute_pass_encoder4030.end();
    render_pass_encoder5000.drawIndirect(buffer5021, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5076, 0);
    render_pass_encoder5050.drawIndirect(buffer5052, 0);
    render_pass_encoder5010.drawIndirect(buffer5099, 0);
    const buffer50108 = device50.createBuffer({
        label: "buffer50108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer50109 = device50.createBuffer({
        label: "buffer50109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5043 = device50.createBindGroup({
        label: "bind_group5043",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer50108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer50109,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5043);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer5043, 0);
    render_pass_encoder5000.drawIndirect(buffer5069, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5062, 0);
    render_pass_encoder5020.drawIndirect(buffer5043, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5051.drawIndirect(buffer5072, 0);
    compute_pass_encoder5001.end();
    render_pass_encoder5041.setIndexBuffer(buffer5065, "uint16");
    render_pass_encoder5041.drawIndexedIndirect(buffer5084, 0);
    const buffer4088 = device40.createBuffer({
        label: "buffer4088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4089 = device40.createBuffer({
        label: "buffer4089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4033 = device40.createBindGroup({
        label: "bind_group4033",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4089,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4033);
    device50.queue.submit([command_buffer502, ]);
    device40.queue.submit([command_buffer404, ]);
    device60.queue.submit([]);
    render_pass_encoder5020.drawIndirect(buffer5066, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5066, 0);
    render_pass_encoder5020.drawIndirect(buffer5060, 0);
    render_pass_encoder5030.drawIndirect(buffer5024, 0);
    render_pass_encoder5020.drawIndirect(buffer50105, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5050.drawIndexed(3);
    render_pass_encoder5001.drawIndirect(buffer5053, 0);
    render_pass_encoder5020.setIndexBuffer(buffer5066, "uint16");
    render_pass_encoder5041.drawIndexedIndirect(buffer5055, 0);
    render_pass_encoder5000.drawIndirect(buffer5089, 0);
    compute_pass_encoder4010.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5051.drawIndirect(buffer5098, 0);
    render_pass_encoder5020.draw(3);
    render_pass_encoder5021.setIndexBuffer(buffer5074, "uint16");
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5041.drawIndexedIndirect(buffer5062, 0);
    const buffer50110 = device50.createBuffer({
        label: "buffer50110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer50111 = device50.createBuffer({
        label: "buffer50111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5044 = device50.createBindGroup({
        label: "bind_group5044",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer50110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer50111,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5044);
    render_pass_encoder5041.setIndexBuffer(buffer50111, "uint16");
    render_pass_encoder5050.drawIndexedIndirect(buffer5099, 0);
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    render_pass_encoder5051.drawIndirect(buffer5061, 0);
    const buffer4090 = device40.createBuffer({
        label: "buffer4090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4091 = device40.createBuffer({
        label: "buffer4091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4034 = device40.createBindGroup({
        label: "bind_group4034",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4091,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4034);
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer50112 = device50.createBuffer({
        label: "buffer50112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer50112, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer50112, 0);
    render_pass_encoder5020.endOcclusionQuery()
    render_pass_encoder5020.drawIndirect(buffer5076, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5021.drawIndexedIndirect(buffer50110, 0);
    render_pass_encoder5040.drawIndirect(buffer5090, 0);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5000.setIndexBuffer(buffer50101, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder5051.drawIndirect(buffer5077, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer5053, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder5041.drawIndexedIndirect(buffer5088, 0);
    render_pass_encoder5021.end();
    render_pass_encoder5051.drawIndirect(buffer50105, 0);
    render_pass_encoder5041.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5093, 0);
    device50.queue.submit([command_buffer503, ]);
    const buffer4092 = device40.createBuffer({
        label: "buffer4092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4093 = device40.createBuffer({
        label: "buffer4093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4035 = device40.createBindGroup({
        label: "bind_group4035",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4093,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4035);
    render_pass_encoder4060.popDebugGroup();
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder5000.drawIndexedIndirect(buffer5027, 0);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5050.drawIndexedIndirect(buffer5038, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5041.drawIndexedIndirect(buffer5048, 0);
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder5010.drawIndirect(buffer5077, 0);
    render_pass_encoder5050.drawIndirect(buffer5069, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5021.drawIndirect(buffer5035, 0);
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder5021.end();
    render_pass_encoder5030.end();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5051.setIndexBuffer(buffer5073, "uint16");
    render_pass_encoder5040.drawIndirect(buffer5024, 0);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder5040.drawIndirect(buffer5026, 0);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer50113 = device50.createBuffer({
        label: "buffer50113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer50113, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer50113, 0);
    render_pass_encoder5020.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder5050.drawIndirect(buffer50113, 0);
    const buffer50114 = device50.createBuffer({
        label: "buffer50114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer50115 = device50.createBuffer({
        label: "buffer50115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5045 = device50.createBindGroup({
        label: "bind_group5045",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer50114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer50115,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5045);
    render_pass_encoder5030.drawIndirect(buffer5079, 0);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder5050.drawIndexedIndirect(buffer505, 0);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5051.drawIndexedIndirect(buffer50106, 0);
    render_pass_encoder5050.drawIndexedIndirect(buffer5063, 0);
    render_pass_encoder5040.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5000.end();
}