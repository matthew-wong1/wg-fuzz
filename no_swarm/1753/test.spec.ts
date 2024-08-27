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
    const array0 = new Float32Array([0.5, -0.5, -0.25, -1.0, -0.5, 0.75, 0.5, -0.5, -0.5, -0.25, 0.5, -0.5, 1.0, 0.5, -1.0, 1.0, -1.0, -0.25, 1.0, 0.75, 0.25, 0.5, -0.5, 0.0, 0.0, 1.0, -1.0, 0.25, 0.0, -0.5, -1.0, 0.25, 0.5, 0.0, 0.25, -1.0, 0.75, 1.0, 0.25, -0.25, -0.25, -0.75, 0.25, -0.5, 0.5, -1.0, 1.0, 0.75, -1.0, -1.0, -0.75, 0.5, -0.5, -0.25, -0.5, 0.75, 0.5, 0.0, -0.25, -0.75, -1.0, 0.75, 0.25, 0.0, -0.5, -1.0, -0.25, 0.25, 0.0, -0.25, 0.5, 0.75, 1.0, 0.25, -1.0, -0.75, 0.0, -1.0, -0.25, -1.0, 0.75, 0.25, 1.0, 1.0, -0.5, -0.25, -1.0, 0.0, -0.5, 0.75, -0.75, 0.25, 0.0, -0.25, -0.5, 0.0, -0.75, -0.5, 0.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-1.0, 1.0, -0.75, 0.5, -0.25, -0.5, -0.5, -0.25, 0.75, 0.75, 0.5, -0.75, -0.75, -0.5, 0.0, 0.25, -0.75, 0.5, 0.75, 0.0, 0.0, -0.5, -0.75, -0.75, -0.5, -1.0, 0.0, 0.75, 1.0, 0.0, -0.5, 0.25, 0.75, 0.25, -0.25, -1.0, 0.0, 0.75, 0.75, 1.0, 0.25, -1.0, -0.25, -0.25, -0.75, -0.25, -0.5, 0.25, 0.75, 0.75, 0.75, 0.0, -0.5, -1.0, 0.25, -0.5, 0.5, 0.5, 0.75, 0.0, -0.5, -0.25, -0.25, 0.5, -1.0, 0.75, 0.25, -1.0, 1.0, -0.5, -1.0, 0.25, 1.0, 0.25, -0.75, 0.5, -0.5, 0.0, 1.0, 0.0, 0.0, -0.75, -0.25, 0.75, -0.75, 0.75, 1.0, 1.0, 1.0, -1.0, 0.0, 0.75, 0.0, 0.5, 0.25, 0.75, -0.75, -0.5, -0.25, 0.25, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    const array2 = new Float32Array([-1.0, 0.25, 0.5, 0.25, 0.75, -0.75, -1.0, 0.0, -0.25, 0.75, -1.0, 0.5, 1.0, 1.0, 0.5, 0.5, -1.0, 0.25, 0.75, -1.0, -0.75, -0.25, 0.5, 0.25, 0.5, -0.25, 0.25, -1.0, 0.25, 0.25, 1.0, 0.5, -0.75, 1.0, -0.25, -0.25, 1.0, 0.0, 0.25, 1.0, 0.0, 0.75, 0.5, 1.0, -0.25, -0.75, -0.75, -1.0, 0.25, 1.0, -1.0, 0.5, 0.5, 0.75, -1.0, -0.25, -0.25, 0.0, 0.25, 0.5, 1.0, 0.5, 0.75, -1.0, 0.75, 0.5, 0.5, -1.0, -0.5, 0.5, -1.0, -0.5, 0.5, 0.5, -1.0, -1.0, 1.0, 0.75, 0.0, -0.75, 0.75, 1.0, 0.75, 1.0, -0.5, -1.0, -0.75, -0.75, -0.5, -1.0, -1.0, -0.75, -0.25, 0.0, -1.0, -0.75, 0.0, -0.75, 0.0, 0.25, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const array3 = new Float32Array([-0.75, 0.75, -0.5, -1.0, 0.0, 1.0, 0.25, 0.75, -0.25, 0.25, -0.5, -0.75, -0.75, 0.0, -0.5, -0.75, -0.5, 0.0, 1.0, 1.0, -0.5, 0.0, -0.5, 0.5, 0.5, 0.25, 0.75, 0.0, -0.25, -0.5, 0.25, -0.5, 0.75, 0.25, 0.0, -0.25, -0.75, -0.25, -0.25, 0.25, -0.5, 0.5, 1.0, -0.25, 0.5, 0.25, -0.5, 0.25, 1.0, 1.0, 0.25, -0.5, -1.0, 0.0, 0.0, -0.75, 1.0, -0.75, -1.0, 0.0, -0.75, -0.25, -0.25, 1.0, 1.0, -0.5, 0.75, 0.75, -0.75, -0.25, -0.75, 1.0, 0.75, 0.25, 0.5, 1.0, 0.5, -0.5, 1.0, 1.0, -0.25, 0.25, -0.25, -0.5, 0.75, 1.0, -0.5, -0.5, 0.75, -0.5, -0.75, 0.75, 0.75, 0.25, 1.0, 1.0, -0.5, -1.0, -0.75, -0.5, ]);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    query000.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query000.destroy()
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("internal");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    
    device00.queue.submit([]);
    command_encoder001.pushDebugGroup("mygroupmarker")
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.0, -0.5, -0.25, -1.0, -0.25, 0.0, -0.75, -0.5, -0.25, 0.25, -1.0, 0.25, -0.5, 0.25, 0.75, -0.5, 0.75, 0.25, 0.0, -1.0, -0.25, 0.0, -0.25, 0.25, -0.5, -0.5, 0.0, 0.0, -0.25, -0.75, 0.25, 0.75, 0.5, -1.0, 0.0, -0.25, 0.0, 0.75, -0.25, -1.0, -0.5, 0.5, -0.25, 0.0, -0.75, -0.25, 0.0, 0.25, 0.0, -0.75, 0.0, 0.75, -0.25, -0.75, 0.75, 0.5, 0.75, -1.0, -1.0, -0.75, -1.0, 0.25, -1.0, 1.0, 0.0, 0.5, 0.5, 0.25, 1.0, 0.0, 0.0, 0.75, 0.75, -1.0, 0.25, 0.5, 0.0, -1.0, -0.5, 0.25, 0.0, 0.25, 0.0, 0.75, -0.25, -1.0, 0.25, -1.0, -1.0, -0.25, -0.5, -0.75, -0.75, 0.75, -0.75, 0.5, -0.5, -1.0, -0.5, -0.5, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    
    const array5 = new Float32Array([-0.5, 0.75, 0.5, 0.25, -0.5, -1.0, -0.75, 0.5, 0.0, 0.0, -1.0, -1.0, -0.25, -1.0, -1.0, 0.75, -1.0, -0.5, -1.0, 1.0, -0.25, -0.75, 1.0, 0.5, -1.0, -0.5, 0.75, -0.25, -0.5, -0.5, 0.75, 0.0, 1.0, 0.5, -0.75, -0.5, -0.75, 0.0, 0.0, -0.25, 0.0, -0.75, -0.25, 0.75, 0.25, 0.75, 1.0, -1.0, -0.5, 1.0, -0.5, -0.25, -1.0, -0.25, 0.25, -1.0, -0.25, 0.25, 0.75, -0.5, -0.25, -0.5, -0.75, -0.75, 0.0, 0.0, 1.0, 0.25, -0.25, -1.0, -0.25, -0.25, 0.0, -0.75, -0.75, 1.0, 1.0, 0.0, -0.5, -0.25, 0.5, 0.0, 0.75, 0.75, 0.75, -1.0, -0.5, 0.25, -1.0, -1.0, 0.0, 1.0, -0.25, 0.0, 0.25, 0.0, 0.0, -0.5, 0.0, -0.75, ]);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
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
    
    device10.destroy();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    buffer001.destroy()
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
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
    const command_buffer003 = command_encoder003.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.popDebugGroup();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer100.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array6 = new Float32Array([-0.25, -0.75, 0.75, -0.75, -0.25, -0.75, 0.5, -0.5, 0.0, -0.25, 0.75, 0.5, -0.75, 0.25, -0.5, 0.0, 0.75, -1.0, -0.5, -0.75, 0.25, -0.75, 0.25, -0.5, -0.5, 1.0, -0.5, 0.75, -0.75, 0.75, -0.25, 0.25, -0.25, -0.25, 0.5, -0.75, 1.0, -0.25, -1.0, 0.25, 0.5, -0.5, -0.25, 0.5, -0.25, -0.25, -1.0, -0.75, 0.75, -1.0, -0.75, -1.0, -0.25, -0.25, -0.5, -1.0, -1.0, 0.25, 1.0, 0.25, -0.25, -0.75, -0.5, 0.25, 1.0, 0.75, -0.25, -1.0, -0.25, -1.0, 0.25, -0.25, 0.0, -0.5, -1.0, 0.5, -0.75, 0.5, 1.0, 0.5, 0.75, -0.5, -0.75, -0.5, 1.0, 0.25, 0.5, -0.25, 0.5, 1.0, -0.75, 1.0, 0.5, 0.0, 0.0, -0.75, 0.5, -1.0, 1.0, 0.5, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const command_buffer200 = command_encoder200.finish();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    texture200.destroy();
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    device40.destroy();
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
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

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const array7 = new Float32Array([-0.5, 1.0, -0.5, -0.25, -0.25, 0.25, -1.0, 0.75, 0.5, -0.25, 0.75, 0.75, 0.5, 0.0, 0.25, -0.75, -0.5, -0.25, -0.75, 0.25, 0.25, -0.25, -1.0, -0.75, -1.0, 1.0, 0.0, 0.5, -0.5, -0.25, 0.75, 0.5, -0.25, -1.0, -1.0, -0.5, -0.75, 1.0, -0.75, -0.5, -0.5, -0.75, -1.0, -0.25, -0.25, -0.25, 0.0, 0.25, 1.0, 0.25, -0.75, 0.75, 0.75, -0.25, -0.25, -0.5, 1.0, 0.75, 0.0, -0.75, -0.5, 0.25, -0.75, -1.0, 0.75, -0.25, -0.5, 0.0, 0.25, 0.75, -1.0, 0.5, 0.75, 0.0, -0.75, 0.5, 0.75, -0.75, -1.0, -1.0, 0.75, 0.75, 0.0, -1.0, 0.0, -0.5, 0.25, 0.5, 0.75, -1.0, -0.5, 0.0, -0.25, -0.75, 0.0, -0.75, 0.75, -0.5, 0.25, -0.25, ]);
    render_bundle_encoder200.popDebugGroup();
    
    
    const command_buffer201 = command_encoder201.finish();
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    query200.destroy()
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
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
    const array8 = new Float32Array([-1.0, 0.5, 0.75, 0.25, -0.5, -0.75, 0.0, -0.5, -0.25, 0.0, -0.5, -0.75, 0.0, 0.75, -1.0, 0.75, -0.75, -1.0, 0.25, 0.5, 0.0, 1.0, -0.5, 1.0, 0.0, 0.5, -0.5, 1.0, -1.0, 1.0, 0.5, 0.75, 0.0, -1.0, -0.25, 1.0, 0.25, 0.75, 0.0, -0.5, -0.75, 0.75, 0.0, 0.0, -1.0, -0.75, 1.0, 0.75, -0.25, 0.25, 0.75, -0.75, 0.25, -1.0, -0.5, -1.0, 1.0, 0.75, -0.75, -1.0, -0.25, 1.0, -0.25, 1.0, -1.0, 0.25, 0.75, 0.5, 0.75, 0.25, -1.0, 0.75, -0.5, 0.25, 0.75, 0.75, -0.25, -0.75, -1.0, -0.5, -0.25, -1.0, 0.25, 0.75, -0.25, 0.5, -0.75, -0.25, 0.25, 0.75, -0.75, -0.25, -1.0, 0.0, -0.5, 0.5, -0.25, 0.0, -0.75, 0.0, ]);
    device50.pushErrorScope("internal");
    device20.pushErrorScope("internal");
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
        occlusionQuerySet: query201
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    render_bundle_encoder501.popDebugGroup();
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.pushErrorScope("out-of-memory");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
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
    query500.destroy()
    device00.pushErrorScope("validation");
    render_pass_encoder0020.setStencilReference(1);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array9 = new Float32Array([-0.5, 0.25, -0.25, -1.0, -1.0, 0.75, 0.75, -1.0, -1.0, -0.25, -0.75, 1.0, -0.25, -0.5, -0.25, -0.25, 0.75, -0.75, -0.75, -0.5, 0.75, 0.5, -1.0, 0.25, 0.25, 1.0, 1.0, 0.75, -0.5, 0.25, 0.5, -0.75, 0.0, -1.0, 0.5, 0.0, 0.75, 1.0, 0.5, -0.5, 0.75, 0.25, -1.0, -1.0, 0.25, 0.5, -0.75, 0.0, 1.0, -0.25, 0.25, 0.0, -0.75, 0.75, -0.5, 0.75, 1.0, 0.0, -0.5, -0.75, 1.0, -0.25, -1.0, 0.75, 0.0, -0.75, 0.5, 0.5, 0.5, -0.75, 0.0, -1.0, -1.0, -1.0, 1.0, -0.5, 0.25, 0.5, -0.25, -0.5, 1.0, 1.0, -0.75, 0.0, 0.5, 0.75, 0.5, -0.75, -1.0, -1.0, -0.25, 0.75, -1.0, 1.0, -0.5, 0.25, 0.75, 0.25, -0.5, 0.5, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder2020.executeBundles([])
    
    query500.destroy()
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder501.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    query000.destroy()
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array10 = new Float32Array([0.5, 1.0, 1.0, 1.0, -1.0, -1.0, 0.75, -0.25, 1.0, 0.75, 0.5, 0.25, -0.25, -1.0, 0.25, -0.5, 0.0, 0.75, 0.0, -1.0, 0.25, 0.5, -0.25, -1.0, -1.0, -1.0, -0.25, -1.0, 1.0, -0.25, -0.75, -1.0, -0.25, 0.0, 1.0, -0.25, 0.25, 0.0, 0.5, 0.75, 0.75, -0.75, -1.0, 1.0, -0.5, -0.5, 1.0, -0.25, 0.0, 0.75, 0.0, 1.0, 1.0, 0.25, 1.0, 1.0, 0.75, 0.75, -0.5, -0.5, -0.5, 0.0, -1.0, -0.75, 0.0, -0.75, 0.25, 0.25, -1.0, 0.0, 0.0, -1.0, 1.0, 0.25, -0.25, -1.0, 1.0, -0.5, -1.0, 1.0, -0.75, 0.75, 0.0, 0.75, -0.5, 0.5, -1.0, -0.25, -1.0, 0.0, -0.75, -0.75, 0.75, -0.5, -0.75, -0.75, 0.25, -0.25, -0.75, -1.0, ]);
    
    texture500.destroy();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_pass_encoder2020.beginOcclusionQuery(0)
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.executeBundles([])
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    device50.destroy();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_pass_encoder2020.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.executeBundles([render_bundle_encoder201, ])
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
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
    render_pass_encoder2020.endOcclusionQuery()
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    texture501.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    query701.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2031.setStencilReference(1);
    device70.queue.submit([]);
    device60.pushErrorScope("validation");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_pass_encoder2031.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const array11 = new Float32Array([0.5, -0.5, -0.5, 0.0, -0.75, 0.25, 0.0, 0.75, -0.25, 0.75, -0.25, -0.5, 0.25, -0.25, 0.0, 0.25, -0.25, 0.25, -0.5, 0.5, 0.0, 0.0, -1.0, 0.75, -0.75, 0.5, -0.75, 0.25, -0.25, 0.5, -0.75, -0.75, 1.0, 0.25, 0.0, -0.75, 0.75, 0.75, 1.0, 1.0, -0.25, -1.0, -0.25, -1.0, 0.25, 0.75, -0.5, -0.5, -0.75, -1.0, -1.0, -0.25, 0.25, -1.0, 0.75, 0.0, 0.5, 0.0, -0.75, -0.25, 0.25, 0.5, -0.5, -0.25, 0.0, 0.25, 0.0, 0.75, 0.5, 0.75, -0.75, 0.0, 0.5, 1.0, 0.0, 1.0, -0.25, 0.5, 0.25, -0.25, 0.25, 0.0, 0.25, 0.5, 0.75, 0.0, 0.75, -0.75, -0.5, -1.0, 0.0, 0.0, -0.5, -0.5, 1.0, -0.75, 0.25, -1.0, 0.75, -1.0, ]);
    query202.destroy()
    
    render_pass_encoder0020.popDebugGroup();
    
    
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    device20.pushErrorScope("validation");
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device50.pushErrorScope("validation");
    render_pass_encoder2020.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder2030.setPipeline(render_pipeline201);
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device70.destroy();
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2031.setPipeline(render_pipeline200);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    render_pass_encoder2020.setPipeline(render_pipeline201);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query201.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group201);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    query601.destroy()
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    buffer202.destroy()
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder2040.insertDebugMarker("marker");
    buffer300.destroy()
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
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
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
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

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    render_pass_encoder2040.endOcclusionQuery()
    texture600.destroy();
    render_pass_encoder2031.setVertexBuffer(0, buffer204);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.queue.writeBuffer(buffer204, 0, array10, 0, array10.length);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder204.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder2040.setPipeline(render_pipeline201);
    query203.destroy()
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder202.clearBuffer(buffer205);
    buffer205.destroy()
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    texture601.destroy();
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.setPipeline(render_pipeline202);
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder2040.pushDebugGroup("group_marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query602.destroy()
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_bundle_encoder600.setPipeline(render_pipeline601);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    device10.destroy();
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group203);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer600.destroy()
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query602.destroy()
    buffer200.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
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
    render_pass_encoder2031.setStencilReference(1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer003.destroy()
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture202.destroy();
    query601.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    device60.pushErrorScope("internal");
    buffer207.destroy()
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    render_pass_encoder2031.insertDebugMarker("marker");
    
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
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer208, 0, array1, 0, array1.length);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    buffer202.destroy()
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout204]
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    command_encoder602.resolveQuerySet(
        query601,
        0,
        32,
        buffer601,
        0
    )
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2031.drawIndexed(3);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group204);
    render_pass_encoder2020.setVertexBuffer(0, buffer206);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([]);
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

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    device30.queue.submit([]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setVertexBuffer(0, buffer203);
    const command_buffer602 = command_encoder602.finish();
    render_pass_encoder2020.end();
    render_pass_encoder2031.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.setVertexBuffer(0, buffer208);
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder2040.end();
    command_encoder600.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2031.setIndexBuffer(buffer204, "uint16");
    const command_buffer601 = command_encoder601.finish();
    device20.queue.submit([command_buffer204, ]);
    const command_buffer300 = command_encoder300.finish();
    const command_buffer203 = command_encoder203.finish();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    const command_buffer202 = command_encoder202.finish();
    device60.queue.submit([command_buffer601, ]);
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    device20.queue.submit([command_buffer202, ]);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder0020.setVertexBuffer(0, buffer001);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2031.drawIndirect(buffer206, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2031.end();
    device60.queue.submit([command_buffer602, ]);
}