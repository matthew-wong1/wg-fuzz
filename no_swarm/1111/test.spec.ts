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
    const array0 = new Float32Array([0.75, -0.5, -0.75, 1.0, -1.0, 1.0, 0.25, -0.5, 0.75, 0.0, 0.25, -0.25, 0.25, 1.0, -1.0, -0.75, -0.5, 0.5, 1.0, -0.5, -0.5, 0.75, -0.5, 1.0, 0.75, 0.75, 1.0, 0.5, 0.75, 0.25, 0.75, -0.5, -0.75, 0.5, 0.25, -0.75, -0.75, 0.25, 0.75, -1.0, 1.0, 0.75, -0.25, -0.25, 1.0, 0.75, -0.25, -0.25, 0.0, 0.75, 0.25, -0.5, 0.75, -0.75, 0.75, 1.0, 1.0, -0.75, 0.75, 0.5, 1.0, -0.25, -1.0, 0.25, 1.0, 1.0, 0.25, -1.0, -0.75, 1.0, 0.5, 0.25, 0.5, 1.0, 0.75, 0.75, 0.5, 0.75, -0.5, -0.5, -1.0, 0.0, 0.5, -0.75, -1.0, 0.75, 1.0, -0.25, 0.25, 0.25, 0.75, 1.0, 1.0, 0.0, 1.0, 1.0, 0.25, -0.5, 0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.25, -1.0, -0.75, -0.25, 0.75, -1.0, 1.0, 0.75, -0.5, -0.25, 0.0, 1.0, -0.5, -0.75, 0.0, -0.25, 0.25, -0.5, 0.0, 0.25, 0.5, -0.25, 0.25, 0.75, -1.0, -0.5, -0.75, 0.25, -0.25, 1.0, 0.0, -0.75, 1.0, 0.25, 1.0, 0.0, -0.75, 1.0, -1.0, 0.0, 0.75, -0.5, -0.5, 1.0, 0.75, 0.0, 0.25, -1.0, -1.0, 1.0, 0.5, -0.25, 0.25, -0.25, 0.0, 1.0, -0.75, 1.0, 0.25, -0.25, 0.0, 0.75, 0.5, 0.5, 0.75, 0.75, 0.5, -0.5, -0.5, -0.75, 0.25, -0.25, -0.25, -1.0, 0.5, 1.0, 0.25, -0.75, -0.5, 0.25, 1.0, 0.25, -0.75, 0.5, -0.75, 0.25, -0.5, 0.5, -0.75, 0.0, 0.5, 0.75, 0.0, -0.75, -0.25, -0.25, 0.75, -0.25, -0.75, 0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_buffer101 = command_encoder101.finish();
    const array2 = new Float32Array([0.25, -0.5, -0.5, 0.0, 0.25, 1.0, -0.25, -0.25, -1.0, 1.0, 0.75, 1.0, 0.5, -1.0, 0.5, -1.0, 0.75, 1.0, 0.5, -1.0, 0.25, 0.5, -0.5, -0.75, 1.0, -0.75, -0.75, -1.0, 0.75, -0.75, -0.75, 1.0, -0.25, -0.75, 0.5, -1.0, 0.75, 0.25, -0.5, 0.25, -1.0, -0.5, 0.0, -0.5, -1.0, 1.0, 0.5, 0.25, 0.5, -0.75, 0.0, -0.5, 1.0, -0.5, 0.5, -0.5, 0.0, 0.75, -0.5, -0.75, -1.0, -0.25, 1.0, 0.5, -0.5, 0.75, 0.25, 1.0, 0.0, -1.0, 0.75, -0.75, 0.5, -1.0, 0.25, 1.0, 0.0, 1.0, -0.75, 0.75, -0.25, 0.25, 0.75, 0.25, 0.75, -1.0, 0.0, 0.0, 0.25, 0.5, 0.5, 0.5, -0.5, -1.0, -0.5, 0.5, -0.75, -1.0, -1.0, 0.25, ]);
    
    const array3 = new Float32Array([0.5, 0.0, 0.0, 0.0, -0.5, -0.5, 0.25, 1.0, 0.0, 0.25, -1.0, 1.0, -0.75, 0.5, -0.25, 0.75, 0.5, 0.0, 0.75, 0.25, -0.5, 0.25, -0.25, -1.0, -0.25, 0.75, 0.75, -0.5, 0.75, 0.25, -1.0, 0.5, -0.5, 0.75, 0.25, 0.75, 0.25, 1.0, 1.0, 0.75, 0.5, -0.5, -0.5, -0.25, -0.25, 0.25, -0.25, -1.0, 0.75, -1.0, -0.75, 0.25, 0.25, -0.5, 0.25, 1.0, -1.0, 0.75, -0.75, 0.25, 0.0, -0.75, 0.0, 0.25, -1.0, 1.0, 0.5, -1.0, 0.25, 0.75, 1.0, 1.0, 0.0, -0.25, -0.25, -1.0, -1.0, 0.5, -1.0, 0.0, 1.0, 1.0, -0.25, 1.0, 0.75, -0.25, -0.5, 0.0, 0.0, 0.25, -0.5, -0.25, -1.0, 1.0, 0.25, 0.5, 1.0, 0.5, 1.0, 0.75, ]);
    device10.pushErrorScope("out-of-memory");
    const array4 = new Float32Array([1.0, -0.75, -0.5, 1.0, -0.25, -1.0, -0.5, -1.0, -0.5, 0.25, -0.25, 1.0, -1.0, 0.75, 1.0, 0.0, 0.75, 0.75, 1.0, -0.25, -1.0, 0.25, 0.75, -0.5, 0.25, 0.5, 1.0, -0.5, 1.0, 1.0, 0.0, -1.0, 1.0, -1.0, 0.25, 0.0, -0.25, -0.5, 0.0, -1.0, 1.0, -1.0, 0.0, 0.5, -0.75, 0.5, -0.75, -0.25, 0.5, 0.75, -0.5, 0.75, 0.25, 0.75, 0.5, 0.75, 0.25, -0.5, -0.5, 0.0, 0.0, -0.25, 0.0, 0.5, -0.75, -1.0, -0.5, 1.0, 0.0, -0.5, 0.0, 0.75, 0.5, -0.25, -0.25, -0.75, 0.5, -1.0, 0.25, 0.0, 0.75, -0.25, 1.0, -1.0, 0.0, 0.25, -0.75, -0.75, -0.75, 0.0, 1.0, -1.0, -0.25, 0.75, -1.0, 0.75, 1.0, 0.0, -0.25, 1.0, ]);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("internal");
    
    device10.queue.submit([command_buffer101, ]);
    const array5 = new Float32Array([0.25, -1.0, -0.25, -0.5, 0.75, 0.75, -0.5, 0.25, 0.5, -0.25, 1.0, 0.25, -1.0, 1.0, -0.5, -0.5, 1.0, -0.5, -1.0, -0.25, 0.75, -0.25, -1.0, 1.0, -1.0, -0.75, -0.75, 0.0, 0.25, 0.25, 0.5, -0.5, -0.25, 1.0, 0.75, -0.5, 0.75, -0.25, 0.75, -0.5, 0.25, 0.25, -0.25, 1.0, -0.5, 0.25, -1.0, 1.0, 0.0, 0.75, -0.5, -1.0, 0.25, 0.75, -1.0, 0.0, 0.5, -0.75, 0.0, 0.0, -0.5, -1.0, 1.0, -1.0, 0.25, 0.25, 0.0, -0.25, 0.0, 0.25, 0.25, 0.75, -0.25, 1.0, -0.75, -0.75, 1.0, 0.5, 0.75, 0.25, -0.75, 1.0, -0.75, 0.0, -1.0, 0.25, -0.5, 0.75, 0.5, 0.75, -0.75, -0.25, -0.5, 0.75, 0.5, -0.75, -0.75, -0.75, -0.25, -1.0, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    texture101.destroy();
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_pass_encoder1030.executeBundles([])
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("validation");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.insertDebugMarker("marker");
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
    render_pass_encoder1030.pushDebugGroup("group_marker");
    buffer100.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
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
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder102.clearBuffer(buffer101);
    
    render_pass_encoder1030.setStencilReference(1);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer101,
        0,
        400
    );
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder104.clearBuffer(buffer100);
    const command_buffer104 = command_encoder104.finish();
    texture102.destroy();
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device10.queue.submit([command_buffer104, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1031.setPipeline(render_pipeline102);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group100);
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1031.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setPipeline(render_pipeline103);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setStencilReference(1);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder103.clearBuffer(buffer101);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder1031.setStencilReference(1);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    buffer202.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    buffer101.destroy()
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer200.destroy()
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer201.destroy()
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.insertDebugMarker("marker");
    
    compute_pass_encoder1020.popDebugGroup()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder1020.setPipeline(render_pipeline107);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder101.setPipeline(render_pipeline104);
    render_pass_encoder1020.setStencilReference(1);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    
    render_pass_encoder1030.setVertexBuffer(0, buffer102);
    
    render_pass_encoder1031.setStencilReference(1);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.popDebugGroup();
    buffer105.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.draw(3);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    compute_pass_encoder2001.setPipeline(compute_pipeline2014);
    render_bundle_encoder102.setPipeline(render_pipeline105);
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
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setStencilReference(1);
    
    texture103.destroy();
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1031.setStencilReference(1);
    
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer203.destroy()
    
    render_pass_encoder1020.beginOcclusionQuery(0)
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1031.setStencilReference(1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder105.copyBufferToBuffer(
        buffer102,
        0,
        buffer102,
        0,
        400
    );
    query200.destroy()
    
    render_pass_encoder1000.setPipeline(render_pipeline1011);
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_pass_encoder1030.popDebugGroup();
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: query100
    });
    
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1060.setPipeline(render_pipeline1011);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
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
    render_pass_encoder1020.setStencilReference(1);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    texture100.destroy();
    render_pass_encoder1050.setPipeline(render_pipeline103);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder1051.executeBundles([])
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    render_pass_encoder1050.setStencilReference(1);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline2014.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group200);
    render_pass_encoder1051.executeBundles([])
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    query200.destroy()
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder1051.setPipeline(render_pipeline1012);
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query201.destroy()
    command_encoder106.pushDebugGroup("mygroupmarker")
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
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
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
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group103);
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
    
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1051.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1051.beginOcclusionQuery(0)
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
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
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    
    
    device00.pushErrorScope("out-of-memory");
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1061.setPipeline(render_pipeline108);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder107.copyBufferToBuffer(
        buffer106,
        0,
        buffer105,
        0,
        400
    );
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1051.setStencilReference(1);
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    render_pass_encoder1070.setPipeline(render_pipeline108);
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
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_pass_encoder1061.setStencilReference(1);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    
    texture102.destroy();
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1051.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setVertexBuffer(0, buffer106);
    buffer103.destroy()
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1070.setStencilReference(1);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.beginOcclusionQuery(1)
    render_pass_encoder1061.setStencilReference(1);
    render_pass_encoder1060.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline108.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1070.setBindGroup(0, bind_group106);
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    render_pass_encoder1061.beginOcclusionQuery(1)
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1070.pushDebugGroup("group_marker");
    render_pass_encoder1060.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    command_encoder108.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1051.pushDebugGroup("group_marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1031.insertDebugMarker("marker");
    
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group107);
    buffer1018.destroy()
    device10.queue.writeBuffer(buffer1011, 0, array5, 0, array5.length);
    render_pass_encoder1020.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const command_buffer108 = command_encoder108.finish();
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline1012.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group108);
    render_pass_encoder1020.popDebugGroup();
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1000.insertDebugMarker("marker");
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group109);
    render_pass_encoder1070.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    buffer1014.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer1019.destroy()
    command_encoder105.copyBufferToBuffer(
        buffer1020,
        0,
        buffer1021,
        0,
        400
    );
    render_pass_encoder1050.setVertexBuffer(0, buffer1016);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1070.setVertexBuffer(0, buffer100);
    render_pass_encoder1050.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer107, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1051.setVertexBuffer(0, buffer103);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1023, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1070.drawIndirect(buffer103, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1050.drawIndirect(buffer1023, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.setVertexBuffer(0, buffer1016);
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder1061.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1051.drawIndirect(buffer1016, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1050.drawIndexed(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1061.end();
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group1010);
    render_pass_encoder1031.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1070.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    command_encoder106.popDebugGroup()
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group1011);
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1051.end();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    render_pass_encoder1061.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1020.setVertexBuffer(0, buffer1016);
    render_pass_encoder1051.setIndexBuffer(buffer1017, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.draw(3);
    compute_pass_encoder2001.end();
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
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
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline1011.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group1012);
    render_pass_encoder1060.setVertexBuffer(0, buffer1016);
    render_pass_encoder1060.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1070.drawIndirect(buffer107, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1060.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1017, "uint16");
    const command_buffer107 = command_encoder107.finish();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1020.end();
    render_pass_encoder1050.drawIndirect(buffer1013, 0);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder1051.end();
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1070.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer103, command_buffer106, command_buffer107, command_buffer108, ]);
    render_pass_encoder1051.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    compute_pass_encoder2000.end();
    device00.queue.submit([]);
    compute_pass_encoder1020.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1030, 0);
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2011, 0);
    command_encoder200.popDebugGroup()
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1070.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer106, ]);
    const command_buffer105 = command_encoder105.finish();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder1061.setIndexBuffer(buffer1015, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndirect(buffer1016, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1070.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2012, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1027, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1051.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder2001.end();
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
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
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder1051.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1060.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1029, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1060.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.drawIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1070.drawIndirect(buffer1030, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1061.popDebugGroup();
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline2014.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group203);
    render_pass_encoder1060.drawIndexedIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer106, command_buffer108, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndirect(buffer1030, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1023, 0);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    render_pass_encoder1070.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1023, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
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
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline2014.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group204);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1070.drawIndirect(buffer1030, 0);
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    render_pass_encoder1060.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1070.drawIndirect(buffer1033, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1060.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer105, ]);
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    render_pass_encoder1070.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    device10.queue.submit([command_buffer100, ]);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group207);
    compute_pass_encoder2000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1061.drawIndexed(3);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1016);
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2023, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndirect(buffer1031, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1030, "uint16");
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer105, ]);
    render_pass_encoder1070.drawIndirect(buffer1022, 0);
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1060.drawIndirect(buffer1016, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer105, command_buffer108, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndirect(buffer1039, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndexedIndirect(buffer1021, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2024, 0);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1025, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2025, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2025, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1050.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.popDebugGroup();
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1051.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1061.drawIndirect(buffer1036, 0);
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
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline2014.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group208);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1000.end();
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    render_pass_encoder1060.drawIndirect(buffer1021, 0);
    render_pass_encoder1070.drawIndirect(buffer1040, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1051.end();
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
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1050.drawIndirect(buffer1040, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    device10.queue.submit([command_buffer103, command_buffer106, ]);
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder1050.draw(3);
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1041, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, ]);
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
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1051.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1040, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1050, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer106, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1051, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1051, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1031.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1050, 0);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    render_pass_encoder1051.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1070.end();
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2032, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1040, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2033, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2033, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder2000.end();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2034, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2034, 0);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1000.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1052, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1060.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1070.drawIndirect(buffer1030, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.drawIndirect(buffer1040, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1023, 0);
    device20.queue.submit([command_buffer200, ]);
}