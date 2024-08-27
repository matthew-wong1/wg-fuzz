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
    const array0 = new Float32Array([1.0, 0.25, 1.0, -1.0, 0.75, -0.5, 0.25, -1.0, -0.25, 0.25, -0.75, -1.0, -0.5, -0.75, -0.25, 0.25, 0.25, 0.0, 0.0, 0.75, -0.5, -0.25, 1.0, 1.0, -0.5, 0.25, -0.5, 0.0, -0.25, 0.0, 0.5, 0.25, 0.5, 0.5, -0.5, 0.5, 0.5, -0.5, 1.0, 0.5, -0.25, 0.75, -0.5, 0.0, -0.5, -0.25, -0.25, 0.75, -0.75, 0.75, -0.25, -0.25, -1.0, 0.25, 0.75, 1.0, 1.0, 0.5, 0.5, -0.5, 0.5, 0.75, 1.0, 1.0, 0.0, 0.0, -1.0, -1.0, 1.0, 0.5, 0.5, -0.5, -0.25, -0.25, 0.25, 0.25, 0.25, -0.5, 0.5, -1.0, -1.0, 1.0, -0.5, -1.0, -0.75, -0.75, 0.5, -0.25, -0.5, 0.0, -0.75, 0.5, 0.25, -0.75, 0.75, 0.5, -0.5, 0.75, 0.5, 0.75, ]);
    
    
    const array1 = new Float32Array([-1.0, 0.75, -0.25, 1.0, 0.25, 0.5, -0.25, 1.0, -0.25, -0.75, -0.5, -0.25, -0.5, 0.5, -0.5, -0.25, 0.75, -1.0, 1.0, -1.0, 1.0, -0.5, 1.0, 0.0, 0.0, 0.0, 0.5, 0.75, -0.75, -0.5, 1.0, 0.0, -1.0, -1.0, -0.25, 0.25, 0.0, 0.75, -1.0, -0.5, 1.0, -0.5, 0.5, -0.75, 0.25, -0.75, 0.5, 1.0, 0.25, -1.0, 0.25, -0.5, -0.5, 0.0, 0.25, -1.0, 0.75, -0.75, 0.25, -0.5, -0.75, -0.25, -0.5, -0.5, -0.25, -1.0, -0.25, 0.5, 0.75, 0.0, -0.5, -0.75, -0.5, 0.75, -0.25, -1.0, -0.25, -0.5, 0.5, 0.75, 1.0, 0.25, -1.0, -1.0, 0.0, -0.75, -0.5, 0.25, 0.75, -0.75, 0.25, 0.75, 1.0, 0.0, -0.75, -0.5, 0.75, -0.5, -0.5, -0.25, ]);
    
    
    const array2 = new Float32Array([0.75, -0.25, 0.75, 0.25, -0.5, 0.75, 0.0, 0.0, 0.75, -1.0, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, 0.5, 0.75, -1.0, 0.5, -0.75, -1.0, -0.75, -0.25, 0.25, 0.25, 0.25, -0.75, 0.5, 0.5, -0.25, -1.0, -0.5, -0.5, 1.0, -0.75, -0.5, 0.25, -0.75, 0.25, 0.75, 0.75, -0.75, 0.0, -0.5, -0.5, 0.75, -0.25, 0.5, -0.75, 0.5, 0.25, 0.75, 0.0, 1.0, 0.0, -1.0, 0.25, 0.5, -0.5, -0.75, -1.0, 0.5, -1.0, 1.0, -0.75, 0.5, -1.0, -0.75, 0.5, -0.5, 0.25, 1.0, -0.5, -0.75, 0.5, -0.75, -0.75, 0.75, -0.25, 0.75, -0.75, 0.25, -0.25, -0.75, 0.25, -0.75, 1.0, 0.5, 0.75, -0.25, -0.5, 1.0, -0.5, -1.0, 0.5, 0.5, 0.75, -1.0, -0.5, ]);
    const array3 = new Float32Array([0.5, -0.25, -0.5, -0.25, 0.75, -1.0, 0.5, 0.5, 0.75, -0.25, 1.0, -1.0, -0.5, -1.0, 0.25, -0.5, 0.5, 0.5, 0.75, 0.75, -0.75, -0.75, -0.5, 0.25, -0.25, 0.0, 0.5, -0.25, 0.75, -0.25, -0.5, -0.5, -0.75, -0.5, 0.25, 0.0, 0.25, -1.0, 0.5, -0.75, 0.5, -0.5, -0.5, -1.0, 0.0, -0.5, -0.5, 0.25, -0.75, 1.0, -1.0, -0.5, 0.75, -0.5, 0.25, -0.25, -0.25, 0.25, -0.25, -0.5, 0.5, 1.0, 1.0, 1.0, 0.5, -1.0, 1.0, -0.75, 0.75, 0.0, 0.0, 0.25, 0.5, 0.5, -0.5, 0.25, 0.75, 0.0, 0.0, 0.75, -0.5, -0.75, 0.25, 0.25, 0.5, 0.75, 1.0, -0.75, 0.5, -0.25, 0.25, -0.75, 0.25, -0.5, 0.0, -0.75, 0.75, 0.75, -0.25, 0.75, ]);
    const array4 = new Float32Array([0.5, -0.25, -0.5, 0.0, 0.75, 1.0, -0.75, -0.25, 0.5, 0.0, 0.75, -1.0, 0.5, -1.0, -0.5, 0.75, 0.25, -0.75, 0.0, 0.75, -0.75, 0.0, -0.5, 0.0, 0.25, -0.25, 1.0, 0.75, 0.5, 0.25, -0.5, -0.75, -1.0, 0.5, 0.25, -0.75, 0.5, 0.0, -1.0, -0.25, 0.0, -0.5, 0.75, 0.25, 0.25, -0.5, -0.75, -1.0, 0.75, 0.25, 0.5, -0.75, 0.25, 0.5, -0.5, 0.75, -0.75, 1.0, -0.75, 0.75, -0.25, 1.0, -1.0, -0.5, -0.5, -0.25, 1.0, -1.0, -1.0, -0.5, 0.25, -0.75, 0.25, -0.25, -0.25, -0.75, 0.5, 1.0, 1.0, -0.25, 0.75, -0.75, -0.5, -0.25, -0.25, 0.0, 1.0, 0.25, 0.25, -0.75, 0.0, 0.5, 0.5, -0.5, 0.25, -1.0, 0.5, 0.0, 1.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const command_buffer101 = command_encoder101.finish();
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
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setStencilReference(1);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    texture100.destroy();
    render_pass_encoder1000.setStencilReference(1);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.destroy();
    render_pass_encoder1000.popDebugGroup();
    device10.destroy();
    
    const array5 = new Float32Array([0.75, 1.0, -0.75, 0.5, -0.25, 0.0, 1.0, 0.75, -0.25, 0.5, 0.5, 0.0, -0.25, -0.75, -0.75, -0.25, -0.75, 0.25, 1.0, -0.25, 0.5, -0.25, -1.0, -0.75, 1.0, -0.5, 0.25, -1.0, 1.0, -1.0, 0.5, -1.0, 0.0, -0.25, 0.75, -0.75, 0.75, -0.5, -0.25, 0.5, -0.25, 0.75, 0.25, -0.25, -0.5, -0.5, 0.75, 0.75, -0.75, -1.0, 0.25, -0.75, 0.75, -1.0, 1.0, -1.0, -1.0, -0.5, 0.75, 0.5, 0.75, -0.25, -0.5, -1.0, 0.75, 0.0, 0.75, -0.75, -0.25, 0.25, -0.25, -0.5, 0.75, -0.5, 0.0, -0.75, -0.25, -0.75, 0.75, 1.0, 1.0, -0.5, 1.0, 0.5, -0.25, 0.5, 0.0, -0.5, -0.75, 0.5, 1.0, 0.5, -1.0, -1.0, 0.25, -0.75, -0.75, 0.5, -0.25, -1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
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
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.clearBuffer(buffer200);
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const array6 = new Float32Array([-0.5, 0.0, -0.25, -1.0, 0.0, -1.0, -0.5, 0.25, -0.25, -0.75, 0.0, 1.0, 0.5, 0.0, 0.5, -0.25, -1.0, 0.0, -0.75, 0.75, 0.0, 0.5, 1.0, 0.25, 0.75, 0.0, -0.25, 0.0, 0.0, -0.75, -0.5, 1.0, 0.5, -1.0, -1.0, 0.5, -0.25, 1.0, 0.75, -0.5, -1.0, -0.5, 1.0, 0.5, 0.0, 0.75, 1.0, -1.0, 0.0, 0.25, -0.25, 0.75, 0.25, -1.0, 0.25, 1.0, 0.5, 0.25, 1.0, 0.0, 0.5, 1.0, 0.25, -0.75, 1.0, 1.0, 0.0, -0.5, 0.25, 0.5, -0.75, 0.0, -0.5, 0.75, -1.0, -0.5, -1.0, -0.5, -1.0, 0.75, -0.75, -0.25, 0.25, 0.5, 0.5, 0.75, -0.5, 1.0, 1.0, 0.75, -1.0, 0.0, 0.25, 1.0, -1.0, -0.25, -1.0, 0.25, 0.25, 0.75, ]);
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device20.queue.submit([]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array7 = new Float32Array([-0.25, 0.5, -1.0, 0.5, -0.25, -0.5, -0.75, 0.75, 0.5, -1.0, -0.25, -0.5, 0.25, -0.75, 0.5, 0.0, -0.5, -0.25, -1.0, 1.0, -0.25, 0.0, 1.0, 0.25, 0.25, 0.75, 0.5, -0.25, -0.25, -0.75, -1.0, -0.75, 0.75, -1.0, -0.75, 0.75, 0.0, 0.0, -0.75, 0.0, -1.0, 0.5, 0.5, -1.0, 1.0, 0.0, -0.25, 1.0, 0.75, 1.0, -0.25, -0.75, -0.5, 0.0, -1.0, 0.0, 0.0, 1.0, 0.5, 0.25, 0.0, 0.0, 1.0, -1.0, 0.25, 0.0, -0.25, 0.0, 0.75, -0.75, 0.25, -1.0, 1.0, -0.75, -0.25, -0.75, 0.75, -0.5, -0.5, -0.5, -0.5, 0.0, 0.5, 0.5, -0.5, 0.0, -0.75, 0.75, -0.5, 0.0, 0.75, 0.0, -0.5, -0.75, -0.25, -0.25, 0.5, 0.75, -0.25, -0.75, ]);
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    
    buffer200.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer202.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_buffer200 = command_encoder200.finish();
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer205.destroy()
    
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
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
    device00.destroy();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    buffer201.destroy()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    
    buffer206.destroy()
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer208, 0);
    compute_pass_encoder2020.end();
    compute_pass_encoder2000.popDebugGroup()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    device30.destroy();
    
    
    buffer201.destroy()
    const array8 = new Float32Array([-1.0, 0.25, 1.0, 0.25, 0.5, -0.75, 1.0, 0.75, 1.0, 1.0, 0.5, 0.0, 0.5, 0.0, -0.75, 1.0, 0.75, 0.75, -1.0, 0.5, 0.0, 0.0, 0.75, -1.0, -1.0, 0.5, 0.75, 1.0, -0.5, -0.75, -1.0, 0.75, 0.75, 0.0, 1.0, -0.25, 0.25, -0.75, 0.25, 0.25, -0.25, -1.0, -1.0, 0.5, -0.75, 0.5, 0.0, -1.0, 1.0, 1.0, 1.0, 0.5, 0.0, 0.25, 0.5, -1.0, 0.75, -1.0, -0.5, -0.25, 0.0, 0.75, -0.5, 0.5, -0.5, 1.0, 0.0, 0.25, -0.75, -0.25, -0.5, 0.75, 0.5, 0.0, -0.25, 0.75, -0.75, -0.5, -0.25, -0.25, -1.0, 0.75, -1.0, -0.25, 0.0, 0.5, -0.5, 0.25, -0.75, 0.0, 0.5, 1.0, 0.0, 0.0, 0.75, -0.25, 0.75, 0.75, 1.0, -1.0, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer206,
        0
    )
    render_bundle_encoder202.setPipeline(render_pipeline202);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder202.copyBufferToBuffer(
        buffer204,
        0,
        buffer203,
        0,
        400
    );
    const array9 = new Float32Array([-0.5, -0.5, 0.25, 0.5, 0.0, 1.0, -1.0, 0.75, 1.0, -0.5, 0.5, -0.5, -1.0, 0.25, -0.75, 0.0, -0.75, -0.75, -0.25, -0.25, 1.0, 0.25, 0.25, -0.25, -1.0, -0.25, 1.0, 0.5, -0.75, -0.5, -0.75, -0.25, 0.5, -0.25, 0.5, 0.5, 0.5, 0.75, -0.75, -1.0, 0.25, -0.75, -0.5, 0.75, 0.25, 0.75, 1.0, 0.25, -0.25, -0.25, -1.0, -0.25, 1.0, -0.75, -0.75, -1.0, 0.25, 0.5, 0.5, 0.25, 0.5, 0.75, -0.25, 0.25, -0.25, 0.25, -0.5, 0.75, 0.5, 0.5, -0.25, 0.0, 0.25, -0.5, 0.25, 0.5, 1.0, -0.5, 0.75, -0.75, 0.75, -0.5, -0.75, 0.5, 1.0, -0.25, 0.5, -1.0, 0.0, -0.5, -0.75, -1.0, -0.5, 0.0, 0.5, -1.0, 0.25, -0.25, 0.75, -0.25, ]);
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
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    command_encoder202.clearBuffer(buffer208);
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    device20.queue.submit([command_buffer200, ]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.queue.writeBuffer(buffer208, 0, array6, 0, array6.length);
    buffer204.destroy()
    
    buffer207.destroy()
    query201.destroy()
    device20.queue.writeBuffer(buffer208, 0, array3, 0, array3.length);
    
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    const compute_pass_encoder2021 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2021" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer2010, 0, array0, 0, array0.length);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    buffer208.destroy()
    render_bundle_encoder201.setVertexBuffer(0, buffer201);
    
    command_encoder204.clearBuffer(buffer206);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    
    compute_pass_encoder2021.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    compute_pass_encoder2030.popDebugGroup()
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    device20.pushErrorScope("validation");
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    query202.destroy()
    command_encoder204.copyBufferToBuffer(
        buffer200,
        0,
        buffer202,
        0,
        400
    );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    command_encoder204.copyBufferToTexture(
        {
            buffer: buffer203
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
    render_pass_encoder2050.setPipeline(render_pipeline204);
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
        occlusionQuerySet: query201
    });
    const array10 = new Float32Array([0.25, -1.0, 0.5, 1.0, 0.0, -0.25, -1.0, 0.5, 0.75, 0.25, 1.0, 0.25, -0.5, 0.25, 0.75, -0.5, 1.0, -1.0, 1.0, 0.75, 0.75, -0.75, 0.0, 0.25, -0.75, -0.75, 1.0, -0.25, 0.25, 0.5, 0.0, 1.0, -1.0, -0.75, 0.75, 1.0, -0.25, -0.75, -0.5, 1.0, 0.75, -0.75, 1.0, 0.0, 0.0, 0.5, 0.25, -1.0, -0.25, 0.0, -0.25, 1.0, -0.75, -0.75, -0.75, 0.25, -0.25, 0.0, 0.5, 0.75, -1.0, 0.75, 0.0, 1.0, 0.25, -1.0, -0.75, 0.75, 0.25, 1.0, 0.5, 1.0, 0.25, 1.0, 0.25, -0.25, -0.75, -0.5, -0.25, -0.5, 0.0, -1.0, 0.0, 1.0, 0.75, 0.75, 1.0, 0.0, 0.5, -1.0, -1.0, -0.25, 0.25, 0.25, 0.25, 1.0, -1.0, 0.75, -0.25, 0.75, ]);
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder202.clearBuffer(buffer201);
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const command_buffer206 = command_encoder206.finish();
    
    device20.queue.submit([command_buffer206, ]);
    compute_pass_encoder2030.insertDebugMarker("marker")
    buffer209.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer2010.destroy()
    render_pass_encoder2040.insertDebugMarker("marker");
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.setPipeline(compute_pipeline203);
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2050.setStencilReference(1);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const array11 = new Float32Array([0.5, 0.75, 0.0, 0.75, 1.0, -0.75, -0.5, -0.25, 0.25, 1.0, 0.75, -1.0, -0.25, 0.25, -0.25, 1.0, 0.75, -0.75, 1.0, -0.25, -0.75, 1.0, 0.25, -0.5, 0.5, -0.25, -0.25, -0.75, 1.0, 0.25, -0.5, 1.0, -0.75, 0.0, 0.75, 0.75, -0.25, 0.75, -1.0, -0.25, 0.5, -0.25, -0.5, 0.0, -1.0, 0.75, -1.0, 0.25, 0.0, -0.5, 0.0, 1.0, 0.5, 0.75, -0.5, 1.0, -0.75, -1.0, 1.0, 1.0, -0.25, 0.75, 0.5, 1.0, 0.75, 0.25, -0.5, -0.25, 0.5, -1.0, -0.75, -0.5, -0.75, 0.75, -0.75, 0.0, -1.0, -1.0, 0.75, -0.5, 1.0, 0.25, -1.0, -0.25, 1.0, -1.0, 0.25, 0.75, -0.5, -0.5, 0.75, -0.25, -0.25, 0.75, -0.25, -1.0, -0.25, 0.0, 0.0, -0.75, ]);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder203.popDebugGroup();
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_bundle_encoder203.insertDebugMarker("marker");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2070.setStencilReference(1);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2070.setPipeline(render_pipeline203);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
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
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group203);
    compute_pass_encoder2021.setPipeline(compute_pipeline206);
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder203.setPipeline(render_pipeline201);
    compute_pass_encoder2030.popDebugGroup()
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2041.setPipeline(render_pipeline200);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    texture201.destroy();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    render_pass_encoder2020.executeBundles([])
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2050.pushDebugGroup("group_marker");
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2041.setStencilReference(1);
    texture202.destroy();
    
    
    compute_pass_encoder2021.insertDebugMarker("marker")
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2010.setPipeline(render_pipeline201);
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2050.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder2070.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer2014.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2041.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const compute_pass_encoder2070 = command_encoder207.beginComputePass({ label: "compute_pass_encoder2070" });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder202.setVertexBuffer(0, buffer2010);
    render_bundle_encoder202.setIndexBuffer(buffer204, "uint16");
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
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
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_bundle_encoder203.setBindGroup(0, bind_group205);
    
    device20.queue.writeBuffer(buffer2011, 0, array8, 0, array8.length);
    buffer2017.destroy()
    render_bundle_encoder201.draw(3);
    render_pass_encoder2050.setStencilReference(1);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.drawIndirect(buffer208, 0);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout209,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    compute_pass_encoder2030.popDebugGroup()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2021.pushDebugGroup("group_marker")
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    compute_pass_encoder2070.setPipeline(compute_pipeline2011);
    render_pass_encoder2040.setPipeline(render_pipeline204);
    render_pass_encoder2050.setStencilReference(1);
    render_bundle_encoder203.setVertexBuffer(0, buffer2015);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    {
        await buffer2011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2011.unmap();
        console.log(new Float32Array(data));
    }
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
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline2011.getBindGroupLayout(0),
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

    compute_pass_encoder2070.setBindGroup(0, bind_group206);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2021.setPipeline(render_pipeline200);
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
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
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer207,
        0
    )
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2030.setStencilReference(1);
    
    render_pass_encoder2031.setPipeline(render_pipeline205);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    
    render_bundle_encoder203.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    buffer203.destroy()
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2020.setPipeline(render_pipeline203);
    const array12 = new Float32Array([-1.0, -1.0, -0.5, 1.0, -1.0, -0.75, 1.0, -0.5, 0.25, 0.0, -0.25, -0.5, 0.25, -0.5, -0.25, -1.0, -0.25, -0.25, 0.5, -0.5, 1.0, 1.0, 0.75, -1.0, 0.75, 1.0, -0.75, 1.0, -0.5, -1.0, 1.0, -0.5, 0.5, -1.0, 0.75, 0.25, 0.25, 0.25, -0.75, -0.75, -0.25, -0.25, 0.25, 0.75, 0.75, 0.25, -0.5, 0.5, -1.0, 1.0, 0.25, 0.25, -1.0, -0.5, -0.5, 0.25, 1.0, 0.25, 0.0, -0.25, 1.0, -1.0, -0.75, 0.25, 0.75, -0.75, 0.0, 0.25, -0.25, -0.75, -0.25, 0.75, -0.5, -0.25, 0.5, 0.5, 0.0, -0.25, 0.25, -0.25, -0.25, 0.25, 1.0, 1.0, 0.25, 0.25, -0.75, -0.25, 1.0, 0.75, -0.75, -1.0, 0.75, 1.0, 0.25, 0.75, 0.5, 0.5, -1.0, -0.75, ]);
    command_encoder102.pushDebugGroup("mygroupmarker")
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
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group207);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer2018, 0, array8, 0, array8.length);
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder2070.setStencilReference(1);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group208);
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    render_bundle_encoder203.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder203.setIndexBuffer(buffer2011, "uint16");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2070.pushDebugGroup("group_marker");
    render_pass_encoder2011.setStencilReference(1);
    const render_pass_encoder2080 = command_encoder208.beginRenderPass({
        label: "render_pass_encoder2080",
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
    render_pass_encoder2080.setPipeline(render_pipeline205);
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
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group209);
    buffer2016.destroy()
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.beginOcclusionQuery(0)
    
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder203.drawIndexed(3);
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
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
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group2010);
    device20.queue.writeBuffer(buffer2012, 0, array0, 0, array0.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.copyBufferToBuffer(
        buffer2026,
        0,
        buffer2014,
        0,
        400
    );
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2021.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    
    render_pass_encoder2080.popDebugGroup();
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder2011.setPipeline(render_pipeline201);
    render_bundle_encoder200.popDebugGroup();
    buffer2011.destroy()
    render_pass_encoder2080.pushDebugGroup("group_marker");
    render_pass_encoder2041.pushDebugGroup("group_marker");
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer2026,
        0
    )
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
    
    
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder2080.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2041.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2040.setVertexBuffer(0, buffer2025);
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer2025.destroy()
    
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2080.popDebugGroup();
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2070.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2011);
    device20.queue.writeBuffer(buffer2018, 0, array1, 0, array1.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2030.setPipeline(render_pipeline202);
    render_pass_encoder2010.setVertexBuffer(0, buffer2020);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2023, 0);
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
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group2012);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2032, 0);
    render_pass_encoder2050.setVertexBuffer(0, buffer2021);
    render_pass_encoder2050.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2050.drawIndirect(buffer205, 0);
    compute_pass_encoder2010.end();
    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2034,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group2013);
    device10.queue.submit([command_buffer101, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_2070 = new Uint32Array(3);

    uint32_2070[0] = 100;
    uint32_2070[1] = 1;
    uint32_2070[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2070, 0, uint32_2070.length);

    compute_pass_encoder2070.dispatchWorkgroupsIndirect(buffer2035, 0);
    render_pass_encoder2020.endOcclusionQuery()
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
    
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_pass_encoder2080.setBindGroup(0, bind_group2014);
    render_pass_encoder2011.setVertexBuffer(0, buffer2011);
    render_pass_encoder2050.drawIndirect(buffer205, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2011.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.setVertexBuffer(0, buffer2013);
    render_pass_encoder2050.drawIndirect(buffer2032, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2038, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2038, 0);
    render_pass_encoder2050.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2031.setIndexBuffer(buffer2022, "uint16");
    device40.queue.submit([]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2030.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2039, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2026, 0);
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
    
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2070.setBindGroup(0, bind_group2015);
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
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2016);
    render_pass_encoder2021.setVertexBuffer(0, buffer2011);
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer205, 0);
    render_pass_encoder2021.end();
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
    
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group2017);
    render_pass_encoder2030.setVertexBuffer(0, buffer2014);
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group2018);
    render_pass_encoder2070.setVertexBuffer(0, buffer200);
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    render_pass_encoder2070.drawIndirect(buffer2035, 0);
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2019);
    render_pass_encoder2050.drawIndirect(buffer208, 0);
    render_pass_encoder2080.setVertexBuffer(0, buffer2011);
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2080.drawIndirect(buffer2035, 0);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2032, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    render_pass_encoder2011.drawIndirect(buffer2032, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    render_pass_encoder2080.end();
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group2020);
    render_pass_encoder2080.drawIndirect(buffer208, 0);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer2024, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2041.setVertexBuffer(0, buffer2051);
    compute_pass_encoder2000.end();
    render_pass_encoder2041.drawIndirect(buffer2038, 0);
    render_pass_encoder2080.end();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2080.setIndexBuffer(buffer2048, "uint16");
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2080.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.end();
    compute_pass_encoder2070.end();
    compute_pass_encoder2070.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2011.end();
    render_pass_encoder2031.drawIndirect(buffer2035, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2070.draw(3);
    const command_buffer208 = command_encoder208.finish();
    render_pass_encoder2020.end();
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline2011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2070.setBindGroup(0, bind_group2021);
    render_pass_encoder2080.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2011.drawIndirect(buffer2048, 0);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder2080.drawIndirect(buffer208, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2010.drawIndirect(buffer2032, 0);
    render_pass_encoder2011.drawIndirect(buffer2016, 0);
    compute_pass_encoder2021.end();
    render_pass_encoder2080.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer204, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2080.drawIndirect(buffer2019, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2021.end();
    render_pass_encoder2011.popDebugGroup();
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2080.end();
    render_pass_encoder2021.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
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
        layout: compute_pipeline206.getBindGroupLayout(0),
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

    compute_pass_encoder2021.setBindGroup(0, bind_group2022);
    render_pass_encoder2010.drawIndirect(buffer2054, 0);
    render_pass_encoder2050.drawIndirect(buffer2054, 0);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2080.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2024, "uint16");
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2031.end();
    device20.queue.submit([command_buffer202, command_buffer208, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
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
        layout: compute_pipeline206.getBindGroupLayout(0),
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

    compute_pass_encoder2021.setBindGroup(0, bind_group2023);
    render_pass_encoder2030.end();
    device40.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer2038, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2059, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2059, 0);
    render_pass_encoder2070.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    command_encoder203.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2054, 0);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2080.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2040.drawIndirect(buffer2032, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2040.drawIndirect(buffer2054, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2060, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    const command_buffer207 = command_encoder207.finish();
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2050.drawIndirect(buffer2054, 0);
    compute_pass_encoder2070.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer202, 0);
    render_pass_encoder2080.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
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
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2024);
    render_pass_encoder2021.draw(3);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2063, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2063, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2060, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2070.drawIndirect(buffer2063, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2063, "uint16");
    compute_pass_encoder2021.end();
    render_pass_encoder2041.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    render_pass_encoder2041.end();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2011.drawIndirect(buffer2046, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2051, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2030.end();
    render_pass_encoder2011.end();
    render_pass_encoder2021.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2052, 0);
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2064, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2064, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2080.drawIndirect(buffer2064, 0);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2080.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2059, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder2021.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2080.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2070.drawIndirect(buffer2019, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2030.drawIndirect(buffer2060, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2059, 0);
    compute_pass_encoder2010.popDebugGroup()
    const uint32_2070 = new Uint32Array(3);

    uint32_2070[0] = 100;
    uint32_2070[1] = 1;
    uint32_2070[2] = 1;

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2065, 0, uint32_2070, 0, uint32_2070.length);

    compute_pass_encoder2070.dispatchWorkgroupsIndirect(buffer2065, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2070.draw(3);
    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline2011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2067,
                },
            },
        ],
    });

    compute_pass_encoder2070.setBindGroup(0, bind_group2025);
    render_pass_encoder2011.drawIndirect(buffer2025, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2080.drawIndirect(buffer2056, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2011.drawIndirect(buffer2050, 0);
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2068, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer2068, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2060, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2069, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2069, 0);
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2080.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2054, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2011.drawIndirect(buffer2069, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2070.drawIndirect(buffer2063, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2039, 0);
    render_pass_encoder2010.drawIndirect(buffer2065, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2080.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder2021.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2080.drawIndirect(buffer2063, 0);
    render_pass_encoder2011.drawIndirect(buffer208, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer200, ]);
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2026);
    render_pass_encoder2031.drawIndirect(buffer2064, 0);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2041.end();
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    device20.queue.submit([command_buffer206, command_buffer208, ]);
    render_pass_encoder2040.drawIndirect(buffer2054, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2035, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2080.drawIndexedIndirect(buffer2068, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2072, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2072, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2013, 0);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2080.drawIndirect(buffer205, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2080.drawIndirect(buffer207, 0);
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    command_encoder102.popDebugGroup()
    render_pass_encoder2080.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2021.drawIndirect(buffer2063, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2073, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2073, 0);
    render_pass_encoder2050.drawIndirect(buffer2064, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2074, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2074, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2068, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2080.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2080.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2035, 0);
    render_pass_encoder2080.setIndexBuffer(buffer2056, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2063, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2073, "uint16");
    device20.queue.submit([command_buffer206, ]);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2070.drawIndirect(buffer208, 0);
    render_pass_encoder2050.drawIndirect(buffer2073, 0);
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
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline206.getBindGroupLayout(0),
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

    compute_pass_encoder2021.setBindGroup(0, bind_group2027);
    render_pass_encoder2050.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2080.end();
    compute_pass_encoder2021.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2059, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2031.drawIndirect(buffer2060, 0);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2011.drawIndirect(buffer2063, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2021.drawIndirect(buffer2040, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2041.end();
    device20.queue.submit([command_buffer202, command_buffer207, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2080.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2080.drawIndirect(buffer2065, 0);
    render_pass_encoder2040.drawIndirect(buffer2059, 0);
    render_pass_encoder2031.drawIndirect(buffer2054, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2030.drawIndirect(buffer2074, 0);
    render_pass_encoder2040.drawIndirect(buffer2038, 0);
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    render_pass_encoder2050.drawIndirect(buffer2060, 0);
    compute_pass_encoder2070.end();
    render_pass_encoder2041.setIndexBuffer(buffer2070, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer2026, "uint16");
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
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2028);
    render_pass_encoder2080.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2063, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2079, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2079, 0);
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
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2029);
    device40.queue.submit([]);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2031.setIndexBuffer(buffer2073, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2070, 0);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2020.end();
    render_pass_encoder2080.drawIndexedIndirect(buffer2059, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2082, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2082, 0);
    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2084,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2030);
    render_pass_encoder2050.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2040.drawIndirect(buffer2060, 0);
    render_pass_encoder2050.drawIndirect(buffer208, 0);
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    render_pass_encoder2080.drawIndirect(buffer2018, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2037, 0);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2070.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    render_pass_encoder2070.drawIndirect(buffer2039, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2069, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2035, 0);
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2073, 0);
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2031);
    render_pass_encoder2021.drawIndirect(buffer2074, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2073, 0);
    render_pass_encoder2080.drawIndirect(buffer2072, 0);
    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2088,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2032);
    render_pass_encoder2031.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2041.drawIndirect(buffer2060, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2054, 0);
    device20.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2011.drawIndirect(buffer2053, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2046, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2030.end();
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2090,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2033);
    render_pass_encoder2030.setIndexBuffer(buffer2079, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2031.drawIndirect(buffer2049, 0);
    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2092,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2034);
    render_pass_encoder2021.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer208, ]);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder2030.drawIndirect(buffer2072, 0);
    render_pass_encoder2080.drawIndirect(buffer2078, 0);
    render_pass_encoder2050.drawIndirect(buffer2029, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder2070.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2067, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer203, command_buffer207, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2073, 0);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer2054, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2067, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2090, "uint16");
    render_pass_encoder2020.end();
    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
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
                    buffer: buffer2093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2094,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2035);
    render_pass_encoder2030.drawIndirect(buffer2083, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2077, 0);
    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
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
                    buffer: buffer2095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2096,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2036);
    device20.queue.submit([]);
    render_pass_encoder2080.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2010.drawIndirect(buffer2074, 0);
    render_pass_encoder2070.drawIndirect(buffer2073, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2088, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder2050.drawIndirect(buffer2073, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2050.drawIndirect(buffer2072, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2050.drawIndirect(buffer2054, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    render_pass_encoder2031.drawIndirect(buffer2059, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2050.drawIndirect(buffer2060, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2021.drawIndirect(buffer2072, 0);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2070.end();
    render_pass_encoder2041.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2072, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2098,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2037);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2050.end();
    render_pass_encoder2030.drawIndirect(buffer2097, 0);
    render_pass_encoder2050.drawIndirect(buffer2090, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2041.drawIndirect(buffer2086, 0);
    render_pass_encoder2040.drawIndirect(buffer2096, 0);
    compute_pass_encoder2070.dispatchWorkgroups(100);
    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20100,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2038);
    render_pass_encoder2020.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2021.drawIndirect(buffer2032, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20101, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20101, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2040.drawIndirect(buffer2054, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2070.drawIndirect(buffer2032, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2070.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2080.drawIndirect(buffer2073, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2064, 0);
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
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2039);
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2080.end();
    render_pass_encoder2010.drawIndirect(buffer2060, 0);
    render_pass_encoder2010.drawIndirect(buffer2083, 0);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2070.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2050.drawIndirect(buffer2065, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2039, 0);
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
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2040);
    render_pass_encoder2070.drawIndirect(buffer2082, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2047, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2080.setIndexBuffer(buffer2097, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2039, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2021.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2071, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndirect(buffer2054, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2011.drawIndirect(buffer2069, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2058, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20106, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20106, 0);
    render_pass_encoder2050.drawIndirect(buffer2054, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2074, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2011.drawIndirect(buffer2064, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2099, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2031.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20108 = device20.createBuffer({
        label: "buffer20108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20108,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2041);
    render_pass_encoder2040.drawIndirect(buffer20106, 0);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder2031.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20109 = device20.createBuffer({
        label: "buffer20109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20109, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20109, 0);
    compute_pass_encoder2070.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2050.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2011.drawIndirect(buffer2059, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2045, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2011.setIndexBuffer(buffer2029, "uint16");
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
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline206.getBindGroupLayout(0),
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

    compute_pass_encoder2021.setBindGroup(0, bind_group2042);
    compute_pass_encoder2070.end();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2050.drawIndirect(buffer205, 0);
    compute_pass_encoder2070.dispatchWorkgroups(100);
    render_pass_encoder2080.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer20104, 0);
    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20113,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2043);
    render_pass_encoder2070.drawIndirect(buffer205, 0);
    render_pass_encoder2070.endOcclusionQuery()
    compute_pass_encoder2020.end();
    render_pass_encoder2070.drawIndirect(buffer2035, 0);
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
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2044);
    render_pass_encoder2041.drawIndirect(buffer2064, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2050.drawIndirect(buffer2019, 0);
    render_pass_encoder2011.setIndexBuffer(buffer20100, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2074, 0);
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer207, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20116, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20116, 0);
    render_pass_encoder2031.drawIndirect(buffer2039, 0);
    render_pass_encoder2050.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2068, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2020, "uint16");
    device20.queue.submit([command_buffer200, command_buffer207, command_buffer208, ]);
    device20.queue.submit([command_buffer202, command_buffer206, command_buffer208, ]);
    render_pass_encoder2050.drawIndirect(buffer2089, 0);
    render_pass_encoder2050.drawIndirect(buffer208, 0);
    render_pass_encoder2070.drawIndirect(buffer2069, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2073, 0);
    render_pass_encoder2031.end();
    device20.queue.submit([command_buffer202, command_buffer206, ]);
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20117, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer20117, 0);
    render_pass_encoder2070.drawIndirect(buffer2065, 0);
    render_pass_encoder2041.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2050.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndirect(buffer20109, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2051, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2040.drawIndirect(buffer20101, 0);
    render_pass_encoder2041.popDebugGroup();
    compute_pass_encoder2021.end();
    render_pass_encoder2010.drawIndirect(buffer20106, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2050.setIndexBuffer(buffer20116, "uint16");
    render_pass_encoder2010.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer20116, 0);
    render_pass_encoder2040.drawIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2050.drawIndirect(buffer2081, 0);
    render_pass_encoder2040.drawIndirect(buffer20109, 0);
    render_pass_encoder2011.drawIndirect(buffer20116, 0);
    render_pass_encoder2020.drawIndirect(buffer20106, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder2010.drawIndirect(buffer2072, 0);
    render_pass_encoder2030.drawIndirect(buffer207, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2031.drawIndirect(buffer2072, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2065, 0);
    render_pass_encoder2050.drawIndirect(buffer205, 0);
    render_pass_encoder2041.end();
    compute_pass_encoder2070.end();
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2027, "uint16");
    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2045 = device20.createBindGroup({
        label: "bind_group2045",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20119,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2045);
    render_pass_encoder2050.end();
    render_pass_encoder2021.drawIndirect(buffer2032, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2041.drawIndirect(buffer2060, 0);
    render_pass_encoder2080.drawIndirect(buffer2089, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2080.drawIndexedIndirect(buffer2020, 0);
    device20.queue.submit([command_buffer203, command_buffer206, command_buffer208, ]);
    render_pass_encoder2080.setIndexBuffer(buffer2028, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2041.drawIndirect(buffer2029, 0);
    compute_pass_encoder2070.end();
    render_pass_encoder2050.drawIndirect(buffer2063, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.end();
    render_pass_encoder2080.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20110, 0);
    render_pass_encoder2050.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20120, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20120, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer20117, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20121, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20121, 0);
    render_pass_encoder2070.drawIndirect(buffer2093, 0);
    render_pass_encoder2041.drawIndirect(buffer2026, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2082, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2038, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2032, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2080.popDebugGroup();
    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2046 = device20.createBindGroup({
        label: "bind_group2046",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20123,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2046);
    render_pass_encoder2021.drawIndirect(buffer2052, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2020.drawIndirect(buffer2057, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20109, 0);
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2047 = device20.createBindGroup({
        label: "bind_group2047",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20125,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2047);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2070.drawIndexedIndirect(buffer2063, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2058, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2020.drawIndirect(buffer2058, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2080.drawIndexedIndirect(buffer20109, 0);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2040.drawIndirect(buffer20120, 0);
    render_pass_encoder2070.drawIndirect(buffer20116, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2080.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2040.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2080.drawIndirect(buffer205, 0);
    render_pass_encoder2011.drawIndirect(buffer20109, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2072, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2010.drawIndirect(buffer2064, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, command_buffer206, command_buffer207, ]);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder2041.drawIndirect(buffer2029, 0);
    render_pass_encoder2030.drawIndirect(buffer2065, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2074, 0);
    device20.queue.submit([command_buffer206, command_buffer208, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2070.popDebugGroup();
    compute_pass_encoder2030.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2062, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2044, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20126, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20126, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2065, 0);
    device40.queue.submit([]);
    render_pass_encoder2020.setIndexBuffer(buffer2099, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2061, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer20103, "uint16");
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2039, 0);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    const buffer20127 = device20.createBuffer({
        label: "buffer20127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20128 = device20.createBuffer({
        label: "buffer20128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2048 = device20.createBindGroup({
        label: "bind_group2048",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20128,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2048);
    render_pass_encoder2080.drawIndirect(buffer2079, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20109, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20104, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndirect(buffer2037, 0);
    render_pass_encoder2070.popDebugGroup();
    compute_pass_encoder2070.dispatchWorkgroups(100);
    render_pass_encoder2080.drawIndirect(buffer20121, 0);
    render_pass_encoder2070.drawIndirect(buffer2064, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer20116, 0);
    compute_pass_encoder2070.popDebugGroup()
    render_pass_encoder2080.end();
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2040.drawIndirect(buffer20119, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer2065, 0);
    render_pass_encoder2050.setIndexBuffer(buffer20108, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2042, 0);
    render_pass_encoder2050.setIndexBuffer(buffer20124, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer20117, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer20109, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2080.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2070.drawIndirect(buffer2080, 0);
    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2049 = device20.createBindGroup({
        label: "bind_group2049",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20130,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2049);
    const buffer20131 = device20.createBuffer({
        label: "buffer20131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20132 = device20.createBuffer({
        label: "buffer20132",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2050 = device20.createBindGroup({
        label: "bind_group2050",
        layout: compute_pipeline2011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20132,
                },
            },
        ],
    });

    compute_pass_encoder2070.setBindGroup(0, bind_group2050);
    compute_pass_encoder2020.end();
    render_pass_encoder2031.drawIndirect(buffer20120, 0);
    render_pass_encoder2070.drawIndirect(buffer2062, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer20126, 0);
    render_pass_encoder2030.drawIndirect(buffer20121, 0);
    render_pass_encoder2040.drawIndirect(buffer20128, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2010.drawIndirect(buffer20109, 0);
    render_pass_encoder2021.drawIndirect(buffer2082, 0);
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer20133 = device20.createBuffer({
        label: "buffer20133",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20133, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer20133, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2041.drawIndirect(buffer20121, 0);
    render_pass_encoder2070.drawIndirect(buffer2035, 0);
    render_pass_encoder2070.drawIndirect(buffer2064, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2059, 0);
    const buffer20134 = device20.createBuffer({
        label: "buffer20134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20135 = device20.createBuffer({
        label: "buffer20135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2051 = device20.createBindGroup({
        label: "bind_group2051",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20135,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2051);
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2011.drawIndirect(buffer20109, 0);
    render_pass_encoder2080.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2076, 0);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2011.drawIndexedIndirect(buffer20126, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2081, "uint16");
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2080.drawIndirect(buffer20129, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2032, 0);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2052);
    render_pass_encoder2070.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2070.drawIndirect(buffer2042, 0);
    compute_pass_encoder2070.popDebugGroup()
    compute_pass_encoder2010.end();
    render_pass_encoder2041.drawIndirect(buffer2039, 0);
    render_pass_encoder2021.drawIndirect(buffer20117, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2097, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2063, 0);
    compute_pass_encoder2070.dispatchWorkgroups(100);
    render_pass_encoder2041.drawIndirect(buffer2038, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2050.drawIndirect(buffer20109, 0);
    render_pass_encoder2080.drawIndirect(buffer20106, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2063, 0);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    render_pass_encoder2040.drawIndirect(buffer2072, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20119, 0);
    device40.queue.submit([]);
    render_pass_encoder2031.drawIndexedIndirect(buffer20126, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2050.drawIndirect(buffer2059, 0);
    render_pass_encoder2010.drawIndirect(buffer20101, 0);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2070.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2080.drawIndirect(buffer20123, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer20100, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2063, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2030.drawIndirect(buffer20127, 0);
    const buffer20138 = device20.createBuffer({
        label: "buffer20138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20139 = device20.createBuffer({
        label: "buffer20139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2053 = device20.createBindGroup({
        label: "bind_group2053",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20139,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2053);
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2079, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer20133, 0);
    render_pass_encoder2080.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2030.drawIndirect(buffer2035, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer20133, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer20116, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2045, "uint16");
    compute_pass_encoder2030.end();
    render_pass_encoder2041.drawIndirect(buffer2082, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2080.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2064, 0);
    device20.queue.submit([command_buffer208, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2041.drawIndirect(buffer2064, 0);
    render_pass_encoder2041.drawIndirect(buffer20124, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2070.setIndexBuffer(buffer2058, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20117, 0);
    render_pass_encoder2050.drawIndirect(buffer2073, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20140 = device20.createBuffer({
        label: "buffer20140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20140, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20140, 0);
    render_pass_encoder2080.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer20105, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2035, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2070.end();
    render_pass_encoder2030.drawIndirect(buffer20133, 0);
    render_pass_encoder2080.setIndexBuffer(buffer2072, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer20119, "uint16");
    render_pass_encoder2070.drawIndirect(buffer20120, 0);
    render_pass_encoder2041.drawIndirect(buffer2035, 0);
    render_pass_encoder2030.drawIndirect(buffer2082, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2070.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2080.drawIndirect(buffer20116, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2024, "uint16");
    compute_pass_encoder2070.dispatchWorkgroups(100);
    render_pass_encoder2011.end();
    render_pass_encoder2020.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2069, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2070.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2080.drawIndirect(buffer20133, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2065, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer20141 = device20.createBuffer({
        label: "buffer20141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20141, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer20141, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20140, 0);
    render_pass_encoder2050.drawIndirect(buffer2082, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer20121, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndirect(buffer2092, 0);
    device20.queue.submit([command_buffer203, command_buffer206, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer20126, 0);
    render_pass_encoder2070.drawIndirect(buffer200, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2080.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2091, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2080.drawIndirect(buffer2035, 0);
    render_pass_encoder2070.drawIndirect(buffer2031, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2010.setIndexBuffer(buffer2088, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer20126, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20142 = device20.createBuffer({
        label: "buffer20142",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20142, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20142, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2041.drawIndirect(buffer2098, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20141, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2070.drawIndirect(buffer2074, 0);
    render_pass_encoder2041.drawIndirect(buffer2065, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20140, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer20126, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2070.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer20116, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2021.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2080, "uint16");
    render_pass_encoder2080.drawIndirect(buffer2042, 0);
    render_pass_encoder2070.drawIndirect(buffer20120, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2080.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2069, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2047, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer20109, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2070.drawIndirect(buffer2064, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer20106, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20140, 0);
    render_pass_encoder2030.drawIndirect(buffer2057, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer20117, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2041.drawIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20117, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2022, 0);
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2080.end();
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2041.drawIndirect(buffer2072, 0);
    render_pass_encoder2040.setIndexBuffer(buffer20134, "uint16");
    device20.queue.submit([command_buffer203, command_buffer204, command_buffer206, command_buffer207, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2054, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2063, 0);
    render_pass_encoder2041.drawIndirect(buffer2082, 0);
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2080.drawIndirect(buffer2074, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2032, 0);
    render_pass_encoder2011.end();
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20143 = device20.createBuffer({
        label: "buffer20143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20143, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20143, 0);
    render_pass_encoder2011.drawIndirect(buffer2035, 0);
    render_pass_encoder2021.drawIndirect(buffer2038, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2041.drawIndirect(buffer2069, 0);
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer20144 = device20.createBuffer({
        label: "buffer20144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20144, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer20144, 0);
    render_pass_encoder2050.setIndexBuffer(buffer20127, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2080.drawIndirect(buffer2032, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer20142, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2011.end();
    const buffer20145 = device20.createBuffer({
        label: "buffer20145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20146 = device20.createBuffer({
        label: "buffer20146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2054 = device20.createBindGroup({
        label: "bind_group2054",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20146,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2054);
    render_pass_encoder2040.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder2070.drawIndirect(buffer2064, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2051, 0);
    render_pass_encoder2050.setIndexBuffer(buffer20125, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20117, 0);
    render_pass_encoder2030.drawIndirect(buffer20109, 0);
    render_pass_encoder2040.drawIndirect(buffer2065, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2031.drawIndirect(buffer2096, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20126, 0);
    render_pass_encoder2041.drawIndirect(buffer2041, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2050.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer20106, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20134, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2080.drawIndexedIndirect(buffer20146, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2080.drawIndirect(buffer2063, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2041.drawIndirect(buffer20141, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2069, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer20119, 0);
    render_pass_encoder2030.drawIndirect(buffer20143, 0);
    render_pass_encoder2080.drawIndirect(buffer20130, 0);
    device40.queue.submit([]);
    render_pass_encoder2040.end();
    compute_pass_encoder2010.end();
    device00.queue.submit([]);
    const buffer20147 = device20.createBuffer({
        label: "buffer20147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20148 = device20.createBuffer({
        label: "buffer20148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2055 = device20.createBindGroup({
        label: "bind_group2055",
        layout: compute_pipeline2011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20148,
                },
            },
        ],
    });

    compute_pass_encoder2070.setBindGroup(0, bind_group2055);
    render_pass_encoder2011.drawIndexedIndirect(buffer2082, 0);
    device40.queue.submit([]);
    render_pass_encoder2011.drawIndexedIndirect(buffer20131, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20116, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20108, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2011.drawIndirect(buffer2069, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer20140, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2097, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2054, 0);
    render_pass_encoder2080.drawIndexedIndirect(buffer20144, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2010.drawIndirect(buffer2054, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer20140, 0);
    compute_pass_encoder2070.end();
    render_pass_encoder2021.drawIndirect(buffer20119, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2065, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2054, 0);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer2055, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer2079, 0);
    const uint32_2070 = new Uint32Array(3);

    uint32_2070[0] = 100;
    uint32_2070[1] = 1;
    uint32_2070[2] = 1;

    const buffer20149 = device20.createBuffer({
        label: "buffer20149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20149, 0, uint32_2070, 0, uint32_2070.length);

    compute_pass_encoder2070.dispatchWorkgroupsIndirect(buffer20149, 0);
    render_pass_encoder2040.drawIndirect(buffer20144, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer20120, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.popDebugGroup();
}