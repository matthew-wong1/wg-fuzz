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
    
    const array0 = new Float32Array([1.0, 1.0, -0.25, 0.5, 1.0, 1.0, -1.0, 0.75, 0.25, 0.0, -0.25, -0.5, 0.5, -0.5, 0.5, 1.0, 1.0, -0.5, -0.75, -0.25, -0.75, 1.0, 0.75, -0.25, 0.75, -0.25, 0.5, 0.25, -0.25, 0.0, 0.75, 0.5, 1.0, 0.0, 0.25, 0.5, -0.75, -0.25, 0.5, -0.25, 0.75, -0.5, -1.0, 1.0, 1.0, 0.0, 0.5, -0.75, 0.5, -0.75, -0.75, -0.5, -0.25, -1.0, 1.0, 0.75, 0.5, -0.75, -0.25, 0.0, 0.75, 1.0, 0.0, 0.25, -1.0, -0.5, 0.5, -0.75, -0.5, 0.0, 0.75, -1.0, 0.75, 0.75, -1.0, -0.25, 0.25, -0.75, 1.0, -0.75, 0.0, -0.75, 0.25, 1.0, 0.25, -0.25, -0.75, 0.25, 0.25, 0.25, 0.75, -0.75, -1.0, 0.0, 0.25, 0.5, -0.75, 0.5, -0.75, -0.25, ]);
    
    const array1 = new Float32Array([-0.5, -0.25, 0.0, -0.5, 0.25, 0.25, 0.25, -0.75, -1.0, 1.0, -0.5, -0.75, 0.0, 0.5, 0.25, -0.25, -0.5, -0.25, -1.0, 0.25, -1.0, 0.0, -1.0, 0.5, -1.0, 0.75, 1.0, 0.75, 0.75, 0.75, 0.75, -0.75, 0.25, 1.0, 0.5, 0.5, -0.75, -1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 0.25, 0.25, -0.25, -0.75, 0.25, -1.0, -0.5, 0.5, -1.0, -0.75, -0.5, 0.75, 0.75, -0.25, -0.25, 0.0, 0.75, 0.0, -0.75, 0.25, -0.75, -0.5, 1.0, 0.5, 1.0, -1.0, 0.75, -0.5, -0.25, 0.75, -0.25, -0.75, 0.75, 0.25, 0.5, 0.5, -0.75, -1.0, 1.0, -0.5, 0.75, 0.0, -0.25, 0.5, 0.0, -0.5, -1.0, -1.0, 1.0, 0.25, 0.0, -0.75, -0.75, -0.25, -0.75, 1.0, -1.0, ]);
    const array2 = new Float32Array([0.0, 0.5, -0.75, -0.75, -0.75, -1.0, 0.0, 0.25, -0.75, 1.0, -0.75, 0.5, -0.25, -0.75, 0.5, 0.5, 0.5, -0.75, 0.25, 0.5, -1.0, 0.0, 0.0, 0.0, 1.0, 0.75, -0.25, 0.0, -0.25, 1.0, -1.0, 0.25, -0.5, -0.75, -0.25, -0.25, 1.0, -0.25, -0.5, 1.0, 1.0, -0.25, -0.5, 0.75, 0.25, 0.75, -0.75, -0.5, -1.0, -0.75, 0.5, 0.5, -1.0, 0.5, 0.75, 1.0, -0.25, -0.25, 0.5, -0.75, -1.0, -0.5, -0.25, 1.0, 0.0, -0.25, 0.0, 0.75, 1.0, -0.75, -0.5, -0.75, 0.0, -1.0, -0.5, -1.0, 0.5, 0.5, 0.0, 1.0, -0.75, 0.25, -0.75, 0.5, -0.5, -1.0, 0.75, -0.5, -0.25, 1.0, 1.0, 0.25, 0.5, -0.25, 0.5, 0.0, 0.75, -0.75, 0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array3 = new Float32Array([1.0, 0.0, 0.75, 1.0, 0.5, -1.0, 0.5, -1.0, -0.5, 0.5, 0.75, 0.0, -0.5, 0.5, 0.5, -1.0, 0.75, -1.0, 1.0, -0.75, -1.0, -0.5, -1.0, 0.25, -0.25, 0.5, -0.25, 0.0, -0.25, 1.0, 0.0, 0.25, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, 0.0, 0.25, -1.0, 0.25, -0.25, 0.0, 0.5, 0.5, -0.5, 0.5, 1.0, -0.25, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -1.0, -0.5, -0.25, 0.5, -0.25, -0.75, 0.25, -0.5, 0.0, 0.25, 0.25, -0.25, -0.75, -1.0, 0.75, 0.75, -0.25, 0.5, 0.25, 0.5, 0.0, 0.5, -0.5, -0.5, -0.75, -0.75, -0.25, -0.5, 0.5, 0.0, 0.25, 0.25, -0.75, -0.5, -0.75, -0.25, -1.0, -1.0, -0.5, 0.25, -0.5, 0.5, 0.75, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device10.pushErrorScope("internal");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array4 = new Float32Array([-1.0, 0.25, 0.0, -0.75, 0.0, 0.75, -1.0, 0.5, -1.0, -0.25, 1.0, 0.0, 0.5, -1.0, 0.25, 0.75, 0.75, -0.5, 0.0, -0.75, 0.75, 0.0, 0.75, -0.25, -0.5, 0.75, -0.5, 0.25, -0.75, 0.0, -0.5, -0.75, -0.75, 0.25, 0.5, 0.25, -1.0, -0.5, -0.5, 1.0, 0.25, 0.0, 0.0, -0.5, 0.25, 0.75, -0.25, -1.0, -0.5, 1.0, 0.25, 0.5, 0.25, -0.25, -0.75, -0.5, 0.25, 0.5, 0.0, 0.25, -0.5, -0.75, 0.5, 0.75, 0.25, -1.0, -0.5, 1.0, 0.25, -1.0, 0.0, -0.5, -0.25, -0.75, -0.5, 1.0, -1.0, 0.0, -0.75, -0.75, 0.0, 0.0, 0.25, -0.5, -0.75, 1.0, 0.0, 0.75, 0.25, 0.25, 0.75, -1.0, -0.75, 0.75, -0.75, 0.75, -1.0, 0.75, -0.75, -0.5, ]);
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    const command_buffer100 = command_encoder100.finish();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    texture001.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    texture101.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    command_encoder101.insertDebugMarker("mymarker");
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_buffer101 = command_encoder101.finish();
    
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
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
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    render_bundle_encoder002.setPipeline(render_pipeline001);
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
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0001.popDebugGroup()
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    
    buffer001.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    buffer002.destroy()
    
    texture002.destroy();
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
        occlusionQuerySet: query000
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array5 = new Float32Array([1.0, -0.25, 0.75, 0.5, -0.5, -0.75, 1.0, 0.5, 1.0, 1.0, 0.0, 0.75, 0.5, 0.0, -0.75, -0.75, -0.5, -0.75, 0.25, 0.0, 0.5, -0.25, 0.75, 0.5, 0.0, 0.5, 1.0, 0.5, 0.5, -1.0, -1.0, 1.0, -0.5, 0.75, 0.0, -0.5, 0.25, -1.0, 1.0, 0.0, 0.5, 0.25, 0.5, -1.0, 1.0, 0.75, 0.5, 1.0, -0.75, -0.25, 0.5, 1.0, 0.0, 0.75, 1.0, -1.0, 0.0, 0.25, 0.25, 0.5, -0.75, -0.5, -0.5, 0.25, -0.5, 0.0, 1.0, 1.0, -0.25, 0.0, 1.0, 1.0, 1.0, 1.0, -0.5, 0.25, -0.25, -1.0, 1.0, 0.75, 0.25, 0.75, -0.5, -1.0, 1.0, -0.25, -0.25, 0.0, -0.5, -0.25, -0.25, -1.0, 0.75, 0.0, 1.0, 0.75, 0.5, 0.0, 1.0, -0.5, ]);
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    query500.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture500.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    
    device50.pushErrorScope("out-of-memory");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder001.popDebugGroup();
    
    query000.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0001.setPipeline(compute_pipeline002);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    device20.destroy();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
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
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer301.destroy()
    render_pass_encoder1020.executeBundles([])
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
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

    render_pass_encoder0000.setBindGroup(0, bind_group002);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group003);
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    
    render_pass_encoder0000.setVertexBuffer(0, buffer004);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group004);
    texture103.destroy();
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const array6 = new Float32Array([-1.0, 1.0, 0.5, 0.0, 1.0, -1.0, -0.25, 0.0, -0.5, 0.5, 0.25, 0.0, 1.0, 0.75, -0.75, -0.25, -0.5, 0.75, 0.5, -1.0, -0.75, -0.25, 0.0, -0.5, -1.0, 0.25, -0.25, 0.5, 0.25, 0.75, -0.75, 0.75, -0.5, 0.25, 0.0, 0.25, 1.0, 0.0, -1.0, -1.0, 0.5, -0.75, -0.75, 1.0, -0.75, 0.25, 0.25, -0.75, -0.25, -0.25, 0.75, 0.5, 0.75, 0.75, -0.25, 1.0, -0.5, 0.0, 0.5, 0.75, 0.25, 1.0, 0.75, 0.75, 0.0, -0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.0, 0.75, -0.75, -1.0, 1.0, 0.25, 1.0, -0.75, -0.5, 1.0, -1.0, -0.25, 0.0, 0.0, 0.0, 0.0, 1.0, 0.5, 0.5, -0.5, -0.25, -0.75, -0.5, -0.25, -0.75, 0.75, 0.5, -1.0, 0.25, ]);
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    
    query500.destroy()
    compute_pass_encoder0001.insertDebugMarker("marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    texture103.destroy();
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    query302.destroy()
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    const command_buffer103 = command_encoder103.finish();
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.setPipeline(render_pipeline103);
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0020.dispatchWorkgroups(100);
    
    
    compute_pass_encoder0010.setPipeline(compute_pipeline004);
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer102.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer008.destroy()
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer005.destroy()
    query001.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    texture004.destroy();
    buffer400.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder100.popDebugGroup();
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder1020.beginOcclusionQuery(0)
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
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    buffer004.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setStencilReference(1);
    
    compute_pass_encoder0000.popDebugGroup()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0001.insertDebugMarker("marker")
    query002.destroy()
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    buffer101.destroy()
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.popDebugGroup();
    query304.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    query000.destroy()
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer009);
    render_bundle_encoder002.setVertexBuffer(0, buffer007);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder0000.pushDebugGroup("group_marker");
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder000.draw(3);
    render_pass_encoder1021.setPipeline(render_pipeline104);
    
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1020.endOcclusionQuery()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.draw(3);
    texture400.destroy();
    
    device10.pushErrorScope("out-of-memory");
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group100);
    
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
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder1040.setPipeline(render_pipeline102);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device30.destroy();
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0011, 0);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setPipeline(render_pipeline000);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0030.setPipeline(render_pipeline003);
    texture402.destroy();
    command_encoder000.insertDebugMarker("mymarker");
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    texture005.destroy();
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1021.setVertexBuffer(0, buffer101);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder000.finish();
    render_pass_encoder1040.insertDebugMarker("marker");
    buffer006.destroy()
    query100.destroy()
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    command_encoder001.copyTextureToTexture(
        {
            texture: texture004
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
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    buffer009.destroy()
    command_encoder004.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture105 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query001
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group102);
    render_pass_encoder1041.setPipeline(render_pipeline103);
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
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
        occlusionQuerySet: query001
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder1021.insertDebugMarker("marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setPipeline(render_pipeline005);
    render_pass_encoder0010.setPipeline(render_pipeline006);
    render_pass_encoder0040.setPipeline(render_pipeline001);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1040.setVertexBuffer(0, buffer100);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0030.setVertexBuffer(0, buffer0013);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1040.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0030.draw(3);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.setVertexBuffer(0, buffer105);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group103);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1041.setVertexBuffer(0, buffer103);
    device50.queue.submit([]);
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder1041.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    const command_buffer001 = command_encoder001.finish();
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group007);
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    const command_buffer102 = command_encoder102.finish();
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1041.drawIndexed(3);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group009);
    render_pass_encoder1041.end();
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.draw(3);
    command_encoder000.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0010);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder0040.setVertexBuffer(0, buffer0023);
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder0010.setVertexBuffer(0, buffer003);
    compute_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder0031.setVertexBuffer(0, buffer0015);
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    render_pass_encoder1020.drawIndexed(3);
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0040.end();
    compute_pass_encoder0010.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0028, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder1040.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    device40.queue.submit([]);
    render_pass_encoder0010.end();
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1021.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    compute_pass_encoder0001.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
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
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group0015);
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    render_pass_encoder0020.setVertexBuffer(0, buffer0033);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.end();
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder0010.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    device50.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.end();
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    device30.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1041.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    device50.queue.submit([]);
    render_pass_encoder0030.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.drawIndexed(3);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0023, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder1021.end();
    device40.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder1021.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0000.drawIndexed(3);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
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
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0017);
    render_pass_encoder0010.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    device50.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndexed(3);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0010.drawIndexed(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.popDebugGroup();
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer001, ]);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1040.end();
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    device10.queue.submit([command_buffer102, command_buffer104, ]);
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0020);
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0048, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder0031.drawIndirect(buffer0047, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0000.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder0010.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndexed(3);
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
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
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0021);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder1040.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1020.drawIndexed(3);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer103, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0023, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0052, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0049, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder0040.drawIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    compute_pass_encoder0001.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0010.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder1040.end();
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1041.setIndexBuffer(buffer104, "uint16");
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0056, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder1020.end();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    device40.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device50.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0020.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0034, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0059,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0023);
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1020.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndirect(buffer0057, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1040.end();
    render_pass_encoder0031.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndirect(buffer0060, 0);
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0024);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder1021.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0035, "uint16");
    device50.queue.submit([]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0060, 0);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1041.drawIndirect(buffer102, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0052, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0052, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1040.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0001.end();
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
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
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0025);
    device50.queue.submit([]);
    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0067,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0026);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer0057, 0);
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder1041.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.end();
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder0031.setIndexBuffer(buffer0035, "uint16");
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0028);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1041.end();
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device40.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0072, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0001.end();
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([]);
    device40.queue.submit([]);
    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0074,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0029);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0074, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0000.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0055, 0);
    render_pass_encoder0031.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0052, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0052, "uint16");
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
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0030);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    device10.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0077, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0077, 0);
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1041.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder0001.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.end();
    render_pass_encoder0010.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder0010.drawIndirect(buffer0064, 0);
    render_pass_encoder0031.drawIndirect(buffer0057, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder1021.end();
    render_pass_encoder0000.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0078, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0078, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1041.setIndexBuffer(buffer106, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0079, 0);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0031);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0032);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0070, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1021.draw(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    device00.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.popDebugGroup();
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
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0033);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer004, ]);
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
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0034);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0052, 0);
    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0089,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0035);
    render_pass_encoder0031.drawIndexedIndirect(buffer0039, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0085, 0);
    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
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
                    buffer: buffer0090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0091,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0036);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0000.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0093,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0037);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0077, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0077, 0);
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
    render_pass_encoder0030.drawIndirect(buffer0078, 0);
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    device00.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.end();
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
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0038);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0097, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0097, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0041, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0020.drawIndirect(buffer0078, 0);
    render_pass_encoder0000.drawIndirect(buffer0077, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0030.drawIndirect(buffer0094, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0000.end();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    compute_pass_encoder0000.end();
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
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0039);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.drawIndirect(buffer0087, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0078, 0);
    render_pass_encoder0040.drawIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    device40.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1041.setIndexBuffer(buffer107, "uint16");
    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00101,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0040);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0079, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00102, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.popDebugGroup();
    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00104,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0041);
    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00106,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0042);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0079, 0);
    device10.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0086, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00107, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00107, 0);
    render_pass_encoder0040.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0030.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
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
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0043);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder0001.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00102, 0);
    device40.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0078, 0);
    render_pass_encoder0030.drawIndirect(buffer00102, 0);
    render_pass_encoder0020.drawIndirect(buffer0097, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00111,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0044);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0031.drawIndirect(buffer0078, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    device10.queue.submit([]);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder0020.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0000.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    compute_pass_encoder0020.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.end();
    render_pass_encoder0000.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1021.draw(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0079, 0);
    device00.queue.submit([]);
    render_pass_encoder0031.draw(3);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    compute_pass_encoder0010.end();
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0060, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0031.drawIndirect(buffer0052, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device50.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0057, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0010.drawIndirect(buffer00101, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00112, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00112, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0072, 0);
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
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0045);
    render_pass_encoder1021.end();
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0099, 0);
}