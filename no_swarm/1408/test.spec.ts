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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([1.0, -0.25, 0.5, 0.25, 0.25, 0.0, -0.25, -0.5, 1.0, -0.25, 0.75, 1.0, 0.25, -0.75, 0.75, -1.0, -0.75, -1.0, -0.75, -1.0, 0.5, -1.0, 0.5, 0.5, 0.0, 0.5, 0.5, 1.0, -1.0, -1.0, -0.5, 0.25, -0.25, 0.5, 0.5, 0.5, 1.0, 0.25, -0.75, 0.75, 0.0, 0.25, -1.0, 0.25, -0.5, 1.0, -0.25, 0.0, -0.75, -0.75, 1.0, 1.0, -0.25, 0.5, 1.0, -0.25, -0.75, -0.25, -0.75, -0.5, -0.25, 0.5, 1.0, -0.5, 0.75, -1.0, 0.0, 0.0, 0.0, -0.75, 0.75, 0.75, 0.25, -0.75, 0.0, -0.25, -1.0, -0.5, 1.0, -0.5, -0.25, 0.25, 0.25, -1.0, 0.25, -0.25, -0.75, -0.25, 1.0, 0.5, -0.25, 0.0, 0.0, 0.25, 0.25, 0.75, 0.0, -0.75, -1.0, 0.25, ]);
    const array1 = new Float32Array([-0.25, 0.75, 0.5, 1.0, -0.75, 0.0, 0.0, -0.75, 1.0, 0.5, 0.25, -0.5, -1.0, -0.25, 0.5, -0.75, 0.0, 0.75, 0.75, 0.25, -0.75, -0.5, 0.0, -0.75, -0.25, 0.5, -0.75, 1.0, -0.75, 0.5, -0.25, 0.0, 0.0, 1.0, 1.0, -0.75, -0.75, 0.25, -0.25, 1.0, -0.5, -0.5, 0.5, -0.75, -0.25, -0.5, -0.75, -0.25, 0.0, -0.75, 0.75, 0.5, -1.0, -0.5, 0.5, 0.0, -0.5, -0.5, -0.75, 1.0, 0.0, -0.75, 0.5, -0.75, 0.5, 0.25, 0.25, -0.5, 0.25, 0.25, 0.5, -0.25, -1.0, -0.25, 0.0, 0.5, 0.5, 0.75, 0.75, -1.0, -0.25, -0.25, -1.0, 0.0, -0.75, -0.75, 0.0, 0.5, -0.25, 0.25, 0.75, -0.75, -0.25, -0.75, -1.0, 0.5, -0.25, 0.5, -0.5, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    command_encoder100.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    
    
    
    device10.pushErrorScope("out-of-memory");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder101.insertDebugMarker("mymarker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    const array2 = new Float32Array([0.0, 0.25, -1.0, -0.25, 0.25, 0.25, 1.0, 1.0, 0.0, -0.5, -0.75, -0.75, -0.25, -1.0, 0.5, 0.75, 0.0, -1.0, 0.75, 0.25, 0.5, -0.75, -0.25, 1.0, -0.5, -0.25, -0.75, 1.0, -0.25, 0.0, 0.5, -0.5, 0.5, 0.5, 0.0, 0.5, 0.75, -1.0, -0.5, 0.75, 0.75, 0.25, 0.0, 0.25, -0.75, 0.25, 0.5, -0.75, -0.25, 0.5, 0.25, 0.25, -1.0, -0.5, -0.5, -1.0, 0.0, 0.25, -0.75, -0.5, 0.5, 0.0, -0.75, 1.0, -1.0, -0.75, 0.25, 0.75, 0.75, 0.25, -0.75, -0.5, -0.5, 1.0, 0.0, -0.75, -0.25, -1.0, 0.25, 0.0, -0.25, -0.25, -1.0, 0.25, 1.0, 0.75, -1.0, 1.0, 1.0, -0.25, -0.75, 1.0, 0.75, -0.25, -0.75, 0.0, 0.75, -0.25, -0.25, 0.5, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    command_encoder102.insertDebugMarker("mymarker");
    
    device10.destroy();
    
    const array3 = new Float32Array([-1.0, 0.5, 0.0, -0.25, -0.25, -1.0, 1.0, 0.75, -0.75, -0.25, 0.75, 0.5, 1.0, 0.75, 0.75, 0.5, 0.0, 0.25, -1.0, 1.0, 0.75, 0.5, 1.0, -0.25, -1.0, 0.0, 0.0, 0.0, -0.5, 0.0, 0.5, 1.0, -0.25, 0.25, 0.0, -0.75, -0.5, 0.75, 0.25, 0.5, 0.5, -1.0, -1.0, 0.0, -0.75, -1.0, 0.25, 0.5, -1.0, 0.5, -0.25, -0.25, 0.75, -0.25, -0.75, 1.0, -1.0, 0.5, 0.25, 0.5, -0.25, 0.5, 0.5, 1.0, 0.5, 0.5, 0.5, 0.0, -0.25, 0.75, -0.25, 0.25, 0.25, 0.25, 1.0, -0.25, 0.25, 0.25, 1.0, -1.0, -1.0, -0.75, 0.5, 0.25, 0.5, 0.0, -1.0, 0.0, -0.75, -1.0, 0.5, 0.5, -0.25, -1.0, 0.25, -1.0, -0.25, 1.0, -0.25, 0.0, ]);
    const array4 = new Float32Array([0.75, -1.0, 1.0, 0.5, 0.0, 0.75, 0.0, -0.75, 0.25, 0.0, 0.25, -0.5, -0.75, -1.0, -0.25, -1.0, -0.5, -0.5, -0.5, -1.0, -1.0, -0.5, -1.0, -0.5, -0.75, 0.5, 1.0, 0.75, -0.5, -0.5, 0.75, 1.0, 0.25, 0.0, 1.0, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, -0.5, -0.25, 0.25, -0.25, -0.25, 0.25, 0.0, -1.0, -0.25, 1.0, 1.0, -0.5, -0.75, -0.5, 0.0, 1.0, 1.0, 0.75, -1.0, -0.5, 0.0, 0.25, -0.5, 0.25, 0.0, 0.0, 1.0, -0.75, 0.5, 0.0, -0.5, -1.0, 1.0, 1.0, -0.75, -0.75, -0.75, 1.0, -1.0, 0.0, -0.5, 0.75, 0.25, 0.5, 0.0, 0.25, 0.25, -0.75, -0.75, 0.0, 1.0, 0.5, -0.5, 0.0, 0.0, 0.25, -0.25, -0.5, -0.5, ]);
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.popDebugGroup();
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    buffer200.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([-0.5, -1.0, 0.0, 0.5, -0.5, 0.75, 0.25, -1.0, 0.5, 0.5, 0.25, 1.0, 0.25, -0.5, 0.0, 0.0, -0.25, 0.75, 0.0, -0.5, 0.5, 0.0, 0.5, -0.75, -0.75, 1.0, 0.5, -0.75, 0.75, -0.25, -1.0, 0.5, 1.0, 0.25, 0.25, -1.0, 0.75, 0.75, 0.75, 0.0, 0.5, 1.0, -0.25, 0.5, 0.0, -1.0, -1.0, -0.25, 0.0, -0.5, 0.75, 0.0, -0.25, 1.0, 0.25, -1.0, -1.0, -1.0, 1.0, -0.75, -0.75, -0.75, 0.75, -1.0, 0.25, -0.75, -0.25, 0.0, -0.5, -1.0, -0.25, 0.25, 0.75, 0.5, -1.0, 1.0, -1.0, 0.0, 1.0, -0.25, 0.75, 0.25, -0.5, 0.25, 1.0, 1.0, 0.75, -0.75, 1.0, 0.75, -1.0, -0.5, -0.5, -0.5, -0.5, 0.75, 0.5, 0.5, -0.5, -0.75, ]);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    render_pass_encoder2000.setStencilReference(1);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const array6 = new Float32Array([0.0, -0.75, 0.5, 0.0, 1.0, 0.5, -0.25, -1.0, -1.0, -0.75, -1.0, -0.75, 0.5, -1.0, -0.75, -0.25, -0.25, -0.75, -1.0, 0.5, 0.25, -0.75, 0.75, 0.25, -0.75, 0.0, -0.75, 0.25, -1.0, -0.75, 0.25, 0.5, 0.75, -1.0, -1.0, 0.0, -0.5, -0.25, 0.0, -0.5, 0.0, 0.75, 0.0, -0.75, 1.0, 0.5, -0.5, 0.25, 1.0, 0.5, 0.25, -0.75, -1.0, 0.5, -0.75, 0.0, 1.0, 0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 0.5, 0.75, 0.25, 0.25, -1.0, -1.0, 0.0, -0.5, -0.75, -0.75, -1.0, 1.0, -0.5, 0.0, 1.0, -0.5, -0.75, -0.5, -0.25, -0.5, 0.25, 0.5, 0.5, 0.5, -0.25, 0.5, 0.75, 0.25, 0.0, -0.5, 0.5, -0.25, -0.5, 0.25, -0.25, 0.25, -0.25, ]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query201.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const array7 = new Float32Array([-0.25, 1.0, -0.25, -0.75, 1.0, -0.25, 0.5, 0.5, 0.5, 0.25, -0.25, 0.5, 0.75, 1.0, 0.0, 0.25, -0.5, 0.5, 0.5, -0.25, -1.0, -0.75, 0.25, 0.0, 0.25, 1.0, 0.25, -0.25, -0.75, -0.25, -0.5, -0.5, 0.25, 1.0, 1.0, -1.0, 0.25, 0.5, 1.0, -0.25, 0.25, 0.25, 0.75, 0.5, -1.0, -0.5, 0.75, 1.0, -0.75, 0.75, -0.25, 0.75, 0.0, -1.0, -0.5, -0.5, -0.25, -0.75, -1.0, 0.5, -0.5, -0.25, -0.5, 1.0, 0.75, 1.0, 0.5, 0.75, 0.75, 0.0, -0.75, -0.75, 0.75, -0.75, -0.25, 0.75, 1.0, -0.5, -0.5, 0.0, 0.0, 0.0, -1.0, 0.75, 0.75, -0.5, -0.25, -0.5, -0.5, -1.0, 0.25, 0.0, -0.5, 0.75, 0.5, -0.25, -0.25, -0.25, -0.75, -1.0, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture200.destroy();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2010.setStencilReference(1);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2001.popDebugGroup();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2001.insertDebugMarker("marker");
    texture200.destroy();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    device20.pushErrorScope("internal");
    command_encoder200.clearBuffer(buffer201);
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2011.executeBundles([])
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder2011.executeBundles([render_bundle_encoder200, render_bundle_encoder201, ])
    buffer201.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder200.popDebugGroup();
    
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
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
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture000.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const array8 = new Float32Array([-0.25, 0.0, -0.75, 0.5, -0.25, -1.0, 0.0, -0.5, -0.75, 1.0, -1.0, -0.5, -0.5, -0.75, -0.5, 0.5, 0.75, -0.75, 0.0, -0.75, -0.25, 1.0, -0.25, -0.75, -0.75, 0.75, 0.25, 0.0, -1.0, -0.5, 0.0, 0.75, 0.25, -0.75, 0.0, -0.5, 0.0, 1.0, 1.0, 0.75, -1.0, 1.0, -1.0, -0.5, 0.0, -0.25, 0.5, -0.75, -0.25, 0.5, -0.25, 0.75, -1.0, 0.0, 0.0, 0.5, -0.25, 0.0, -0.25, 0.0, 0.0, -0.25, 0.75, 0.25, -0.75, -1.0, 1.0, 1.0, 0.5, -0.5, 0.5, -0.75, -0.25, 0.5, -1.0, 0.0, -0.75, 0.25, -0.25, 0.5, -0.5, 1.0, -1.0, 0.75, -0.75, 0.5, 0.5, -1.0, 0.25, 1.0, 0.25, 1.0, -0.5, 0.0, -0.25, 0.25, -0.75, -0.25, -0.25, -0.75, ]);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const array9 = new Float32Array([-0.25, -1.0, -0.5, 1.0, -0.25, -0.75, -0.25, 0.0, -0.25, 0.25, 0.5, -1.0, -1.0, -0.25, 0.75, -1.0, 0.25, -1.0, 0.5, 0.75, -1.0, 0.25, 1.0, -0.5, 0.25, 0.0, 1.0, -1.0, 1.0, 1.0, -0.5, -0.5, -0.75, 0.5, -0.25, 0.5, 0.25, 0.25, -0.75, -0.75, -0.5, -1.0, 0.0, -0.75, -0.25, -0.25, 0.75, 0.75, -0.5, -0.25, -0.75, 0.0, 0.25, 1.0, 0.25, 0.0, 0.5, 0.5, 0.25, 0.0, 0.75, 1.0, -1.0, 0.0, 0.75, 1.0, 1.0, 0.75, -0.5, -0.75, 0.5, -0.75, 0.25, -0.75, 1.0, 0.25, 0.5, -1.0, 0.5, 0.75, -0.5, -0.25, -1.0, 0.0, 0.25, 0.5, 0.25, 0.75, 0.75, -0.25, 0.75, 0.5, -0.5, 0.75, 1.0, -0.75, 0.5, -0.75, 0.0, 0.0, ]);
    device30.destroy();
    
    command_encoder102.pushDebugGroup("mygroupmarker")
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
    
    
    const array10 = new Float32Array([-0.75, -1.0, 0.25, -0.25, 0.0, -0.5, 1.0, 0.0, -1.0, 1.0, 0.75, -0.25, -1.0, -0.75, 0.0, 0.25, 0.25, 0.75, -1.0, 0.75, -1.0, 0.25, -1.0, -0.5, -0.25, -0.5, 0.0, -0.75, 0.25, -0.25, -0.25, 0.0, -1.0, -1.0, 0.0, 0.75, 0.25, 0.25, 0.75, 0.25, 0.25, -1.0, 1.0, -1.0, 0.25, 0.5, -0.5, -0.25, 0.25, -1.0, -0.5, 0.0, -0.75, 0.75, 0.5, 0.5, -1.0, -0.25, 0.75, -0.75, 0.75, 1.0, 0.75, -0.75, 0.0, -0.25, -1.0, -1.0, -0.5, -0.5, 1.0, 0.0, 0.25, 0.25, 0.25, -1.0, -1.0, 0.25, -0.25, -0.75, -0.25, -0.5, 0.75, 0.25, 0.25, -0.25, 0.75, -0.5, 0.75, -0.75, 0.5, 0.25, 0.25, 0.0, 1.0, -0.5, -0.75, -0.25, 0.25, 0.75, ]);
    
    
    
    const array11 = new Float32Array([-1.0, -0.25, 0.25, 1.0, -0.5, -1.0, 0.25, 0.5, -1.0, 0.0, 0.5, -0.25, -0.75, 0.0, 0.75, -0.75, -0.5, 0.25, -0.25, -1.0, 0.0, 1.0, -0.25, 1.0, 0.0, 1.0, 1.0, -0.5, 0.5, 0.25, 0.25, -0.25, -0.5, 0.0, -0.75, -0.25, 0.75, -0.25, -0.25, 1.0, 0.75, 0.75, 0.75, 0.5, -0.75, 0.5, 0.5, -0.5, -0.5, 0.75, -0.75, -0.5, -0.75, 0.5, -0.75, 0.0, 0.75, 0.5, 0.0, -1.0, -1.0, 0.25, -0.75, 0.75, -0.5, -1.0, -1.0, 0.25, -0.5, -0.5, 0.5, -0.5, -0.25, 1.0, -1.0, 0.5, -0.75, 0.5, 0.75, -0.75, -1.0, 0.75, -0.25, 0.5, -0.75, 0.5, -0.75, -0.25, 0.25, 0.5, -0.25, -0.5, -0.25, -0.75, 0.0, 0.5, 1.0, 0.5, -1.0, 0.5, ]);
    device00.queue.submit([]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const array12 = new Float32Array([-0.75, -0.5, 0.25, 0.0, 0.25, 1.0, -0.5, -0.75, 1.0, 0.5, 0.5, -1.0, -0.75, 0.5, -1.0, 0.5, 0.25, -0.25, -0.5, -0.25, 0.75, 0.5, -0.75, -1.0, 0.75, 0.5, 1.0, 0.75, 0.5, 0.0, -0.75, 1.0, 0.5, -1.0, 0.25, -0.25, 1.0, -1.0, 0.0, 0.25, -0.25, -1.0, 1.0, 0.5, -1.0, 0.5, 0.75, -0.75, 0.5, -0.75, 0.0, -0.5, -0.75, -0.5, -1.0, 0.25, 0.0, -1.0, 1.0, 0.0, -1.0, 0.5, 0.0, 0.75, 0.5, -0.75, 0.0, 1.0, -1.0, -0.75, -0.75, 0.25, 0.25, 0.25, 0.5, 1.0, -0.75, -0.25, 0.25, -1.0, 0.75, 1.0, -0.5, 1.0, 1.0, 1.0, 0.75, -0.5, 0.25, 1.0, 0.75, -0.5, 0.5, -0.25, 1.0, -1.0, 0.25, 0.0, -0.5, 0.5, ]);
    const array13 = new Float32Array([0.0, 0.25, 0.0, 0.5, -0.25, -0.75, 0.0, -0.75, -1.0, 0.25, 0.0, 0.0, 0.75, 0.75, 1.0, -0.75, 0.75, 0.5, 0.5, 0.0, 0.75, 1.0, 0.25, 0.75, 0.25, -0.25, 1.0, 0.0, 1.0, -0.25, -0.5, 0.75, 0.75, 0.25, 0.5, -0.5, -0.5, -0.5, -1.0, -0.5, 0.25, 0.0, -0.25, 0.75, 1.0, -0.25, 0.75, -0.5, 0.25, 0.5, 0.5, -0.75, -0.75, -1.0, 0.75, 0.0, -0.5, -1.0, 0.25, -0.25, -0.75, 1.0, 0.5, 0.75, 0.5, 0.0, -1.0, 0.75, 0.25, -1.0, -0.25, 0.75, 1.0, -0.25, -1.0, -1.0, 0.75, 0.75, 1.0, 1.0, -0.5, -0.5, 0.0, -0.25, -0.75, -0.25, 0.5, 0.75, -0.25, 1.0, -1.0, -0.5, -0.5, 0.25, -0.5, -0.75, 0.0, 1.0, 0.5, 0.5, ]);
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device70.pushErrorScope("validation");
    device40.queue.submit([]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device70.destroy();
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    
    const array14 = new Float32Array([0.75, -1.0, -0.75, 0.0, 0.0, 0.75, -1.0, -0.75, 0.25, 1.0, -0.75, 0.0, 0.25, 0.0, -0.25, 0.75, -0.75, -0.5, 0.5, 0.25, 0.5, -0.25, 0.5, 0.25, 0.5, 1.0, 0.5, -0.5, 0.25, 1.0, -0.5, -1.0, 0.0, 0.75, -0.75, 1.0, -0.5, 0.25, -0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.5, 1.0, 0.5, 1.0, 1.0, -0.5, 1.0, 0.5, -0.75, -0.25, 0.0, 0.5, 0.75, 0.75, 0.25, 0.25, 0.0, -1.0, -0.75, 0.0, -0.75, 1.0, 0.25, -0.25, -0.5, -1.0, 0.5, -0.75, 1.0, -1.0, -0.5, -0.5, -1.0, 1.0, -1.0, 0.25, 1.0, -1.0, 0.0, 1.0, -0.25, 0.25, -1.0, 0.5, 1.0, 0.75, -1.0, 0.0, -1.0, -0.5, 0.25, 0.75, -0.75, -0.25, 0.5, -0.25, ]);
    device10.queue.writeBuffer(buffer100, 0, array14, 0, array14.length);
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
    device40.destroy();
    
    
    
    device50.pushErrorScope("out-of-memory");
    
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer500.destroy()
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device60.destroy();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    const command_buffer500 = command_encoder500.finish();
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder2001.setStencilReference(1);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    buffer501.destroy()
    const array15 = new Float32Array([0.0, 0.25, -1.0, 0.25, 0.5, -0.5, 0.75, 0.0, -0.25, -0.75, -0.25, -0.5, 0.75, -0.5, -0.5, -1.0, 0.75, -1.0, 0.5, 0.75, 1.0, 0.25, -0.75, 0.5, 0.75, 1.0, 0.5, 0.5, -0.25, 0.0, 1.0, -0.25, 0.0, -0.25, -1.0, -0.75, -0.75, 0.75, -1.0, 0.25, 0.0, 0.75, 0.5, -0.5, 0.5, 0.5, 0.25, -0.75, -0.75, 0.0, -1.0, 0.75, 0.0, -0.5, -0.75, 0.75, -0.5, -0.5, 0.5, -1.0, -0.5, -0.5, 0.0, -0.25, 1.0, 0.75, 1.0, 1.0, -1.0, 0.0, -0.25, 0.25, 0.0, 0.0, 0.25, -0.75, 0.0, -0.5, -1.0, 1.0, 1.0, -1.0, -0.25, 0.0, 0.75, -0.25, 0.0, 0.0, 0.5, -0.25, -0.75, 0.0, 0.0, 0.0, -1.0, -0.25, 0.0, 1.0, -0.25, -1.0, ]);
    command_encoder000.pushDebugGroup("mygroupmarker")
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    device10.queue.writeBuffer(buffer100, 0, array14, 0, array14.length);
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    device20.queue.writeBuffer(buffer202, 0, array11, 0, array11.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    buffer501.destroy()
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder2011.executeBundles([])
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    buffer502.destroy()
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    render_bundle_encoder501.popDebugGroup();
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.popDebugGroup();
    device50.pushErrorScope("internal");
    texture500.destroy();
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    buffer503.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder502.pushDebugGroup("group_marker");
    query500.destroy()
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_buffer101 = command_encoder101.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    buffer102.destroy()
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer504,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer502, 0, array14, 0, array14.length);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    
    command_encoder501.insertDebugMarker("mymarker");
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout503]
    });
    device50.queue.submit([command_buffer500, ]);
    query000.destroy()
    
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    const array16 = new Float32Array([0.5, 0.5, 0.75, -1.0, -0.25, 1.0, -0.5, 0.25, 0.25, -0.75, 0.75, 0.25, -0.75, 0.75, 0.0, -1.0, 0.25, 0.5, 1.0, 0.75, -1.0, 0.25, -0.25, -0.5, -0.25, 0.5, 1.0, -0.5, -0.5, -0.75, -0.5, 0.0, 0.5, -0.25, -0.25, -0.25, -1.0, 1.0, -0.25, 0.25, -1.0, -0.5, -0.25, 0.5, -0.5, 0.25, 1.0, -0.25, -1.0, 0.0, -1.0, -1.0, -0.5, -1.0, -0.75, -0.25, 0.5, -1.0, 0.75, 0.0, 0.5, 0.25, -1.0, 0.0, 0.5, 1.0, -0.75, 0.5, 0.25, 1.0, -0.5, 0.75, 0.0, -0.25, 0.0, 0.0, 0.0, -0.25, -0.75, 0.5, 1.0, 0.0, -0.5, 0.25, 0.0, -0.75, -0.25, 0.25, 0.75, -0.25, 0.75, -0.5, 1.0, -1.0, -0.5, -0.5, -0.75, -0.5, 0.0, 0.0, ]);
    const array17 = new Float32Array([0.75, 0.5, 0.5, -0.5, 0.25, -0.75, 0.75, 1.0, 0.75, 0.25, 0.0, 0.5, -0.25, 1.0, 0.25, 0.75, 1.0, -0.75, -0.25, 0.5, 0.0, -1.0, 0.0, 1.0, 0.0, 0.75, 0.25, 0.25, -0.75, -0.25, 0.5, 0.0, 0.75, 0.75, -0.5, -1.0, -0.5, -0.25, 0.5, 0.0, 0.0, 0.25, -0.25, -0.5, -0.25, 0.75, -0.5, -0.75, -1.0, -0.75, 0.0, 0.25, 0.5, 1.0, 0.5, 0.5, -0.5, -1.0, 0.5, -0.75, 0.5, 0.25, -1.0, 0.25, -0.5, -0.25, 0.25, -0.25, 0.75, 0.75, 0.25, 0.5, 0.75, -0.75, 0.0, -0.5, -0.5, 0.0, -1.0, -1.0, 0.0, -0.25, -1.0, -0.25, 0.0, -0.25, -1.0, 1.0, -0.5, 1.0, 0.25, -1.0, -0.25, 0.0, 0.25, -0.75, -0.75, 0.75, 0.25, -1.0, ]);
    
    device70.destroy();
    device30.pushErrorScope("out-of-memory");
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer505.destroy()
    device50.queue.writeBuffer(buffer504, 0, array13, 0, array13.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    buffer504.destroy()
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device50.queue.writeBuffer(buffer505, 0, array2, 0, array2.length);
    render_bundle_encoder502.setPipeline(render_pipeline500);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
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
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    
    device50.queue.writeBuffer(buffer508, 0, array12, 0, array12.length);
    device50.queue.writeBuffer(buffer507, 0, array7, 0, array7.length);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder5010.insertDebugMarker("marker");
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
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout504]
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.queue.writeBuffer(buffer503, 0, array3, 0, array3.length);
    
    render_bundle_encoder502.setVertexBuffer(0, buffer502);
    device50.queue.writeBuffer(buffer506, 0, array4, 0, array4.length);
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
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
    render_pass_encoder5010.setPipeline(render_pipeline502);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout504]
    });
    buffer507.destroy()
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer504,
        0
    )
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device50.pushErrorScope("out-of-memory");
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    render_bundle_encoder502.draw(3);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    render_bundle_encoder502.popDebugGroup();
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout507,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
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
    buffer000.destroy()
    
    const array18 = new Float32Array([0.25, -0.5, 0.25, -1.0, 0.25, -0.75, -0.75, 0.5, -0.5, 0.75, -0.25, 0.0, 0.25, 0.5, -0.5, 1.0, 0.5, 0.5, -0.5, 0.5, 0.75, 0.5, 0.0, 1.0, 0.0, 0.5, 0.75, 1.0, 1.0, 0.5, -0.5, -0.75, 0.5, 0.0, 0.75, -0.75, 1.0, -1.0, 1.0, 0.5, 0.75, 0.0, 0.25, -1.0, 0.75, -0.5, 1.0, -0.5, 0.0, 0.5, 1.0, 0.0, -1.0, -1.0, -0.5, 0.5, 0.25, -0.5, 0.75, 0.25, 0.5, 0.25, -0.5, 0.25, -0.25, -0.25, -0.5, -0.5, -1.0, 0.5, 0.5, 0.0, -0.5, 0.5, 0.25, -0.5, 0.5, -0.5, 0.25, -0.25, 0.5, 1.0, 0.75, 0.0, -1.0, -0.5, 0.75, 0.25, -0.75, 0.25, 0.75, 0.0, 0.0, 0.75, -0.25, -0.5, 0.25, -1.0, -0.25, 1.0, ]);
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout509,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_pass_encoder5011.pushDebugGroup("group_marker");
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout506,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_pass_encoder5010.setStencilReference(1);
    
    render_pass_encoder5030.setPipeline(render_pipeline500);
    
    
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    render_pass_encoder5010.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5011.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
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
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline502.getBindGroupLayout(0),
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

    render_pass_encoder5010.setBindGroup(0, bind_group501);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    query000.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer508, 0, array2, 0, array2.length);
    buffer5010.destroy()
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setPipeline(render_pipeline505);
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5011.setPipeline(render_pipeline501);
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group502);
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
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
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    render_pass_encoder5011.setBindGroup(0, bind_group503);
    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5016,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group504);
    command_encoder501.popDebugGroup()
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5011.setVertexBuffer(0, buffer5013);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5011.setIndexBuffer(buffer5012, "uint16");
    render_pass_encoder5030.setVertexBuffer(0, buffer5016);
    render_pass_encoder5011.drawIndexed(3);
    render_pass_encoder5030.drawIndirect(buffer500, 0);
    render_pass_encoder5020.setVertexBuffer(0, buffer507);
    render_pass_encoder5020.drawIndirect(buffer500, 0);
    const command_buffer200 = command_encoder200.finish();
    command_encoder102.popDebugGroup()
    render_pass_encoder5020.end();
    render_pass_encoder5011.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder5030.end();
    render_pass_encoder5011.end();
    const command_buffer503 = command_encoder503.finish();
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5030.drawIndirect(buffer5011, 0);
    render_pass_encoder5010.setVertexBuffer(0, buffer5016);
    render_pass_encoder5010.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5011.end();
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder5010.end();
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
    device50.queue.submit([command_buffer502, ]);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder5011.end();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5011.end();
    render_pass_encoder5030.draw(3);
    render_pass_encoder5010.end();
    render_pass_encoder5011.drawIndexed(3);
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5011.end();
    render_pass_encoder5011.popDebugGroup();
}