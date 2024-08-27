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
    const array0 = new Float32Array([-1.0, -0.75, 0.5, -1.0, 0.25, 0.5, 0.25, 0.75, 0.25, 0.5, 0.5, 1.0, -0.75, 1.0, 0.25, 0.75, -1.0, 0.75, 0.75, -0.5, -0.75, 0.0, -0.25, 0.75, 1.0, -1.0, -1.0, 1.0, -0.25, -0.75, -0.75, -0.75, 0.25, 1.0, -0.5, -1.0, -0.5, 0.5, -1.0, -0.5, -0.25, -1.0, 1.0, 0.75, 0.5, -0.25, -0.25, 0.75, 0.0, 0.25, 0.25, 1.0, -0.75, -0.75, -1.0, 0.25, 1.0, 0.75, 0.0, -0.5, 0.25, -0.25, -0.75, -0.25, 1.0, 0.0, 0.25, -1.0, 0.0, 0.75, -1.0, 1.0, -0.75, 0.5, 1.0, 0.5, 0.0, -1.0, -1.0, 0.0, 0.25, 1.0, 1.0, -1.0, 0.5, -0.25, 0.75, 1.0, 1.0, 0.75, -1.0, -0.25, -0.5, 0.0, 0.75, 0.0, -0.5, 0.0, -0.5, 0.0, ]);
    const array1 = new Float32Array([0.0, 0.75, 0.0, 0.0, 0.75, 0.75, -0.5, 0.25, -1.0, -0.5, -1.0, 0.25, 0.25, 0.75, -0.75, -1.0, 0.75, -0.75, 0.5, 0.0, 0.75, 1.0, 0.0, -0.75, 0.75, 0.75, -1.0, 0.25, 1.0, -0.5, -0.5, 1.0, -1.0, 1.0, 1.0, -1.0, 0.75, 0.5, -0.25, -0.75, -0.75, 1.0, 0.0, 0.75, -0.25, 1.0, 0.75, 0.75, 0.0, 0.0, 0.5, 0.75, 0.5, 0.75, -0.75, 0.5, -1.0, 0.5, 0.25, -0.5, 0.25, 0.5, -0.25, -0.75, -0.5, 0.0, 0.5, 0.0, 0.5, 0.75, -1.0, 0.5, -0.5, -0.25, -0.5, 0.0, -0.75, 0.75, 0.0, 0.25, -0.75, 0.0, 0.0, -0.75, 0.5, 0.25, 0.0, 0.5, -1.0, 0.25, 0.0, 0.25, 1.0, -0.5, -0.5, -0.75, 0.75, 1.0, 0.75, 0.75, ]);
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    command_encoder001.clearBuffer(buffer000);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array2 = new Float32Array([0.5, -0.25, 1.0, 1.0, -0.5, 0.0, -0.75, 0.25, 0.25, -0.25, 0.25, -0.75, 0.5, 0.5, -0.5, 1.0, -0.25, -0.5, 0.25, 0.75, 1.0, 1.0, -1.0, -0.25, 0.5, -0.75, -0.75, -0.75, 0.0, -0.25, 1.0, 0.5, 0.0, -0.25, 0.5, -1.0, -0.5, -0.5, -0.25, 0.25, 0.25, -0.75, 0.0, -0.75, -0.25, -0.25, 0.0, -0.25, -0.25, 0.25, -0.5, 0.5, 0.25, 1.0, -1.0, -0.75, -0.75, 1.0, 0.0, -1.0, 0.0, 0.5, 1.0, 1.0, 0.5, 0.0, 0.0, -1.0, -0.75, -0.25, -0.75, -0.25, 0.75, -1.0, 1.0, 1.0, -0.75, -0.75, -0.75, 0.0, 0.5, 0.0, -0.5, 0.75, -0.75, -0.75, -0.75, -0.75, -1.0, 0.0, 0.5, -0.75, 0.75, -0.5, -1.0, 0.25, 0.75, -1.0, -0.25, -1.0, ]);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const array3 = new Float32Array([-0.75, -1.0, 1.0, -0.25, 0.5, -0.5, 0.75, 0.0, -0.75, -1.0, -0.5, -0.25, 1.0, 0.75, -0.5, -0.25, 0.5, -1.0, 0.25, 0.5, 0.5, 0.0, -1.0, 0.75, 1.0, 0.0, 1.0, 0.25, 0.75, -0.5, 1.0, -0.5, -0.75, -0.25, -0.75, -1.0, 0.0, -1.0, 0.75, -1.0, 0.75, 0.25, -0.5, -0.5, -0.5, 0.25, -1.0, 0.5, 0.25, 0.75, -0.25, 0.75, 0.5, -0.75, 0.25, 0.5, -0.25, -0.75, -0.25, 0.0, -1.0, 0.0, -0.75, 0.5, 0.25, 0.25, 1.0, 0.25, -0.75, -1.0, -0.5, 0.0, -0.75, -0.5, -1.0, -0.25, -0.25, 1.0, 0.5, 1.0, 0.75, -1.0, 0.25, 0.75, 0.0, -1.0, -1.0, 1.0, 0.0, 0.75, -0.25, 0.5, -1.0, 1.0, -0.5, -0.75, -0.25, 0.75, 0.0, -0.5, ]);
    const command_buffer001 = command_encoder001.finish();
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    command_encoder002.copyBufferToTexture(
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
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0001.pushDebugGroup("group_marker")
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
    
    
    texture002.destroy();
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    texture000.destroy();
    
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    command_encoder003.insertDebugMarker("mymarker");
    buffer001.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder002.copyTextureToTexture(
        {
            texture: texture000
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    texture000.destroy();
    
    const array4 = new Float32Array([-0.25, -0.75, 1.0, -0.5, -0.75, 1.0, -0.75, 0.0, 1.0, -1.0, 1.0, -1.0, -1.0, -1.0, -0.75, -1.0, -1.0, -0.5, 1.0, -1.0, 1.0, 0.25, 1.0, 1.0, -0.25, 0.5, -0.75, -0.75, 0.5, 0.25, 0.75, 0.25, -1.0, 0.5, 0.25, 0.75, 0.75, 0.5, -0.75, 0.75, 0.25, 0.75, 0.0, 0.75, -0.75, 0.75, -0.25, -0.5, 0.0, 1.0, -0.75, 0.25, 1.0, 0.5, 0.25, 0.5, 0.0, -0.75, 0.25, 1.0, 1.0, 0.0, 0.0, -0.5, 0.5, 0.75, -0.75, -0.5, -1.0, 0.25, -0.25, 0.25, 1.0, 1.0, -0.25, -0.5, 0.25, 0.0, 0.75, -0.5, -0.5, 0.75, 0.5, -0.5, 1.0, -0.75, 0.5, -1.0, -0.75, 0.5, 0.0, 0.75, 0.0, -0.75, -0.75, 0.75, 0.5, -0.5, 0.75, -0.75, ]);
    buffer000.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture000.destroy();
    command_encoder002.clearBuffer(buffer000);
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder0001.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
        occlusionQuerySet: undefined
    });
    command_encoder004.insertDebugMarker("mymarker");
    compute_pass_encoder0001.popDebugGroup()
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer000
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    texture001.destroy();
    device00.queue.submit([command_buffer001, ]);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder002.insertDebugMarker("mymarker");
    const command_buffer102 = command_encoder102.finish();
    texture002.destroy();
    
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0001.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.executeBundles([])
    compute_pass_encoder0000.popDebugGroup()
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
    command_encoder006.insertDebugMarker("mymarker");
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    render_pass_encoder0020.setStencilReference(1);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
    command_encoder101.insertDebugMarker("mymarker");
    query100.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
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
    
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device10.pushErrorScope("internal");
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0030.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.insertDebugMarker("marker");
    command_encoder006.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder0060.setPipeline(render_pipeline000);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    command_encoder100.insertDebugMarker("mymarker");
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

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    compute_pass_encoder1010.popDebugGroup()
    
    compute_pass_encoder1010.popDebugGroup()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0051.pushDebugGroup("group_marker");
    render_pass_encoder0051.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer100.destroy()
    
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer104.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer101.destroy()
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture001
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
    buffer003.destroy()
    render_pass_encoder0051.setPipeline(render_pipeline000);
    render_pass_encoder0050.setPipeline(render_pipeline000);
    render_bundle_encoder000.setPipeline(render_pipeline002);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer106,
        0,
        400
    );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder0000.popDebugGroup()
    command_encoder100.clearBuffer(buffer104);
    
    
    query100.destroy()
    
    
    
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
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
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    
    query102.destroy()
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
    render_pass_encoder0000.insertDebugMarker("marker");
    query101.destroy()
    query102.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
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
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group002);
    texture100.destroy();
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    buffer102.destroy()
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
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
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder0060.popDebugGroup()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder0051.setStencilReference(1);
    device00.pushErrorScope("internal");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer106,
        0,
        400
    );
    const array5 = new Float32Array([-0.25, 0.5, 0.0, -1.0, -0.25, 0.25, -0.75, 0.5, -0.25, 0.75, -0.25, -0.75, -0.25, 0.75, 1.0, 0.25, -0.25, 0.25, 0.0, -0.25, 0.0, -0.25, -1.0, -0.5, -0.5, -0.25, -0.75, 1.0, -0.25, 0.25, 0.0, -0.75, -0.25, 0.75, 0.0, -0.5, 0.5, 0.0, 0.0, -1.0, 0.0, -0.75, 0.75, 0.75, 0.25, 0.75, -0.75, 0.25, 0.75, -0.25, -0.75, 0.5, -0.5, 0.25, 0.5, 0.5, -0.25, 0.25, 1.0, -0.75, 0.5, 0.75, 0.75, -0.5, -1.0, -1.0, 0.0, 0.25, -0.75, 0.5, 0.25, -0.75, -1.0, -1.0, -0.5, 0.75, -0.5, -0.25, -0.75, 0.0, 1.0, 0.25, -0.75, -0.5, -1.0, 0.75, -0.5, -0.25, 0.25, 0.5, 0.0, 0.5, 0.25, -1.0, 1.0, -0.5, -1.0, 0.5, -1.0, 0.75, ]);
    buffer103.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0050.setStencilReference(1);
    
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    render_pass_encoder0060.popDebugGroup();
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0051.popDebugGroup();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group003);
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer006.destroy()
    
    compute_pass_encoder0001.setPipeline(compute_pipeline000);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group004);
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    
    render_pass_encoder0050.setVertexBuffer(0, buffer002);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0021.setPipeline(render_pipeline000);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    buffer005.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group005);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
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
    compute_pass_encoder0030.setPipeline(compute_pipeline001);
    render_pass_encoder0021.setVertexBuffer(0, buffer008);
    render_bundle_encoder102.popDebugGroup();
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    
    render_pass_encoder0000.setStencilReference(1);
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    render_pass_encoder0061.setPipeline(render_pipeline000);
    buffer106.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    buffer0014.destroy()
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0000.insertDebugMarker("marker");
    
    render_bundle_encoder000.setVertexBuffer(0, buffer008);
    render_pass_encoder1010.setPipeline(render_pipeline105);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group006);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array5, 0, array5.length);
    compute_pass_encoder0060.setPipeline(compute_pipeline000);
    texture003.destroy();
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
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    buffer105.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    buffer0011.destroy()
    
    render_pass_encoder0051.setVertexBuffer(0, buffer008);
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder100.insertDebugMarker("mymarker");
    render_pass_encoder0000.insertDebugMarker("marker");
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group007);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device00.queue.writeBuffer(buffer0013, 0, array1, 0, array1.length);
    render_bundle_encoder000.drawIndirect(buffer001, 0);
    render_pass_encoder0051.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder1010.setPipeline(compute_pipeline104);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0000.setVertexBuffer(0, buffer0014);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    
    query101.destroy()
    render_pass_encoder0020.setStencilReference(1);
    buffer0017.destroy()
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    command_encoder006.clearBuffer(buffer0012);
    render_bundle_encoder001.setPipeline(render_pipeline004);
    render_pass_encoder0000.popDebugGroup();
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    render_bundle_encoder000.finish();
    render_bundle_encoder102.setVertexBuffer(0, buffer106);
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0021.beginOcclusionQuery(0)
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0061.setBindGroup(0, bind_group008);
    render_pass_encoder0061.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer0012,
        0,
        400
    );
    
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.setPipeline(render_pipeline004);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0021, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0050.draw(3);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0000.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.setVertexBuffer(0, buffer0011);
    render_pass_encoder0051.popDebugGroup();
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group009);
    render_pass_encoder0051.drawIndirect(buffer0021, 0);
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
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

    render_pass_encoder0020.setBindGroup(0, bind_group0010);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0060.drawIndirect(buffer008, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0061.setVertexBuffer(0, buffer006);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0061.drawIndirect(buffer0017, 0);
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0011);
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.setVertexBuffer(0, buffer003);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0060.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexed(3);
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group0013);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0014);
    render_pass_encoder0070.setVertexBuffer(0, buffer003);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0015);
    render_pass_encoder0021.end();
    render_pass_encoder0070.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndirect(buffer0021, 0);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0016);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder0070.drawIndirect(buffer001, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer109, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0070.setIndexBuffer(buffer0035, "uint16");
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
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder0050.end();
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1010.setVertexBuffer(0, buffer108);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0017);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.end();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer003, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0061.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0017, "uint16");
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0018);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0040.dispatchWorkgroups(100);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
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

    compute_pass_encoder0060.setBindGroup(0, bind_group0019);
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0061.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0041, "uint16");
    compute_pass_encoder0060.dispatchWorkgroups(100);
    compute_pass_encoder0001.end();
    const command_buffer005 = command_encoder005.finish();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder0000.drawIndirect(buffer0036, 0);
    render_pass_encoder0070.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder0070.end();
    compute_pass_encoder0060.end();
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0061.draw(3);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0015, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1014, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0070.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0060.setIndexBuffer(buffer0031, "uint16");
    compute_pass_encoder1010.end();
    compute_pass_encoder1000.end();
    compute_pass_encoder0060.end();
    render_pass_encoder0061.end();
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0039, 0);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    compute_pass_encoder0030.dispatchWorkgroups(100);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0022);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder0050.draw(3);
    command_encoder002.popDebugGroup()
    compute_pass_encoder0040.end();
    render_pass_encoder0021.setIndexBuffer(buffer0034, "uint16");
    const command_buffer000 = command_encoder000.finish();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0061.draw(3);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0023);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0061.drawIndexedIndirect(buffer0018, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, ]);
    device00.queue.submit([command_buffer004, ]);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0052, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0000.popDebugGroup();
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0061.setIndexBuffer(buffer0038, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0020, "uint16");
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0025);
    compute_pass_encoder1000.end();
    compute_pass_encoder0001.end();
    render_pass_encoder0050.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0021, 0);
    compute_pass_encoder1000.popDebugGroup()
    command_encoder006.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer007, 0);
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder0060.end();
    render_pass_encoder0061.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndirect(buffer0055, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0057, 0);
    compute_pass_encoder0060.popDebugGroup()
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
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0026);
    render_pass_encoder0051.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0070.drawIndirect(buffer0021, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.drawIndirect(buffer0057, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0070.end();
    render_pass_encoder0070.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0032, "uint16");
    device10.queue.submit([command_buffer100, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0062, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0070.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer0062, 0);
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder0000.drawIndirect(buffer0048, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder0060.popDebugGroup()
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
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
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0027);
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0051.drawIndirect(buffer006, 0);
    compute_pass_encoder0001.popDebugGroup()
    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0066,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0028);
    render_pass_encoder0000.drawIndirect(buffer0057, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0043, "uint16");
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0050.drawIndirect(buffer0057, 0);
    render_pass_encoder0070.drawIndirect(buffer0021, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0052, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0067, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndirect(buffer0057, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0070.end();
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    render_pass_encoder0060.drawIndirect(buffer0061, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.end();
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
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0029);
    render_pass_encoder0050.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndirect(buffer0057, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
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
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0030);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0028, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0072, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0036, "uint16");
    compute_pass_encoder1000.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0021.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer003, ]);
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
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    render_pass_encoder0070.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0013, "uint16");
    compute_pass_encoder0060.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0061.drawIndirect(buffer001, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0021.drawIndirect(buffer0061, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0036, "uint16");
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder0051.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0070.drawIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndirect(buffer0062, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
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
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0060.setBindGroup(0, bind_group0032);
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0072, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0050.end();
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder1000.end();
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    render_pass_encoder0070.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0061.drawIndirect(buffer0054, 0);
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
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0060.setBindGroup(0, bind_group0033);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0051.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer0061, 0);
    render_pass_encoder0070.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0070.drawIndirect(buffer0064, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndirect(buffer0064, 0);
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0060.drawIndirect(buffer0013, 0);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1010);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1027, 0);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0057, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer000, command_buffer005, command_buffer006, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
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
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0034);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer0076, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndirect(buffer0042, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0082, 0);
    render_pass_encoder0061.drawIndirect(buffer0082, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0034, "uint16");
    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0084,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0035);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0070.drawIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0036);
    render_pass_encoder0051.drawIndirect(buffer0084, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0072, 0);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
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
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0037);
    compute_pass_encoder1010.popDebugGroup()
    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0090,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0038);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.draw(3);
    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0092,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0039);
    render_pass_encoder0060.drawIndirect(buffer0057, 0);
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer006, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
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
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0040);
    render_pass_encoder0021.drawIndirect(buffer0087, 0);
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0060.end();
    render_pass_encoder0070.drawIndirect(buffer0079, 0);
    render_pass_encoder0070.drawIndirect(buffer0079, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0060, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
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
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0041);
    render_pass_encoder0051.drawIndirect(buffer0052, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0051.draw(3);
    render_pass_encoder0061.drawIndirect(buffer0067, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0070.drawIndirect(buffer0049, 0);
    render_pass_encoder0060.drawIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer003, ]);
    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0098,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0042);
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer0010, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0061.setIndexBuffer(buffer0027, "uint16");
    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00100,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0043);
    render_pass_encoder0021.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0051.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0062, "uint16");
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0030.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1028, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    device10.queue.submit([]);
    render_pass_encoder0061.drawIndirect(buffer0060, 0);
    render_pass_encoder0061.drawIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0000.drawIndirect(buffer0067, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0093, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0062, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    compute_pass_encoder1010.end();
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0039, 0);
    device10.queue.submit([]);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0070.end();
    render_pass_encoder0021.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0021.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1010.end();
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer004, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0059, 0);
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0051.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0064, 0);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer0057, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0061.end();
    render_pass_encoder0051.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1033, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0082, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0020.end();
    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00102,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0044);
    render_pass_encoder0061.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0051.drawIndirect(buffer0025, 0);
    render_pass_encoder0051.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0070.end();
    render_pass_encoder0021.drawIndirect(buffer0097, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder0020.popDebugGroup()
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
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0045);
    render_pass_encoder0051.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0060.setIndexBuffer(buffer00103, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0064, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0051.end();
    compute_pass_encoder0020.popDebugGroup()
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
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0046);
    render_pass_encoder0060.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0061.drawIndirect(buffer0093, 0);
    render_pass_encoder0061.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0063, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00107, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00107, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0060.end();
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0061.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0062, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    render_pass_encoder0070.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndirect(buffer0075, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0067, 0);
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0001.end();
    render_pass_encoder0061.drawIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0070.drawIndirect(buffer0062, 0);
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0059, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00108, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00108, 0);
    render_pass_encoder0000.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0051.drawIndirect(buffer0082, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0076, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0021, 0);
    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00110,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0047);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0061, 0);
    render_pass_encoder0000.drawIndirect(buffer0095, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00108, 0);
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
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0048);
    compute_pass_encoder0000.end();
    render_pass_encoder0061.setIndexBuffer(buffer0091, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0057, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0070.end();
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00113, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00113, 0);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0061.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0061.drawIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0000.drawIndirect(buffer00100, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0071, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0060.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.drawIndirect(buffer00107, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0061.drawIndirect(buffer00111, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0061.drawIndirect(buffer0086, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    render_pass_encoder0061.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00115,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0049);
    render_pass_encoder0051.drawIndirect(buffer0052, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0077, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0021.drawIndirect(buffer0052, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([]);
    render_pass_encoder0070.drawIndirect(buffer0069, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0061.drawIndirect(buffer0070, 0);
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0050.drawIndirect(buffer0096, 0);
    render_pass_encoder0051.drawIndirect(buffer00100, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndirect(buffer00100, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0071, "uint16");
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    render_pass_encoder0000.drawIndirect(buffer00107, 0);
    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00117,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0050);
    render_pass_encoder0000.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0042, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0051.drawIndirect(buffer00103, 0);
    render_pass_encoder0061.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0061.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0083, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0088, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0051.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0070.drawIndirect(buffer004, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0049, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0061.drawIndirect(buffer00113, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0070.drawIndexed(3);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer00108, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0061.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0075, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00118, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00118, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00119, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00119, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00113, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0070.drawIndirect(buffer0082, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.drawIndirect(buffer0098, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndirect(buffer00108, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00101, "uint16");
    compute_pass_encoder0060.end();
    render_pass_encoder0021.drawIndirect(buffer0067, 0);
    render_pass_encoder0021.drawIndirect(buffer0048, 0);
    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00121,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0051);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0020.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00118, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0060.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0060.drawIndirect(buffer0063, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00122, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00122, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00123, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00123, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0078, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1010.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00124, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00124, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00125, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00125, 0);
    render_pass_encoder0000.drawIndirect(buffer00117, 0);
    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00127,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0052);
    render_pass_encoder0021.drawIndirect(buffer00116, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0070.drawIndirect(buffer001, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0057, 0);
    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00129,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0053);
    render_pass_encoder1010.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndirect(buffer0062, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1043, 0);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder1010.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0000.drawIndirect(buffer0082, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder0060.end();
    render_pass_encoder0051.end();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0060.drawIndirect(buffer0079, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00110, 0);
    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00131,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0054);
    render_pass_encoder0050.drawIndirect(buffer00123, 0);
    render_pass_encoder0061.drawIndirect(buffer0050, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00132, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00132, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0070.drawIndirect(buffer0085, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder0061.drawIndirect(buffer005, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00134,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0055);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00135, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00135, 0);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0021.drawIndirect(buffer0052, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0021.drawIndirect(buffer00135, 0);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0061.drawIndirect(buffer0021, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00120, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0051.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder0070.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer00122, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00117, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer00107, 0);
    render_pass_encoder0050.drawIndirect(buffer00108, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0020.drawIndirect(buffer00114, 0);
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0061.drawIndirect(buffer0089, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0069, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00136, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00136, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0061.drawIndirect(buffer00125, 0);
    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00137,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00138,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0056);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00139, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00139, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0051.drawIndirect(buffer00124, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0062, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0054, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0000.drawIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0051.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0000.drawIndirect(buffer00118, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00122, 0);
    device10.queue.submit([]);
    render_pass_encoder0070.drawIndirect(buffer0099, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1010.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00100, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0070.end();
    render_pass_encoder0070.setIndexBuffer(buffer0037, "uint16");
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0061.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0081, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00140, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00140, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0021.draw(3);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0086, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder0061.drawIndirect(buffer000, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0021.drawIndirect(buffer0061, 0);
    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00142,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0057);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0001.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1045, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0061.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00108, "uint16");
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer00134, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0057, "uint16");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00143, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00143, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0051.drawIndirect(buffer0087, 0);
    render_pass_encoder0060.drawIndirect(buffer00119, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0060.drawIndirect(buffer00107, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00113, 0);
    compute_pass_encoder0001.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0062, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0057, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0081, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0071, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0000.setIndexBuffer(buffer00123, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0073, 0);
    render_pass_encoder0070.drawIndirect(buffer0044, 0);
    compute_pass_encoder0040.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0020.drawIndirect(buffer0090, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder0060.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00119, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00144, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00144, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0020.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1049, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0062, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0070.popDebugGroup();
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1018);
    render_pass_encoder0000.drawIndirect(buffer00125, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00145, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00145, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer00109, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0020.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00146, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00146, 0);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0025, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00147, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00147, 0);
    render_pass_encoder0051.drawIndirect(buffer0065, 0);
    render_pass_encoder0000.drawIndirect(buffer00114, 0);
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1019);
    render_pass_encoder0021.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0050.drawIndirect(buffer0072, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder0021.drawIndirect(buffer00143, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0070.drawIndirect(buffer00136, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0051.drawIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0050.end();
    render_pass_encoder0070.drawIndirect(buffer00132, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0060.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer00124, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0051.setIndexBuffer(buffer0064, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0051.drawIndirect(buffer0079, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00141, "uint16");
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder0051.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0079, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00148, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00148, 0);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1021);
    render_pass_encoder0061.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0095, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0061.drawIndirect(buffer00147, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0040.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0062, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0021.drawIndirect(buffer0069, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0050.drawIndirect(buffer00125, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0071, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer00105, 0);
    device10.queue.submit([]);
    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0058 = device00.createBindGroup({
        label: "bind_group0058",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00149,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00150,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0058);
    render_pass_encoder0000.drawIndirect(buffer0052, 0);
    render_pass_encoder0021.drawIndirect(buffer00140, 0);
    render_pass_encoder0070.drawIndirect(buffer00146, 0);
    render_pass_encoder0070.drawIndirect(buffer0052, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder0050.drawIndirect(buffer00135, 0);
    compute_pass_encoder0060.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00151, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00151, 0);
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    render_pass_encoder0021.drawIndirect(buffer00143, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.drawIndirect(buffer00100, 0);
    render_pass_encoder0021.drawIndirect(buffer00138, 0);
    device10.queue.submit([]);
    compute_pass_encoder0060.end();
    render_pass_encoder0000.drawIndirect(buffer0085, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00118, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer00122, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0041, "uint16");
    compute_pass_encoder0000.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1022);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0082, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0057, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0070.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder0021.drawIndirect(buffer00108, 0);
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00152, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00152, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0083, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0070.drawIndirect(buffer00113, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00149, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00147, 0);
    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0059 = device00.createBindGroup({
        label: "bind_group0059",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00154,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0059);
    render_pass_encoder1010.end();
    render_pass_encoder0021.drawIndirect(buffer00127, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0061.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer00139, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0074, "uint16");
    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1061,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1023);
    render_pass_encoder0051.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0051.drawIndirect(buffer00122, 0);
    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0060 = device00.createBindGroup({
        label: "bind_group0060",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00156,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0060);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer00151, 0);
    compute_pass_encoder0020.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    compute_pass_encoder0001.end();
    render_pass_encoder0070.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00136, 0);
    render_pass_encoder0061.drawIndirect(buffer00123, 0);
    render_pass_encoder0000.drawIndirect(buffer00132, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00157, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00157, 0);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer00104, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00124, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00158, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00158, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder0051.drawIndirect(buffer00113, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0060.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00145, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0060.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0070, "uint16");
    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00159,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00160,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0061);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00161 = device00.createBuffer({
        label: "buffer00161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00161, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00161, 0);
    render_pass_encoder0051.drawIndirect(buffer00144, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0070.drawIndirect(buffer00113, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00162 = device00.createBuffer({
        label: "buffer00162",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00162, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00162, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00112, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer00122, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer0062, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer0079, 0);
    render_pass_encoder0061.drawIndirect(buffer00157, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00107, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer00123, 0);
    const buffer00163 = device00.createBuffer({
        label: "buffer00163",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00164 = device00.createBuffer({
        label: "buffer00164",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0062 = device00.createBindGroup({
        label: "bind_group0062",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00163,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00164,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0062);
    render_pass_encoder0051.drawIndirect(buffer0057, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0057, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00118, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0061.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndirect(buffer00119, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0070.drawIndirect(buffer00136, 0);
    render_pass_encoder0000.drawIndirect(buffer0061, 0);
    device10.queue.submit([command_buffer100, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00165, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00165, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0061.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder0060.end();
    render_pass_encoder1010.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0069, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00166, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00166, 0);
    render_pass_encoder0061.drawIndirect(buffer00119, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00148, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder0000.drawIndirect(buffer00107, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.end();
    compute_pass_encoder1000.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00167, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00167, 0);
    const buffer00168 = device00.createBuffer({
        label: "buffer00168",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00169 = device00.createBuffer({
        label: "buffer00169",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0063 = device00.createBindGroup({
        label: "bind_group0063",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00168,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00169,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0063);
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.drawIndirect(buffer00124, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder0000.drawIndirect(buffer00151, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0061.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00158, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00147, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0070.drawIndirect(buffer00108, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0060.drawIndirect(buffer0060, 0);
    const buffer00170 = device00.createBuffer({
        label: "buffer00170",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00171 = device00.createBuffer({
        label: "buffer00171",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0064 = device00.createBindGroup({
        label: "bind_group0064",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00170,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00171,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0064);
    render_pass_encoder1010.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder0051.drawIndirect(buffer00151, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00116, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0070, 0);
    render_pass_encoder0060.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.drawIndirect(buffer00157, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0064, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndirect(buffer00113, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0040, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndirect(buffer0082, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer001, 0);
    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1063,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1024);
    const buffer00172 = device00.createBuffer({
        label: "buffer00172",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00173 = device00.createBuffer({
        label: "buffer00173",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0065 = device00.createBindGroup({
        label: "bind_group0065",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00172,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00173,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0065);
    compute_pass_encoder0030.popDebugGroup()
    const buffer00174 = device00.createBuffer({
        label: "buffer00174",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00175 = device00.createBuffer({
        label: "buffer00175",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0066 = device00.createBindGroup({
        label: "bind_group0066",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00174,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00175,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0066);
    render_pass_encoder0050.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1064, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1064, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00124, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer00124, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0000.drawIndirect(buffer0079, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0060.setIndexBuffer(buffer0060, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer00144, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00143, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00176 = device00.createBuffer({
        label: "buffer00176",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00176, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00176, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00134, 0);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1025);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0083, 0);
    render_pass_encoder0000.drawIndirect(buffer00108, 0);
    render_pass_encoder0051.drawIndirect(buffer0071, 0);
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    const buffer00177 = device00.createBuffer({
        label: "buffer00177",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00178 = device00.createBuffer({
        label: "buffer00178",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0067 = device00.createBindGroup({
        label: "bind_group0067",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00177,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00178,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0067);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer00144, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0060.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00143, "uint16");
    const buffer00179 = device00.createBuffer({
        label: "buffer00179",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00180 = device00.createBuffer({
        label: "buffer00180",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0068 = device00.createBindGroup({
        label: "bind_group0068",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00179,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00180,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0068);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer00169, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1067, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1067, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0061.end();
    render_pass_encoder1010.end();
    render_pass_encoder0021.drawIndirect(buffer00125, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00181 = device00.createBuffer({
        label: "buffer00181",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00181, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00181, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0000.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0000.drawIndirect(buffer00176, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0021.drawIndirect(buffer00166, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0079, 0);
    const buffer00182 = device00.createBuffer({
        label: "buffer00182",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00183 = device00.createBuffer({
        label: "buffer00183",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0069 = device00.createBindGroup({
        label: "bind_group0069",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00182,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00183,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0069);
    render_pass_encoder0050.drawIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndirect(buffer0058, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00132, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00139, 0);
    render_pass_encoder0070.drawIndirect(buffer00143, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00184 = device00.createBuffer({
        label: "buffer00184",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00184, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00184, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    const buffer00185 = device00.createBuffer({
        label: "buffer00185",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00186 = device00.createBuffer({
        label: "buffer00186",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0070 = device00.createBindGroup({
        label: "bind_group0070",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00185,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00186,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0070);
    compute_pass_encoder0030.end();
    render_pass_encoder0000.drawIndirect(buffer00107, 0);
    render_pass_encoder0060.drawIndirect(buffer00152, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00113, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0079, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1064, 0);
    render_pass_encoder0021.drawIndirect(buffer00115, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00144, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00187 = device00.createBuffer({
        label: "buffer00187",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00187, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00187, 0);
    render_pass_encoder0021.drawIndirect(buffer0038, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00133, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder0060.end();
    render_pass_encoder0060.drawIndirect(buffer00181, 0);
    render_pass_encoder0050.drawIndirect(buffer00145, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0089, "uint16");
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00188 = device00.createBuffer({
        label: "buffer00188",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00188, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00188, 0);
    const buffer00189 = device00.createBuffer({
        label: "buffer00189",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00190 = device00.createBuffer({
        label: "buffer00190",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0071 = device00.createBindGroup({
        label: "bind_group0071",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00189,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00190,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0071);
    render_pass_encoder0021.drawIndirect(buffer0082, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0000.drawIndirect(buffer00164, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0039, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00191 = device00.createBuffer({
        label: "buffer00191",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00191, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00191, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0070.drawIndirect(buffer00148, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer00125, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.setIndexBuffer(buffer0073, "uint16");
    const buffer00192 = device00.createBuffer({
        label: "buffer00192",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00193 = device00.createBuffer({
        label: "buffer00193",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0072 = device00.createBindGroup({
        label: "bind_group0072",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00192,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00193,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0072);
    render_pass_encoder0060.drawIndirect(buffer00188, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer00143, 0);
    const buffer00194 = device00.createBuffer({
        label: "buffer00194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00195 = device00.createBuffer({
        label: "buffer00195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0073 = device00.createBindGroup({
        label: "bind_group0073",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00195,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0073);
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer006, ]);
    render_pass_encoder0061.drawIndirect(buffer00162, 0);
    render_pass_encoder0070.drawIndirect(buffer00158, 0);
    render_pass_encoder0021.drawIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer00129, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0070.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder0020.drawIndirect(buffer00187, 0);
    const buffer00196 = device00.createBuffer({
        label: "buffer00196",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00197 = device00.createBuffer({
        label: "buffer00197",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0074 = device00.createBindGroup({
        label: "bind_group0074",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00196,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00197,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0074);
    render_pass_encoder0060.drawIndexedIndirect(buffer00166, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder0060.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    const buffer00198 = device00.createBuffer({
        label: "buffer00198",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00199 = device00.createBuffer({
        label: "buffer00199",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0075 = device00.createBindGroup({
        label: "bind_group0075",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00198,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00199,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0075);
    render_pass_encoder0051.drawIndirect(buffer00132, 0);
    render_pass_encoder0021.drawIndirect(buffer00107, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0091, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00200 = device00.createBuffer({
        label: "buffer00200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00200, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00200, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1068, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1068, 0);
    const buffer00201 = device00.createBuffer({
        label: "buffer00201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00202 = device00.createBuffer({
        label: "buffer00202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0076 = device00.createBindGroup({
        label: "bind_group0076",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00202,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0076);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0030.end();
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1026);
    render_pass_encoder0051.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0061.drawIndirect(buffer00146, 0);
    render_pass_encoder0000.drawIndirect(buffer0098, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00176, "uint16");
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1027);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1028);
    render_pass_encoder0020.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0000.drawIndirect(buffer00166, 0);
    render_pass_encoder0021.drawIndirect(buffer00118, 0);
    render_pass_encoder0021.drawIndirect(buffer00176, 0);
    render_pass_encoder0061.drawIndirect(buffer00143, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00132, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0061.drawIndirect(buffer0096, 0);
    render_pass_encoder0020.drawIndirect(buffer00108, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00203 = device00.createBuffer({
        label: "buffer00203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00203, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00203, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00188, 0);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    const buffer00204 = device00.createBuffer({
        label: "buffer00204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00205 = device00.createBuffer({
        label: "buffer00205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0077 = device00.createBindGroup({
        label: "bind_group0077",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00205,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0077);
    render_pass_encoder0050.drawIndexedIndirect(buffer0082, 0);
    const buffer00206 = device00.createBuffer({
        label: "buffer00206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00207 = device00.createBuffer({
        label: "buffer00207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0078 = device00.createBindGroup({
        label: "bind_group0078",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00207,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0078);
    render_pass_encoder0020.drawIndirect(buffer00143, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00163, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00208 = device00.createBuffer({
        label: "buffer00208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00208, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00208, 0);
    render_pass_encoder0061.drawIndirect(buffer0060, 0);
    render_pass_encoder0021.drawIndirect(buffer00176, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00139, 0);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0020.end();
    render_pass_encoder0060.drawIndirect(buffer00191, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0000.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0021.drawIndirect(buffer00184, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0050.end();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00209 = device00.createBuffer({
        label: "buffer00209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00209, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00209, 0);
    render_pass_encoder0061.drawIndirect(buffer00118, 0);
    render_pass_encoder0070.drawIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndirect(buffer0079, 0);
    render_pass_encoder0061.drawIndirect(buffer00134, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00191, 0);
    render_pass_encoder0070.drawIndirect(buffer00133, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0062, 0);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0070.drawIndirect(buffer00145, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1076,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1029);
    render_pass_encoder0000.drawIndexedIndirect(buffer00208, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1077, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1077, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00188, 0);
    const buffer00210 = device00.createBuffer({
        label: "buffer00210",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00211 = device00.createBuffer({
        label: "buffer00211",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0079 = device00.createBindGroup({
        label: "bind_group0079",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00210,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00211,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0079);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00203, 0);
    render_pass_encoder0051.end();
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0070.drawIndirect(buffer0021, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00145, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0061.drawIndirect(buffer0079, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00120, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer00134, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer00152, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00140, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00193, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0061.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer004, ]);
    render_pass_encoder0020.end();
    compute_pass_encoder1000.end();
    render_pass_encoder0020.setIndexBuffer(buffer0087, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00176, 0);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0020.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00108, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1010.end();
    compute_pass_encoder0060.end();
    render_pass_encoder0000.drawIndirect(buffer0072, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer00136, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0061.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00162, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0060.drawIndirect(buffer0019, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0051.drawIndirect(buffer0040, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00188, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.setIndexBuffer(buffer00142, "uint16");
    render_pass_encoder0000.drawIndirect(buffer00176, 0);
    render_pass_encoder0050.drawIndirect(buffer00161, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00191, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0000.drawIndirect(buffer0062, 0);
    render_pass_encoder0060.drawIndirect(buffer002, 0);
    render_pass_encoder0070.drawIndirect(buffer0082, 0);
    render_pass_encoder0070.drawIndirect(buffer0017, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0051.drawIndirect(buffer00188, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00131, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00195, "uint16");
    render_pass_encoder0061.drawIndirect(buffer00147, 0);
    render_pass_encoder0000.drawIndirect(buffer00188, 0);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer007, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1078, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder0000.drawIndirect(buffer00183, 0);
    render_pass_encoder0061.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0061.drawIndirect(buffer00139, 0);
    render_pass_encoder0000.drawIndirect(buffer00119, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0062, 0);
    render_pass_encoder0021.drawIndirect(buffer00160, 0);
    render_pass_encoder0061.drawIndirect(buffer00144, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00144, 0);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer00200, 0);
    const buffer00212 = device00.createBuffer({
        label: "buffer00212",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00213 = device00.createBuffer({
        label: "buffer00213",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0080 = device00.createBindGroup({
        label: "bind_group0080",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00212,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00213,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0080);
    render_pass_encoder0021.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    const buffer00214 = device00.createBuffer({
        label: "buffer00214",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00215 = device00.createBuffer({
        label: "buffer00215",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0081 = device00.createBindGroup({
        label: "bind_group0081",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00214,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00215,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0081);
    render_pass_encoder0021.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer00118, 0);
    const buffer00216 = device00.createBuffer({
        label: "buffer00216",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00217 = device00.createBuffer({
        label: "buffer00217",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0082 = device00.createBindGroup({
        label: "bind_group0082",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00216,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00217,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0082);
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    const buffer00218 = device00.createBuffer({
        label: "buffer00218",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00219 = device00.createBuffer({
        label: "buffer00219",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0083 = device00.createBindGroup({
        label: "bind_group0083",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00218,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00219,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0083);
    render_pass_encoder0060.drawIndexedIndirect(buffer00154, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0060.drawIndirect(buffer0060, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0000.drawIndirect(buffer00188, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00139, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0061.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder1010.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00220 = device00.createBuffer({
        label: "buffer00220",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00220, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00220, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00221 = device00.createBuffer({
        label: "buffer00221",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00221, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00221, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0052, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    compute_pass_encoder0020.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1079, 0);
    render_pass_encoder0070.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0061.drawIndirect(buffer00118, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00201, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00122, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00209, 0);
    render_pass_encoder0020.drawIndirect(buffer00119, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00152, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00222 = device00.createBuffer({
        label: "buffer00222",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00222, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00222, 0);
    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1081,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1030);
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00204, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00223 = device00.createBuffer({
        label: "buffer00223",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00223, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00223, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0060.drawIndirect(buffer00145, 0);
    compute_pass_encoder1000.end();
    device10.queue.submit([]);
    render_pass_encoder0051.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0050.drawIndirect(buffer00220, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0021.drawIndirect(buffer00125, 0);
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder1000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00223, 0);
    render_pass_encoder0051.drawIndirect(buffer00135, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer00100, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0050.end();
    render_pass_encoder0021.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00135, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0070.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00223, 0);
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer00124, 0);
    compute_pass_encoder0001.popDebugGroup()
    const buffer00224 = device00.createBuffer({
        label: "buffer00224",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00225 = device00.createBuffer({
        label: "buffer00225",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0084 = device00.createBindGroup({
        label: "bind_group0084",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00224,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00225,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0084);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00226 = device00.createBuffer({
        label: "buffer00226",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00226, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00226, 0);
    const buffer00227 = device00.createBuffer({
        label: "buffer00227",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00228 = device00.createBuffer({
        label: "buffer00228",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0085 = device00.createBindGroup({
        label: "bind_group0085",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00227,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00228,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0085);
    compute_pass_encoder1000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0061.drawIndirect(buffer00176, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0020.drawIndirect(buffer00160, 0);
    render_pass_encoder0050.drawIndirect(buffer00226, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00112, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0060.drawIndirect(buffer00221, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0051.drawIndirect(buffer0082, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0061.drawIndirect(buffer00187, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0082, 0);
    render_pass_encoder0061.drawIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00202, "uint16");
    render_pass_encoder0061.drawIndirect(buffer00139, 0);
    render_pass_encoder0000.drawIndirect(buffer00224, 0);
    render_pass_encoder0050.drawIndirect(buffer00122, 0);
    render_pass_encoder0070.drawIndirect(buffer00222, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00125, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0070.drawIndirect(buffer0098, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0070.drawIndirect(buffer0060, 0);
    render_pass_encoder0021.drawIndirect(buffer00119, 0);
    const buffer00229 = device00.createBuffer({
        label: "buffer00229",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00230 = device00.createBuffer({
        label: "buffer00230",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0086 = device00.createBindGroup({
        label: "bind_group0086",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00229,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00230,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0086);
    render_pass_encoder0000.setIndexBuffer(buffer00216, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0021.setIndexBuffer(buffer00151, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndirect(buffer00146, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00229, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer00113, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder1010.drawIndirect(buffer1040, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0050.drawIndirect(buffer00158, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0070, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0099, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00231 = device00.createBuffer({
        label: "buffer00231",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00231, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00231, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer00219, 0);
    render_pass_encoder0061.drawIndirect(buffer0025, 0);
    render_pass_encoder0060.drawIndirect(buffer0052, 0);
    const buffer00232 = device00.createBuffer({
        label: "buffer00232",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00233 = device00.createBuffer({
        label: "buffer00233",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0087 = device00.createBindGroup({
        label: "bind_group0087",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00232,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00233,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0087);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0050.drawIndirect(buffer0083, 0);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1067, 0);
    const buffer00234 = device00.createBuffer({
        label: "buffer00234",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00235 = device00.createBuffer({
        label: "buffer00235",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0088 = device00.createBindGroup({
        label: "bind_group0088",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00234,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00235,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0088);
    render_pass_encoder0070.drawIndexedIndirect(buffer00208, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00137, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0070.drawIndirect(buffer00158, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00107, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00236 = device00.createBuffer({
        label: "buffer00236",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00236, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00236, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0090, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00181, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndirect(buffer00231, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer00163, 0);
    device10.queue.submit([]);
    render_pass_encoder0061.drawIndirect(buffer0052, 0);
    render_pass_encoder0050.end();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00237 = device00.createBuffer({
        label: "buffer00237",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00237, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00237, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00217, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.drawIndirect(buffer00123, 0);
    render_pass_encoder0070.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndirect(buffer0082, 0);
    const buffer00238 = device00.createBuffer({
        label: "buffer00238",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00239 = device00.createBuffer({
        label: "buffer00239",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0089 = device00.createBindGroup({
        label: "bind_group0089",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00238,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00239,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0089);
    render_pass_encoder0050.drawIndirect(buffer00161, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer00132, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0061.setIndexBuffer(buffer00219, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0040.end();
    render_pass_encoder0060.drawIndirect(buffer0078, 0);
    render_pass_encoder0061.drawIndirect(buffer00162, 0);
    render_pass_encoder0020.drawIndirect(buffer00176, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00217, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder1000.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00240 = device00.createBuffer({
        label: "buffer00240",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00240, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00240, 0);
    render_pass_encoder0051.drawIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndirect(buffer00132, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00209, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer00164, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1061, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder0021.drawIndirect(buffer00226, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0047, 0);
    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1083,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1031);
    const buffer00241 = device00.createBuffer({
        label: "buffer00241",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00242 = device00.createBuffer({
        label: "buffer00242",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0090 = device00.createBindGroup({
        label: "bind_group0090",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00241,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00242,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0090);
    render_pass_encoder0051.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer00140, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00243 = device00.createBuffer({
        label: "buffer00243",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00243, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00243, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndirect(buffer00176, 0);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer00140, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndirect(buffer0086, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0000.drawIndirect(buffer00152, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0050.drawIndirect(buffer00122, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer001, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndirect(buffer00146, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00244 = device00.createBuffer({
        label: "buffer00244",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00244, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00244, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0082, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00200, 0);
    const buffer00245 = device00.createBuffer({
        label: "buffer00245",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00246 = device00.createBuffer({
        label: "buffer00246",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0091 = device00.createBindGroup({
        label: "bind_group0091",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00245,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00246,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0091);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0070.end();
    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1085,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1032);
    render_pass_encoder0051.drawIndexedIndirect(buffer00222, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0070.drawIndirect(buffer0057, 0);
    render_pass_encoder0070.drawIndirect(buffer00139, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer00161, 0);
    const buffer00247 = device00.createBuffer({
        label: "buffer00247",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00248 = device00.createBuffer({
        label: "buffer00248",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0092 = device00.createBindGroup({
        label: "bind_group0092",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00247,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00248,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0092);
    render_pass_encoder0060.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00245, 0);
    render_pass_encoder0050.drawIndirect(buffer00107, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0062, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0070.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer00200, 0);
    render_pass_encoder0070.drawIndirect(buffer00162, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00157, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00249 = device00.createBuffer({
        label: "buffer00249",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00249, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00249, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00250 = device00.createBuffer({
        label: "buffer00250",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00250, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00250, 0);
    render_pass_encoder0020.drawIndirect(buffer00125, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00200, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.drawIndirect(buffer00139, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0000.drawIndirect(buffer0079, 0);
    render_pass_encoder0050.drawIndirect(buffer0068, 0);
    render_pass_encoder0061.drawIndirect(buffer00166, 0);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0061.setIndexBuffer(buffer00155, "uint16");
    const buffer00251 = device00.createBuffer({
        label: "buffer00251",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00252 = device00.createBuffer({
        label: "buffer00252",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0093 = device00.createBindGroup({
        label: "bind_group0093",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00251,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00252,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0093);
    render_pass_encoder0070.drawIndirect(buffer00119, 0);
    render_pass_encoder0061.drawIndirect(buffer00231, 0);
    render_pass_encoder0060.drawIndirect(buffer00118, 0);
    const buffer00253 = device00.createBuffer({
        label: "buffer00253",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00254 = device00.createBuffer({
        label: "buffer00254",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0094 = device00.createBindGroup({
        label: "bind_group0094",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00253,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00254,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0094);
    const buffer00255 = device00.createBuffer({
        label: "buffer00255",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00256 = device00.createBuffer({
        label: "buffer00256",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0095 = device00.createBindGroup({
        label: "bind_group0095",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00255,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00256,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0095);
    render_pass_encoder0021.drawIndirect(buffer00197, 0);
    render_pass_encoder0070.drawIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0020.drawIndirect(buffer00144, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00211, "uint16");
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00119, 0);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer003, ]);
    const buffer00257 = device00.createBuffer({
        label: "buffer00257",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00258 = device00.createBuffer({
        label: "buffer00258",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0096 = device00.createBindGroup({
        label: "bind_group0096",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00257,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00258,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0096);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1087,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1033);
    render_pass_encoder0020.drawIndirect(buffer00191, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder1010.end();
    render_pass_encoder0021.end();
    render_pass_encoder0000.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0070.drawIndirect(buffer00231, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0079, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0098, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00147, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.drawIndirect(buffer00251, 0);
    render_pass_encoder0051.drawIndirect(buffer00133, 0);
    render_pass_encoder0051.drawIndirect(buffer00161, 0);
    const buffer00259 = device00.createBuffer({
        label: "buffer00259",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00260 = device00.createBuffer({
        label: "buffer00260",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0097 = device00.createBindGroup({
        label: "bind_group0097",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00259,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00260,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0097);
    render_pass_encoder0020.drawIndirect(buffer00223, 0);
    render_pass_encoder0050.drawIndirect(buffer00188, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00246, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer0061, 0);
    const buffer00261 = device00.createBuffer({
        label: "buffer00261",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00262 = device00.createBuffer({
        label: "buffer00262",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0098 = device00.createBindGroup({
        label: "bind_group0098",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00261,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00262,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0098);
    render_pass_encoder0060.setIndexBuffer(buffer00215, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0000.drawIndirect(buffer00184, 0);
    render_pass_encoder0050.drawIndirect(buffer00208, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer00237, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer00195, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00237, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00144, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0061.drawIndirect(buffer00107, 0);
    render_pass_encoder0061.drawIndirect(buffer00184, 0);
    render_pass_encoder0051.drawIndirect(buffer0076, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00123, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1057, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00263 = device00.createBuffer({
        label: "buffer00263",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00263, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00263, 0);
    device10.queue.submit([]);
    render_pass_encoder0070.drawIndirect(buffer00220, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0060, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer00144, 0);
    render_pass_encoder0060.popDebugGroup();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00264 = device00.createBuffer({
        label: "buffer00264",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00264, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00264, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0061.drawIndirect(buffer00132, 0);
    render_pass_encoder0060.drawIndirect(buffer00157, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00239, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00191, 0);
    render_pass_encoder0050.drawIndirect(buffer00263, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0050.drawIndirect(buffer0079, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00219, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer00137, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0000.drawIndirect(buffer00217, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00218, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0061.drawIndirect(buffer00107, 0);
    render_pass_encoder0061.drawIndirect(buffer0055, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0000.setIndexBuffer(buffer0015, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1088, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1088, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndirect(buffer00118, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1077, "uint16");
    device10.queue.submit([]);
    compute_pass_encoder0060.end();
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00166, 0);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00265 = device00.createBuffer({
        label: "buffer00265",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00265, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00265, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1075, "uint16");
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1034);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer000, command_buffer006, command_buffer007, ]);
    render_pass_encoder0021.setIndexBuffer(buffer00227, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0000.drawIndirect(buffer00120, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0049, "uint16");
    compute_pass_encoder0000.end();
    compute_pass_encoder0001.end();
    render_pass_encoder0051.drawIndirect(buffer00112, 0);
    render_pass_encoder0021.drawIndirect(buffer00135, 0);
    render_pass_encoder0070.drawIndirect(buffer00139, 0);
    const buffer00266 = device00.createBuffer({
        label: "buffer00266",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00267 = device00.createBuffer({
        label: "buffer00267",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0099 = device00.createBindGroup({
        label: "bind_group0099",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00266,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00267,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0099);
    render_pass_encoder0061.drawIndirect(buffer0070, 0);
    render_pass_encoder0050.drawIndirect(buffer00152, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00223, 0);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder1010.drawIndirect(buffer1064, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0060.drawIndirect(buffer00139, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0052, 0);
    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1092,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1035);
    render_pass_encoder0050.drawIndirect(buffer00151, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00242, "uint16");
    const buffer00268 = device00.createBuffer({
        label: "buffer00268",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00269 = device00.createBuffer({
        label: "buffer00269",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00100 = device00.createBindGroup({
        label: "bind_group00100",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00268,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00269,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00100);
    render_pass_encoder0020.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00144, 0);
    render_pass_encoder0000.drawIndirect(buffer00241, 0);
    const buffer00270 = device00.createBuffer({
        label: "buffer00270",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00271 = device00.createBuffer({
        label: "buffer00271",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00101 = device00.createBindGroup({
        label: "bind_group00101",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00270,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00271,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00101);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0061.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0070.end();
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    render_pass_encoder0000.drawIndirect(buffer00176, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0020.drawIndirect(buffer00252, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00210, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00272 = device00.createBuffer({
        label: "buffer00272",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00272, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00272, 0);
    render_pass_encoder0070.drawIndirect(buffer00145, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0091, "uint16");
    const buffer00273 = device00.createBuffer({
        label: "buffer00273",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00274 = device00.createBuffer({
        label: "buffer00274",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00102 = device00.createBindGroup({
        label: "bind_group00102",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00273,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00274,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00102);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1093, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1093, 0);
    render_pass_encoder0060.drawIndirect(buffer00122, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0050.drawIndirect(buffer00166, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00275 = device00.createBuffer({
        label: "buffer00275",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00275, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00275, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1094, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1094, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00276 = device00.createBuffer({
        label: "buffer00276",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00276, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00276, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00277 = device00.createBuffer({
        label: "buffer00277",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00277, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00277, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00278 = device00.createBuffer({
        label: "buffer00278",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00278, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00278, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00207, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00124, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer007, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00221, 0);
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1036);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0069, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0050.drawIndirect(buffer00166, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00124, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00249, 0);
    render_pass_encoder0070.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00265, 0);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00237, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder1010.drawIndirect(buffer1093, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
}