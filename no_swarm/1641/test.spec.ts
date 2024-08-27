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
    
    const array0 = new Float32Array([1.0, 0.75, 0.75, 1.0, -0.5, 0.75, 0.0, 0.75, 0.75, 1.0, -0.25, -0.5, 0.5, 0.5, 0.5, -0.75, 1.0, 0.75, 1.0, -0.25, -0.25, -0.75, -0.5, -1.0, -0.25, 0.5, -0.25, 1.0, -0.75, -1.0, -0.25, -0.5, -0.75, -1.0, 0.25, 0.5, -1.0, -1.0, 0.25, 0.0, -0.5, 0.75, 0.5, -0.5, 1.0, 0.25, 0.25, -0.75, 1.0, 1.0, 0.75, 0.25, 1.0, 0.0, -0.5, 0.5, 0.0, 0.25, 0.75, -0.25, -0.75, -1.0, -1.0, 0.25, 0.25, 1.0, 0.75, 0.5, -0.5, -0.75, -0.75, 0.0, -0.75, 1.0, 0.75, -0.75, 0.5, 0.75, -0.25, -1.0, 0.25, 0.0, 1.0, 0.75, 0.75, -1.0, -0.5, -0.75, 0.25, 1.0, -0.75, 0.75, -0.75, 0.75, 0.75, 0.25, 0.0, -0.75, 1.0, -0.75, ]);
    const array1 = new Float32Array([1.0, -0.75, 0.5, 0.25, -0.75, 0.75, 1.0, 0.25, -0.25, 0.75, 0.75, -0.25, 0.0, -0.75, 0.75, 0.25, 0.5, 0.75, 0.75, -0.25, 0.5, 0.25, 0.0, -0.5, -0.5, 0.5, 1.0, -1.0, 0.5, -0.75, -0.75, -0.5, 0.75, 0.5, 0.0, 0.5, -0.5, 0.25, -0.75, 1.0, -0.25, 0.75, 1.0, 0.5, -1.0, 0.25, 0.0, -0.25, 0.25, 1.0, -0.75, -1.0, -0.5, 1.0, 0.25, 1.0, -0.75, 0.75, -0.25, 0.25, -0.75, -0.5, -0.5, 0.75, -1.0, 0.0, 0.5, -0.25, -0.5, -0.75, -0.5, -1.0, -0.5, -0.25, -0.5, 1.0, -1.0, 0.5, 0.5, 1.0, -1.0, -1.0, 1.0, 0.0, -0.5, 0.75, 0.0, 0.0, -0.75, -1.0, -0.75, 1.0, 0.25, 0.25, -0.75, 0.5, 0.0, 0.5, 0.75, -0.25, ]);
    const array2 = new Float32Array([-1.0, -0.25, -1.0, -0.5, 0.5, 0.5, 0.0, 0.5, 0.0, -1.0, 1.0, -0.75, -0.5, 0.25, 0.25, 0.25, 0.25, 0.75, 0.5, 1.0, -0.25, -0.25, 0.5, -1.0, -0.5, -1.0, 0.25, 1.0, 1.0, 0.75, -0.75, -0.25, -1.0, -0.75, 0.5, -0.75, 0.5, -1.0, 0.25, -0.5, -0.25, 1.0, -0.25, -0.5, -1.0, -0.75, 0.0, -0.5, 0.5, 0.0, 0.25, -0.25, 0.0, 1.0, -0.25, 0.25, -0.25, -0.25, -1.0, -1.0, 0.25, 0.75, -0.75, -1.0, 0.75, -0.75, -0.5, 0.5, 0.25, 1.0, -0.25, -1.0, 0.75, -1.0, 0.0, -0.5, 1.0, -0.75, -1.0, 0.0, 0.0, 0.0, -1.0, 0.25, 1.0, -0.75, 1.0, 0.5, 1.0, 0.0, -0.25, 0.0, -0.5, 1.0, 1.0, -0.5, 0.5, 0.75, -1.0, 0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.5, 0.5, -1.0, 0.5, -0.5, -1.0, 0.75, 0.0, -1.0, 1.0, -0.5, 0.5, 0.75, 0.5, -0.25, -1.0, -0.5, 0.25, 0.5, -0.25, 1.0, 0.0, -0.75, 0.25, -0.25, -1.0, 0.75, 0.5, -0.5, 0.75, -1.0, -0.25, 1.0, 0.25, -1.0, 0.75, 0.0, 0.25, -0.5, 0.25, -0.75, 1.0, 0.0, 1.0, -1.0, 0.0, 0.75, 0.0, 0.5, 0.5, 1.0, -0.75, 0.25, 0.25, 0.25, -0.75, -0.25, 0.25, 0.0, 0.75, 0.25, 0.0, 0.75, 0.25, -0.75, 0.5, 0.75, 0.25, -0.75, 0.5, -0.75, 1.0, 0.0, 0.75, 0.75, 0.75, 0.25, 0.5, -0.25, -1.0, 0.25, 0.0, 0.5, -0.5, 0.75, -1.0, 0.5, -0.25, -1.0, -0.5, -0.25, -0.75, -0.75, 0.5, 0.25, 1.0, -0.75, -0.75, -1.0, -0.5, ]);
    const array4 = new Float32Array([1.0, -0.5, -0.75, 1.0, -0.75, 0.5, 0.0, 0.5, -0.75, 0.5, -0.5, -0.5, 0.0, 1.0, -0.25, -0.5, 1.0, 1.0, 0.0, -1.0, -0.75, -0.25, 0.25, -0.25, -0.25, 1.0, -0.25, -0.75, -0.25, 0.5, -0.25, 0.0, -0.75, -0.5, -0.5, -1.0, 0.0, -0.25, -0.75, -0.5, -1.0, 1.0, 0.75, 0.0, 0.5, 1.0, 1.0, -0.75, -0.25, 0.75, 0.5, 0.5, 0.25, -1.0, 0.0, -0.5, -0.25, 0.25, -0.25, 0.75, 0.0, -0.5, 0.0, 0.75, -0.75, -0.75, 1.0, 0.5, -0.75, 0.5, 0.25, -0.5, 1.0, -0.25, -0.75, 1.0, 0.5, 0.5, -0.5, 0.0, 0.5, 0.25, 0.5, 1.0, 1.0, 0.25, 0.0, 0.0, 0.75, -0.25, 0.25, -0.5, -0.5, 0.5, 0.0, 1.0, 0.75, 1.0, -0.25, -0.25, ]);
    
    
    const array5 = new Float32Array([0.5, 0.75, -0.5, -0.5, -1.0, -0.5, 0.75, -0.5, -0.75, -0.75, -1.0, 1.0, -0.25, 1.0, -0.75, 0.75, 0.5, -0.5, 0.25, 1.0, 0.5, -0.25, -0.75, 0.75, -1.0, 0.5, -0.5, -0.25, -1.0, -0.25, -1.0, 1.0, 1.0, 0.75, 0.5, 1.0, -0.75, 1.0, -0.25, 0.75, 0.0, 0.25, -0.75, 1.0, 1.0, 0.0, 0.25, 0.25, -0.75, 0.75, 0.25, 0.25, -1.0, -1.0, 1.0, -0.5, -1.0, 1.0, 0.5, 0.75, 0.25, 1.0, -0.25, 0.0, -0.25, -1.0, 0.0, 0.75, -0.25, -0.5, 0.75, -1.0, -0.25, 0.25, 0.75, 0.25, 0.75, -0.25, 0.5, 0.0, 0.5, 0.25, 0.25, 1.0, 0.25, 0.0, -0.5, -0.5, 1.0, -1.0, -1.0, -0.5, 0.25, -0.5, 1.0, -0.75, 1.0, 0.75, 0.75, 1.0, ]);
    const array6 = new Float32Array([-0.75, -0.75, -1.0, 0.5, -1.0, 0.5, 1.0, 0.0, 1.0, 0.0, 0.5, 0.0, 0.25, -0.75, 0.5, 0.5, 0.25, -0.25, -0.75, -0.75, 0.5, -1.0, 0.5, 1.0, 1.0, -0.75, -1.0, -0.5, 1.0, -0.25, -0.5, 0.5, 0.5, 0.5, 0.0, -0.75, -1.0, -0.25, -0.75, 0.25, -0.5, 0.75, 1.0, -0.25, 0.25, 0.25, -0.25, -0.5, 1.0, 1.0, -0.75, -0.75, 0.0, 0.25, 0.25, -0.5, 0.75, 0.25, -1.0, 0.5, -1.0, 0.5, 0.75, 0.5, 0.75, 0.75, 1.0, 0.75, -0.75, -0.5, 0.25, 1.0, -0.5, 0.5, -0.75, 0.75, -1.0, 0.25, -0.25, -1.0, 1.0, 0.25, 0.75, 0.5, 0.25, -0.75, -0.25, 1.0, 0.75, 0.5, -0.75, 0.0, -1.0, 0.75, -0.25, 0.25, -0.25, 0.75, 0.25, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device20.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    
    texture100.destroy();
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.popDebugGroup()
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder100.popDebugGroup()
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("internal");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    command_encoder000.insertDebugMarker("mymarker");
    texture000.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.beginOcclusionQuery(0)
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    
    
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query001.destroy()
    const array7 = new Float32Array([0.5, 1.0, -0.25, 0.25, -0.75, 1.0, 0.5, -1.0, 0.0, 0.25, -0.25, -0.5, -0.5, -0.5, 0.0, 1.0, 0.0, 0.0, -0.5, 0.25, 0.25, -0.75, 0.25, 0.5, 0.0, -1.0, -0.25, 0.5, -0.75, 0.0, 0.25, 1.0, 0.75, -0.5, -0.5, 0.5, 0.25, -0.25, 0.75, 0.0, 0.5, 0.75, 0.0, -0.5, 0.0, -0.75, 0.0, -1.0, 0.25, 1.0, 1.0, -0.5, 0.25, 1.0, 0.0, 1.0, 0.25, 0.0, -1.0, 0.0, 0.25, -0.75, -0.25, -0.75, -0.75, -1.0, 1.0, -1.0, -0.75, -0.25, 0.75, 0.25, 0.0, 1.0, 0.0, -1.0, -0.75, -0.25, 0.25, -0.25, 0.0, 0.25, 1.0, -0.5, 0.0, 0.0, 0.75, 0.75, -1.0, -0.75, 0.0, 1.0, 0.25, 0.75, -1.0, -0.75, -1.0, -0.75, -1.0, -1.0, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    texture001.destroy();
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device10.pushErrorScope("internal");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder0000.endOcclusionQuery()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    query100.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
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
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    const command_buffer100 = command_encoder100.finish();
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder003.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_pass_encoder0000.beginOcclusionQuery(1)
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder003.setPipeline(render_pipeline002);
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder001.setPipeline(render_pipeline003);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0000.setStencilReference(1);
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    
    
    render_bundle_encoder101.popDebugGroup();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query002.destroy()
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

    render_bundle_encoder003.setBindGroup(0, bind_group001);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    texture002.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.setVertexBuffer(0, buffer103);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    buffer101.destroy()
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
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder003.insertDebugMarker("marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0000.setPipeline(render_pipeline002);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query101.destroy()
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
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
    render_bundle_encoder100.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0000.insertDebugMarker("marker");
    
    
    device40.queue.submit([]);
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
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
    render_bundle_encoder100.draw(3);
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    buffer102.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
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
    render_bundle_encoder102.setPipeline(render_pipeline103);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    command_encoder101.clearBuffer(buffer103);
    render_bundle_encoder100.drawIndexedIndirect(buffer102, 0);
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder0000.insertDebugMarker("marker");
    const array8 = new Float32Array([0.0, -0.25, 1.0, 0.5, -0.5, -0.5, 0.75, -1.0, -0.5, 0.5, -0.5, 1.0, 1.0, 0.75, 1.0, 0.0, -1.0, 0.5, -0.25, 0.5, 0.25, -0.5, 0.25, 0.5, 1.0, 1.0, -1.0, 1.0, -0.25, -0.25, -0.5, -0.75, 0.75, 0.25, -0.75, -0.25, 0.0, -0.25, -1.0, 0.5, 1.0, -0.25, 0.0, 1.0, 0.5, 0.75, -1.0, -1.0, -0.25, 0.0, 0.0, 0.75, -1.0, -1.0, 1.0, 0.0, 0.0, -0.75, -0.5, -0.25, 1.0, 0.75, 0.25, -0.25, -1.0, -0.75, -0.5, -0.5, -1.0, 0.5, 0.75, -0.25, -1.0, 0.5, -0.5, -0.25, 1.0, 0.5, -0.75, 0.75, 0.5, -0.75, -0.75, -0.75, 0.0, -0.75, -0.25, 1.0, 0.25, 1.0, -0.5, -0.25, 1.0, 0.25, 1.0, -0.75, 1.0, -0.5, 0.0, 0.5, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0000.endOcclusionQuery()
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
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
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    render_bundle_encoder100.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder101.copyBufferToBuffer(
        buffer103,
        0,
        buffer103,
        0,
        400
    );
    render_bundle_encoder400.popDebugGroup();
    buffer003.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer100.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
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
    query101.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer000.destroy()
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    query003.destroy()
    query005.destroy()
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    buffer400.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    query101.destroy()
    device60.destroy();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.drawIndexed(3);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_bundle_encoder003.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device40.destroy();
    buffer103.destroy()
    
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    const array9 = new Float32Array([0.25, 1.0, 0.75, -1.0, -0.25, -1.0, 0.0, 0.0, 0.0, -0.5, -0.25, -0.75, -1.0, -0.5, 0.25, 0.75, -0.5, -0.25, 0.75, -0.5, -0.25, 0.25, -1.0, 0.0, 0.5, 0.5, -0.25, 0.25, -0.5, 0.75, -1.0, -1.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.5, 0.75, 0.0, 0.5, 0.5, -0.5, -0.75, 1.0, -0.5, -0.25, 1.0, 1.0, 0.0, 0.25, -0.25, 0.5, 0.0, -0.25, -0.5, 0.5, -0.25, -0.25, -1.0, -0.5, 0.75, -0.25, 0.5, -0.5, 0.5, -1.0, 0.25, 0.5, -1.0, 1.0, -0.75, -0.5, 0.5, -0.5, 0.5, 0.25, 0.25, 0.5, 0.0, 0.25, -1.0, -1.0, 1.0, -0.5, -1.0, 0.5, 0.75, -1.0, -0.75, -0.75, 0.5, -1.0, -0.25, 0.0, -0.75, 0.75, -0.25, -0.75, 0.25, ]);
    render_bundle_encoder003.setVertexBuffer(0, buffer006);
    texture003.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query003.destroy()
    render_bundle_encoder003.insertDebugMarker("marker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder003.insertDebugMarker("marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    texture101.destroy();
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    query005.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer105.destroy()
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    render_bundle_encoder003.draw(3);
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    
    const command_buffer102 = command_encoder102.finish();
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query004.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    const command_buffer105 = command_encoder105.finish();
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0001.setPipeline(render_pipeline003);
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    
    render_bundle_encoder003.insertDebugMarker("marker");
    query102.destroy()
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
    device00.queue.writeBuffer(buffer007, 0, array9, 0, array9.length);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0000.beginOcclusionQuery(2)
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    buffer008.destroy()
    command_encoder000.clearBuffer(buffer007);
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    render_pass_encoder0001.setStencilReference(1);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.popDebugGroup()
    buffer002.destroy()
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group103);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    buffer200.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query002.destroy()
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    compute_pass_encoder1020.popDebugGroup()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    render_bundle_encoder101.setVertexBuffer(0, buffer108);
    buffer107.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    buffer009.destroy()
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer106,
        0,
        400
    );
    compute_pass_encoder1020.setPipeline(compute_pipeline102);
    render_pass_encoder0001.setStencilReference(1);
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setVertexBuffer(0, buffer106);
    const array10 = new Float32Array([0.75, -0.25, -1.0, -0.5, 0.0, 0.5, 0.75, 1.0, -0.25, -0.75, 0.0, 0.5, 0.75, -0.5, 0.75, -0.75, 1.0, -0.75, -0.5, 1.0, -0.5, -0.5, 0.5, -1.0, 0.5, 0.0, -0.25, -0.75, 0.0, -1.0, 0.75, -1.0, -1.0, -0.5, -0.5, -0.5, -0.25, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, -0.25, -0.75, -1.0, -1.0, 0.25, -0.75, -0.75, -0.75, 0.75, -1.0, 0.5, -1.0, 0.75, 0.0, 1.0, 1.0, -0.5, 0.0, -1.0, -0.25, -0.75, -0.75, 0.0, 0.75, -0.5, -0.75, 0.75, -0.25, 1.0, -0.25, 0.0, 0.25, -1.0, -0.5, -0.5, 0.0, -0.75, -0.25, -0.25, -0.75, 0.0, 0.5, 1.0, 0.25, 0.0, 0.75, 0.25, 0.25, 0.25, 0.0, -0.25, 0.5, 0.0, -1.0, 0.5, -0.75, -0.75, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    device00.queue.writeBuffer(buffer0010, 0, array4, 0, array4.length);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    
    query102.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
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
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.endOcclusionQuery()
    render_bundle_encoder003.finish();
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    render_pass_encoder0001.setStencilReference(1);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer004, 0, array9, 0, array9.length);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.setIndexBuffer(buffer106, "uint16");
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    buffer108.destroy()
    
    buffer104.destroy()
    
    query000.destroy()
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer006.destroy()
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group104);
    render_bundle_encoder102.setIndexBuffer(buffer106, "uint16");
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1030.executeBundles([render_bundle_encoder100, ])
    render_pass_encoder1040.setPipeline(render_pipeline101);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1011, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1012, 0);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group105);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group106);
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    compute_pass_encoder1010.end();
    const command_buffer104 = command_encoder104.finish();
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group107);
    render_pass_encoder1040.setVertexBuffer(0, buffer1010);
    compute_pass_encoder1040.end();
    command_encoder101.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder1031.setPipeline(render_pipeline100);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1019, 0);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group108);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([]);
    render_pass_encoder1040.end();
    compute_pass_encoder1020.end();
    compute_pass_encoder1040.end();
    render_pass_encoder1031.setVertexBuffer(0, buffer1022);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group109);
    render_pass_encoder1040.drawIndirect(buffer1011, 0);
    const command_buffer101 = command_encoder101.finish();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1031.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
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

    render_pass_encoder0001.setBindGroup(0, bind_group004);
    render_pass_encoder0001.setVertexBuffer(0, buffer008);
    render_pass_encoder0001.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder1040.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1010);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    device10.queue.submit([command_buffer105, ]);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder1031.drawIndexed(3);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer1012, 0);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
}