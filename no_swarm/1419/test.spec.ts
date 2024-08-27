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
    const array0 = new Float32Array([0.25, -0.5, 0.25, -1.0, -1.0, 0.5, -0.5, 0.75, 1.0, -0.75, 1.0, 0.25, 0.0, 1.0, -0.75, 0.0, -0.25, -0.25, 0.75, -1.0, -0.25, 0.5, -0.5, 0.75, -0.25, 0.0, 0.75, -0.75, 0.25, -0.75, -0.5, -0.5, 0.25, 0.25, 0.0, -1.0, 0.25, 0.0, -0.25, 0.5, -1.0, 1.0, 1.0, 0.75, -1.0, -0.5, 0.5, -0.25, -0.5, -0.25, 0.75, 0.25, 0.75, 1.0, -0.75, 1.0, -0.5, 1.0, -0.25, 1.0, 1.0, -1.0, 0.75, 0.0, 0.75, 1.0, -0.25, 0.75, 0.25, -0.75, -0.5, 0.25, -0.25, 0.25, -0.75, 1.0, -0.5, -0.25, -1.0, 1.0, 0.75, -0.25, 0.5, -0.5, 1.0, -0.75, -1.0, 0.75, -1.0, 0.0, -0.25, -0.5, -0.75, -0.25, 0.75, 1.0, -0.75, 0.5, -0.75, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array1 = new Float32Array([0.5, 0.0, -0.25, -0.25, 0.0, 0.75, 0.25, 0.5, -0.5, -0.25, 0.25, 1.0, 0.5, -1.0, 0.5, -0.5, -1.0, 0.0, -0.5, 0.25, 0.75, 0.5, 0.75, -1.0, -0.25, -1.0, 0.75, -0.25, -0.5, -0.5, 0.75, -1.0, 1.0, 0.75, -0.5, -0.75, -0.5, -0.25, 0.0, 0.25, -0.25, 0.25, -1.0, 0.75, -0.75, -0.75, -0.75, -0.75, 0.25, 0.0, -1.0, 0.75, 0.75, 1.0, 0.75, 1.0, 0.75, 0.0, -1.0, 0.5, -1.0, 0.5, 0.5, 0.5, 0.0, 1.0, -0.75, 0.25, -1.0, 1.0, 0.75, 0.25, -0.25, 1.0, 0.25, -0.75, -0.5, -1.0, 0.25, 1.0, -0.25, 0.5, 0.0, 0.75, 0.75, -0.5, 0.25, 0.5, 1.0, -1.0, -0.25, -1.0, 0.5, -0.75, -0.5, -0.5, -0.5, -0.5, -0.75, 1.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-0.5, 0.75, 0.25, -0.5, 0.75, 0.5, 1.0, 0.25, 0.25, -0.75, 0.25, 0.5, 0.75, 0.5, 1.0, -0.5, 0.75, -0.75, -1.0, 0.5, -0.25, 0.25, -0.25, 0.0, 0.5, -0.25, -0.25, 0.25, 0.75, 0.25, -1.0, 0.0, 0.5, 1.0, 0.5, -1.0, -1.0, 1.0, 0.75, 1.0, 0.0, -0.5, -0.5, -1.0, -0.25, 0.75, -0.5, 0.5, -0.75, 0.5, -0.5, 1.0, -0.75, -0.75, 0.5, 0.0, -0.75, 0.0, 0.5, -0.5, -1.0, 0.5, 1.0, 0.25, -1.0, 1.0, -1.0, -1.0, 0.75, -1.0, 1.0, -0.5, 1.0, -1.0, 1.0, -0.75, -0.75, 0.5, 0.25, -0.5, 1.0, 0.75, -0.25, 0.25, 0.75, 0.25, -0.75, 0.5, 1.0, 0.5, -0.75, 1.0, -0.5, -0.5, -0.5, -0.25, 0.75, -0.5, 0.25, -0.5, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.insertDebugMarker("mymarker");
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer000.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    device00.pushErrorScope("validation");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    texture000.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    command_encoder001.insertDebugMarker("mymarker");
    const array3 = new Float32Array([-1.0, 0.5, 0.25, 0.5, 0.75, -0.5, 0.25, 0.0, -0.25, -0.5, 1.0, -0.75, -0.25, 0.5, 0.75, 1.0, -0.25, 0.5, -1.0, -0.5, -0.25, -0.5, 0.0, -0.5, -0.25, 0.75, -0.75, -0.25, 1.0, 0.0, 1.0, 0.25, -0.75, -0.5, 1.0, 0.5, -0.75, 0.25, -0.25, 1.0, -0.25, 0.0, 0.5, -0.25, -0.5, 0.25, -0.5, 0.0, 0.75, -1.0, -0.75, 0.75, 0.75, 1.0, 0.5, -0.25, 0.5, -0.5, -0.75, 0.0, 0.75, -1.0, 1.0, -1.0, 1.0, -0.5, 0.0, -0.75, -1.0, -0.5, -0.75, 1.0, -1.0, -1.0, 0.75, 0.0, -0.25, -0.75, -0.5, -0.5, -1.0, 1.0, -0.75, 1.0, -1.0, -0.5, 1.0, -0.25, 0.25, 0.75, 0.25, -1.0, 1.0, 0.5, -0.5, 0.5, 0.75, 0.5, 0.0, 1.0, ]);
    
    const array4 = new Float32Array([-0.75, -0.25, -1.0, -0.25, -0.25, 0.25, 0.25, 0.25, 0.25, -0.5, 1.0, -1.0, -0.25, -0.5, 0.5, 0.0, -0.75, 0.75, -1.0, 1.0, 0.5, 0.5, 0.25, 0.25, -0.25, 0.75, -1.0, 0.0, -0.75, 1.0, -1.0, 0.5, -0.75, 0.5, 0.25, 0.75, 0.75, -0.5, -1.0, 1.0, 0.75, 0.5, -0.25, -0.5, -0.5, -1.0, -0.25, -0.75, -0.25, 0.75, 0.5, 0.0, 0.5, -1.0, 0.25, -0.5, 1.0, 0.25, -0.25, -0.5, 0.75, -1.0, 0.0, 1.0, 0.5, -0.25, -0.5, 0.75, -0.25, 0.5, -0.75, 0.0, 0.25, -0.25, 0.5, 1.0, 0.75, 0.0, 0.5, 0.25, -1.0, -0.75, 0.75, -0.25, -0.25, 0.5, 0.5, 0.5, -0.25, -0.75, 0.75, 0.0, -0.5, 0.0, 0.75, -0.25, -1.0, -0.75, -1.0, 0.75, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder002.clearBuffer(buffer001);
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
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder000.popDebugGroup();
    const array5 = new Float32Array([0.5, -1.0, -0.5, 0.0, 0.75, 0.5, -0.5, -0.5, -0.75, 0.0, 0.5, -0.75, 0.0, 0.75, -0.75, 0.5, 0.25, -0.75, -1.0, 0.25, 1.0, -0.5, -0.5, -1.0, -0.5, 0.25, -1.0, 0.25, 1.0, 0.5, 0.5, 0.0, -0.75, 0.5, -0.25, -0.75, -0.75, 0.0, 1.0, -0.5, -0.75, 0.0, -1.0, 0.5, 0.25, 0.0, -0.25, 0.0, -0.75, 0.0, 0.25, 0.25, -0.5, -0.5, 0.25, 0.0, 1.0, -0.5, 0.5, -0.25, -0.25, -0.75, -0.25, -1.0, 0.5, 1.0, -1.0, -0.5, 0.5, -0.75, 0.25, -0.25, 0.75, -0.25, -0.5, -1.0, 0.0, -0.5, -0.5, 0.0, -1.0, 0.75, 0.75, 0.5, 0.25, 0.75, 0.0, 0.25, 0.25, -0.5, -0.25, -0.75, -0.75, -0.75, -1.0, -0.75, -1.0, -0.75, 0.0, 0.5, ]);
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer001
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
    const command_buffer002 = command_encoder002.finish();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
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
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_bundle_encoder000.setPipeline(render_pipeline002);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder003.copyTextureToTexture(
        {
            texture: texture001
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
    texture002.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder003.clearBuffer(buffer001);
    texture001.destroy();
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_buffer201 = command_encoder201.finish();
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder200.pushDebugGroup("mygroupmarker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder0030.setPipeline(render_pipeline001);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
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
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group000);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device20.destroy();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
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
    
    
    query001.destroy()
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    buffer100.destroy()
    query001.destroy()
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder002.insertDebugMarker("marker");
    
    compute_pass_encoder0010.popDebugGroup()
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
    
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    buffer004.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder0030.popDebugGroup();
    
    render_pass_encoder0040.insertDebugMarker("marker");
    
    command_encoder005.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder002.setPipeline(render_pipeline003);
    render_pass_encoder0040.setPipeline(render_pipeline001);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query001.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
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
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device10.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    buffer001.destroy()
    const array6 = new Float32Array([0.25, -0.25, 1.0, -0.25, 0.0, -1.0, -0.75, 0.25, -0.5, -0.5, 0.25, 0.0, 0.75, 0.75, 0.25, 1.0, 0.0, 0.75, -0.5, 0.0, -0.25, 0.25, 0.75, 0.5, 0.5, -0.75, -0.5, -0.5, 0.25, -0.25, -0.5, -0.5, -0.75, -0.75, 0.25, 0.25, 0.5, 0.0, 0.75, 0.75, 0.0, 0.75, -0.75, 0.0, -0.25, 0.0, 0.5, 0.0, 0.25, 0.25, -1.0, -0.25, 0.75, 1.0, 0.5, 0.75, -0.5, 1.0, -1.0, 0.75, 0.75, -0.25, 0.0, -1.0, -0.5, -0.25, -0.5, 0.25, 1.0, -0.5, 0.5, -0.25, 0.25, 0.75, 1.0, 1.0, 0.25, -0.75, -0.5, 0.25, -0.75, 1.0, -0.75, 0.25, -0.5, -1.0, 0.75, 0.75, -0.75, -0.5, 0.25, 0.5, 0.75, -0.5, 0.5, 0.0, -0.75, -0.25, -0.5, 0.75, ]);
    command_encoder004.insertDebugMarker("mymarker");
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    device00.queue.submit([command_buffer002, ]);
    
    buffer003.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder0051.setPipeline(render_pipeline0011);
    
    buffer006.destroy()
    render_pass_encoder0051.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    render_pass_encoder0050.setPipeline(render_pipeline0011);
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    buffer007.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0051.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.beginOcclusionQuery(0)
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    query000.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query300.destroy()
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer002.destroy()
    device30.pushErrorScope("out-of-memory");
    buffer005.destroy()
    
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0051.pushDebugGroup("group_marker");
    texture300.destroy();
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    command_encoder300.insertDebugMarker("mymarker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder0030.setVertexBuffer(0, buffer006);
    render_pass_encoder0051.setStencilReference(1);
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    
    query300.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0050.insertDebugMarker("marker");
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    query300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group003);
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    buffer0011.destroy()
    render_pass_encoder0000.setPipeline(render_pipeline0015);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder005.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    buffer008.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_pass_encoder0060.setPipeline(render_pipeline007);
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.setStencilReference(1);
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
        occlusionQuerySet: query301
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array7 = new Float32Array([0.25, -0.5, -0.5, 0.0, 0.5, 1.0, -0.5, -0.75, 0.5, -0.5, 0.75, 1.0, -0.25, 0.25, -0.25, 1.0, 0.25, 0.75, -0.5, 0.75, -0.5, -1.0, -0.5, -0.75, -0.75, 0.25, -1.0, -0.5, 1.0, -0.5, 0.5, 1.0, -0.75, 0.75, 0.75, 1.0, 1.0, 0.5, -0.25, 0.5, 0.0, 0.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.0, 1.0, 0.5, -0.75, -1.0, 0.0, 1.0, 0.75, -0.5, 1.0, 0.25, 0.25, -0.75, -1.0, 0.25, -0.25, 0.5, -0.25, 0.75, -1.0, 0.0, 0.5, -0.75, 1.0, -0.25, -0.25, 0.5, 0.5, 0.75, -1.0, 0.5, -0.25, 1.0, -0.5, 0.5, 0.25, 0.0, -0.5, 1.0, 0.0, -0.75, 0.75, 0.25, -0.5, 0.75, 0.75, 0.25, 0.0, -0.75, 0.75, 0.5, 0.5, 1.0, ]);
    render_pass_encoder3000.setStencilReference(1);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0040.setStencilReference(1);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder0051.insertDebugMarker("marker");
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0050.insertDebugMarker("marker");
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer0010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0010.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.setPipeline(render_pipeline0013);
    texture301.destroy();
    command_encoder005.copyTextureToTexture(
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.draw(3);
    render_pass_encoder0011.setPipeline(render_pipeline0013);
    render_pass_encoder3000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    compute_pass_encoder0050.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.setIndexBuffer(buffer006, "uint16");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    render_pass_encoder0051.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group004);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_bundle_encoder002.setIndexBuffer(buffer007, "uint16");
    buffer0014.destroy()
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder3001.pushDebugGroup("group_marker");
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
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
    command_encoder004.insertDebugMarker("mymarker");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder0050.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3000.executeBundles([])
    
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
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
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group005);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
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
    device00.queue.writeBuffer(buffer0015, 0, array4, 0, array4.length);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0050.popDebugGroup()
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeBuffer(buffer0015, 0, array2, 0, array2.length);
    render_pass_encoder0031.setPipeline(render_pipeline005);
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
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query301.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
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
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module0012,
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
            module: shader_module0012,
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
    device40.pushErrorScope("validation");
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder302.setPipeline(render_pipeline300);
    render_pass_encoder3001.popDebugGroup();
    const render_pass_encoder0052 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0052",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const array8 = new Float32Array([0.75, 1.0, 0.5, 1.0, 0.5, 1.0, -1.0, -0.5, 0.75, 0.25, 0.0, 0.75, 0.75, -1.0, -0.75, -0.75, -0.75, 0.0, 0.0, 0.5, 0.75, 0.75, -0.5, -0.25, -0.5, 0.25, 0.0, 1.0, 0.25, -1.0, 0.75, 0.5, -0.25, 0.5, -0.5, 0.25, -1.0, 1.0, 0.5, 1.0, 0.75, -0.5, 0.75, 0.25, 1.0, -0.75, -0.25, 0.5, -0.75, 0.75, 1.0, 0.0, 0.25, 0.0, 0.25, 1.0, 0.75, 0.75, -0.75, -0.5, -0.75, -0.25, 0.75, 0.0, -0.75, 0.25, -0.25, 0.5, 1.0, 0.0, 0.25, 0.25, -0.75, 0.5, -0.5, -0.75, 0.5, -0.5, 0.75, -1.0, 0.0, -1.0, 1.0, -1.0, -0.25, -0.75, 0.0, 0.25, -0.25, -0.75, 0.75, 0.0, -0.25, -0.75, 1.0, 0.0, 0.25, -1.0, 0.75, -0.75, ]);
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group006);
    
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder0051.setVertexBuffer(0, buffer0011);
    render_pass_encoder0050.setVertexBuffer(0, buffer005);
    
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder0030.setStencilReference(1);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline0013.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group007);
    {
        await buffer0012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0012.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0011.setStencilReference(1);
    
    command_encoder004.clearBuffer(buffer0012);
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
    render_bundle_encoder302.popDebugGroup();
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder007.copyBufferToBuffer(
        buffer003,
        0,
        buffer0012,
        0,
        400
    );
    
    
    render_pass_encoder0050.draw(3);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_pass_encoder3001.setStencilReference(1);
    render_pass_encoder0010.popDebugGroup();
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
        vertex: {
            module: shader_module0012,
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
            module: shader_module0012,
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
    render_pass_encoder0051.drawIndirect(buffer003, 0);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0031.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0052.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder0052.setPipeline(render_pipeline0019);
    render_pass_encoder0070.setPipeline(render_pipeline0019);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0011.setVertexBuffer(0, buffer005);
    compute_pass_encoder0050.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0010.setVertexBuffer(0, buffer0018);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline0019.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0052.setBindGroup(0, bind_group009);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.end();
    render_pass_encoder0052.setVertexBuffer(0, buffer0013);
    render_pass_encoder0052.drawIndirect(buffer0011, 0);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    render_pass_encoder3001.setPipeline(render_pipeline300);
    render_pass_encoder0060.setVertexBuffer(0, buffer0019);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.end();
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group0010);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0011.end();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0060.drawIndirect(buffer003, 0);
    compute_pass_encoder3010.popDebugGroup()
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([command_buffer000, ]);
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group0012);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.setVertexBuffer(0, buffer0016);
    compute_pass_encoder3010.end();
    render_pass_encoder0000.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexed(3);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0052.end();
    render_pass_encoder0040.setVertexBuffer(0, buffer0013);
    render_pass_encoder0060.end();
    command_encoder300.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_pass_encoder3001.setBindGroup(0, bind_group301);
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0040.end();
    device30.queue.submit([command_buffer301, ]);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0000.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3000.setPipeline(render_pipeline300);
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder0010.end();
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder3000.setVertexBuffer(0, buffer305);
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0050.end();
    render_pass_encoder0060.draw(3);
    render_pass_encoder3000.draw(3);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer307, 0);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    render_pass_encoder0031.setVertexBuffer(0, buffer0028);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0052.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    render_pass_encoder3001.setVertexBuffer(0, buffer307);
    render_pass_encoder0010.end();
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0052.popDebugGroup();
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline0019.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group0013);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3001.drawIndirect(buffer304, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0070.setVertexBuffer(0, buffer005);
    render_pass_encoder0070.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer004, command_buffer007, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder0052.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0040.end();
    render_pass_encoder0052.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder3000.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0052.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder3001.drawIndirect(buffer302, 0);
    render_pass_encoder0052.endOcclusionQuery()
    render_pass_encoder0070.end();
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndirect(buffer0020, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer0013, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    render_pass_encoder0052.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0000.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    render_pass_encoder3001.drawIndirect(buffer306, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    device00.queue.submit([]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0052.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    render_pass_encoder0052.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder3001.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0052.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0052.drawIndirect(buffer003, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder3000.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.end();
    render_pass_encoder3001.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer005, command_buffer006, command_buffer007, ]);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder3000.drawIndirect(buffer306, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer009, 0);
    device00.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0052.drawIndexed(3);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.popDebugGroup();
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0052.draw(3);
    render_pass_encoder3000.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0060.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.end();
    render_pass_encoder3001.draw(3);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder0050.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0022, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0031.end();
    const command_buffer202 = command_encoder202.finish();
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([]);
    render_pass_encoder0052.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0052.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0052.drawIndirect(buffer0031, 0);
    render_pass_encoder0051.drawIndirect(buffer004, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0025, 0);
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0052.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder3001.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder3001.setIndexBuffer(buffer304, "uint16");
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0030, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0052.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0052.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0050.end();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0051.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0051.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0052.drawIndexedIndirect(buffer0012, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0030.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0051.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0051.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.end();
    device30.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    render_pass_encoder0070.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer004, command_buffer006, command_buffer007, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3001.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3010.end();
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    device10.queue.submit([]);
    render_pass_encoder3001.drawIndirect(buffer302, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0070.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group306);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3016, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0051.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0060.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0070.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0000.draw(3);
    device10.queue.submit([]);
    device00.queue.submit([command_buffer006, ]);
    device10.queue.submit([]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0070.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0052.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
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
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group307);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer003, ]);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3019, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3019, 0);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder3001.drawIndexedIndirect(buffer3019, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3014, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer004, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0052.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0052.drawIndirect(buffer0015, 0);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0052.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.draw(3);
    device30.queue.submit([command_buffer300, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer202, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer202, 0);
    render_pass_encoder0052.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0051.draw(3);
    render_pass_encoder0070.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0052.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.end();
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0052.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder0052.drawIndirect(buffer005, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer309, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0018, 0);
    compute_pass_encoder3010.end();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0052.drawIndirect(buffer0026, 0);
    render_pass_encoder3001.drawIndirect(buffer309, 0);
    device40.queue.submit([]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0050.drawIndirect(buffer002, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer002, 0);
    render_pass_encoder0000.draw(3);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder3010.popDebugGroup()
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group308);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0021, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0052.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0052.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0070.end();
    render_pass_encoder0070.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0011.drawIndirect(buffer0019, 0);
    render_pass_encoder0052.setIndexBuffer(buffer0020, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer004, 0);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndirect(buffer0012, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer303, 0);
    device10.queue.submit([]);
    render_pass_encoder3001.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0052.setIndexBuffer(buffer0017, "uint16");
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group309);
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0023, "uint16");
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0052.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0052.drawIndirect(buffer0018, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder3001.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder3010.end();
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0052.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0010, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder3000.draw(3);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0050.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.end();
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0070.drawIndirect(buffer009, 0);
    render_pass_encoder3001.drawIndirect(buffer3016, 0);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndirect(buffer0014, 0);
    render_pass_encoder0050.drawIndexed(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3016, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer0012, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3012, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0011.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0052.drawIndirect(buffer0023, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder0051.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0011.popDebugGroup();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3024, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3024, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3019, 0);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0051.draw(3);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0052.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0051.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    command_encoder200.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0011.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0052.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0052.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder3001.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0052.end();
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0070.drawIndirect(buffer0027, 0);
    render_pass_encoder3000.drawIndirect(buffer3019, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0052.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0052.drawIndirect(buffer007, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0052.endOcclusionQuery()
    render_pass_encoder3001.setIndexBuffer(buffer302, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder0030.end();
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0022, 0);
    device30.queue.submit([]);
    render_pass_encoder0070.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.drawIndirect(buffer0016, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0028, 0);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3010);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0052.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3001.drawIndirect(buffer3016, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0052.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0051.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer005, ]);
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder3000.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3011);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0070.drawIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder3001.popDebugGroup();
    device40.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0052.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0031.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0025, 0);
    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3030,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3012);
    render_pass_encoder0052.end();
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder3001.drawIndirect(buffer3019, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder0052.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0060.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0030.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0025, 0);
    render_pass_encoder0060.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3000.draw(3);
    device00.queue.submit([command_buffer003, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    device10.queue.submit([command_buffer100, ]);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder3001.drawIndirect(buffer3025, 0);
    render_pass_encoder0011.end();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3031, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer006, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0052.drawIndirect(buffer008, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3032, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0052.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0060.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0052.draw(3);
    render_pass_encoder0052.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    render_pass_encoder0050.drawIndirect(buffer005, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3032, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0070.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder3000.drawIndirect(buffer3031, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer3025, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3013);
    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3036,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3014);
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0070.drawIndirect(buffer006, 0);
    render_pass_encoder3000.drawIndirect(buffer3019, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder3001.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3011, 0);
    device10.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer007, ]);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3037, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3037, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0060.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0052.drawIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder3001.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0052.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder3001.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0031.draw(3);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    device10.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer007, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0050.drawIndirect(buffer006, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0060.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0052.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0070.end();
    render_pass_encoder3000.setIndexBuffer(buffer3029, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0052.drawIndirect(buffer0015, 0);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3035, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.end();
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0051.drawIndirect(buffer0011, 0);
    device40.queue.submit([]);
    render_pass_encoder0052.drawIndexedIndirect(buffer000, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0031.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer008, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0070.end();
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    device30.queue.submit([]);
    render_pass_encoder3001.drawIndirect(buffer305, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder3000.drawIndirect(buffer3032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer3019, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3027, 0);
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer3011, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0052.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer007, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder3001.drawIndirect(buffer3019, 0);
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0014, 0);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0026, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder3001.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    device10.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer003, command_buffer006, command_buffer007, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3001.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3018, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0052.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0052.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0060.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder3000.setIndexBuffer(buffer3034, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer006, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0050.end();
    render_pass_encoder0052.drawIndirect(buffer0019, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3038, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3038, 0);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0052.end();
    render_pass_encoder0051.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer002, 0);
    render_pass_encoder0010.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0070.end();
    render_pass_encoder0000.drawIndirect(buffer0022, 0);
    render_pass_encoder3000.drawIndirect(buffer3025, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3015);
    render_pass_encoder3000.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder3000.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0023, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0051.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3016, 0);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3041, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    device10.queue.submit([]);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3032, 0);
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder3010.end();
    device00.queue.submit([command_buffer000, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer203, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer203, 0);
    render_pass_encoder0070.setIndexBuffer(buffer008, "uint16");
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3042, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3042, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0052.end();
    render_pass_encoder0010.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0060.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder3000.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device40.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0070.drawIndirect(buffer0018, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0011.draw(3);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3001.draw(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.drawIndirect(buffer005, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0052.drawIndirect(buffer004, 0);
    render_pass_encoder0070.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3043, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer004, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0060.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0052.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0052.drawIndirect(buffer0019, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0025, 0);
    device40.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3043, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3024, "uint16");
    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3045,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3016);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0051.drawIndirect(buffer009, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0021, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder0051.drawIndirect(buffer002, 0);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0031.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0070.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0051.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0014, 0);
    device30.queue.submit([]);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0052.drawIndirect(buffer004, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0070.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder0011.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    device40.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0070.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3019, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3046, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3046, 0);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3001.drawIndirect(buffer3043, 0);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0020, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0031.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3001.setIndexBuffer(buffer3034, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0018, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3033, 0);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0052.drawIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3042, 0);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3010.end();
    render_pass_encoder0051.drawIndirect(buffer006, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3001.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0020, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0052.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3001.end();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3031, 0);
    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3048,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3017);
    render_pass_encoder0052.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    render_pass_encoder3001.drawIndirect(buffer3019, 0);
    render_pass_encoder3000.drawIndirect(buffer3046, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.draw(3);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3019, 0);
    compute_pass_encoder3010.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3022, 0);
    render_pass_encoder0070.drawIndirect(buffer0027, 0);
    render_pass_encoder0051.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder3000.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0060.drawIndirect(buffer0012, 0);
    render_pass_encoder3000.drawIndirect(buffer3019, 0);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0052.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder3000.drawIndirect(buffer3026, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.setIndexBuffer(buffer0012, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3038, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder3000.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0031.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0051.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0015, 0);
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0050.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
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
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3018);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    render_pass_encoder3001.drawIndirect(buffer3046, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0060.draw(3);
    render_pass_encoder0050.draw(3);
    device40.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer3047, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0017, "uint16");
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0060.draw(3);
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0052.drawIndirect(buffer004, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer3021, 0);
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3038, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0052.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0052.drawIndirect(buffer0015, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.end();
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0031.draw(3);
    render_pass_encoder3001.setIndexBuffer(buffer3043, "uint16");
    render_pass_encoder0070.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0051.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3046, 0);
    render_pass_encoder0060.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder3010.end();
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0070.end();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3001.setIndexBuffer(buffer3044, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3038, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3046, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder3001.drawIndirect(buffer3012, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.draw(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0052.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3000.drawIndirect(buffer3041, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0070.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0052.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3033, 0);
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0052.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder3000.drawIndirect(buffer3041, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0030.end();
    device10.queue.submit([]);
    render_pass_encoder0052.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3042, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer0026, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3000.drawIndexed(3);
    device00.queue.submit([command_buffer007, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer0025, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.end();
    device40.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0052.drawIndirect(buffer0023, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3051, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder3000.drawIndirect(buffer3032, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3046, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3052, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3052, 0);
    render_pass_encoder3001.drawIndirect(buffer3038, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0011.end();
    render_pass_encoder0060.drawIndirect(buffer0032, 0);
    render_pass_encoder0060.drawIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    device10.queue.submit([command_buffer102, ]);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder3000.drawIndirect(buffer3051, 0);
    render_pass_encoder3001.drawIndirect(buffer3052, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder3001.end();
    render_pass_encoder0060.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0051.end();
    render_pass_encoder0070.end();
    render_pass_encoder0011.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0052.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0052.drawIndirect(buffer0026, 0);
    render_pass_encoder0060.end();
    device30.queue.submit([]);
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder0070.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3046, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3001.drawIndirect(buffer3046, 0);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder3000.drawIndirect(buffer3037, 0);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0052.drawIndirect(buffer004, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0060.end();
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0070.drawIndirect(buffer009, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0051.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3001.setIndexBuffer(buffer3031, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3051, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3000.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0051.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3036, 0);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer3024, 0);
    render_pass_encoder3001.drawIndirect(buffer3032, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0052.end();
    render_pass_encoder0031.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3001.setIndexBuffer(buffer3033, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3046, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0052.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0000.draw(3);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3043, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0050.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0031.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer006, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0051.drawIndirect(buffer0031, 0);
    render_pass_encoder0052.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder3000.drawIndirect(buffer3051, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer007, "uint16");
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder3001.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    render_pass_encoder3001.drawIndirect(buffer3031, 0);
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0052.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer3031, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0022, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer007, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3042, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3000.drawIndirect(buffer3052, 0);
    render_pass_encoder0050.end();
    render_pass_encoder3001.end();
    device40.queue.submit([]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0070.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0029, 0);
    render_pass_encoder0052.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0052.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.draw(3);
    render_pass_encoder0052.popDebugGroup();
    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3054,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3019);
    render_pass_encoder0060.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0070.drawIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0060.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    render_pass_encoder0052.drawIndirect(buffer008, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0031.drawIndexed(3);
    device10.queue.submit([]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3051, 0);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder0070.end();
    render_pass_encoder0031.draw(3);
    device40.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0051.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0011.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0052.drawIndirect(buffer0010, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3038, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0029, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3032, 0);
    render_pass_encoder0060.drawIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0011, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3037, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer0024, 0);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0052.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder0010.popDebugGroup()
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3055, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3055, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder3001.drawIndirect(buffer3031, 0);
    render_pass_encoder0060.drawIndirect(buffer0020, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3051, "uint16");
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer3054, 0);
    render_pass_encoder0052.setIndexBuffer(buffer0013, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0070.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3057,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3020);
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder0010.end();
    render_pass_encoder0052.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0051.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0052.drawIndexedIndirect(buffer005, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0052.draw(3);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3041, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0052.drawIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0052.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3059,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3021);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0051.drawIndirect(buffer009, 0);
    render_pass_encoder0070.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3001.setIndexBuffer(buffer3047, "uint16");
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0051.drawIndirect(buffer0021, 0);
    render_pass_encoder0070.setIndexBuffer(buffer008, "uint16");
    compute_pass_encoder3010.end();
    compute_pass_encoder3010.end();
    render_pass_encoder0051.drawIndirect(buffer004, 0);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder3001.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3031, 0);
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2000.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder3001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder3001.drawIndirect(buffer3016, 0);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3041, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer004, ]);
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3052, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder3001.drawIndirect(buffer3043, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
}