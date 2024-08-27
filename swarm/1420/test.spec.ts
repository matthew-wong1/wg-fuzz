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
    const array0 = new Float32Array([0.75, 0.5, 0.5, -0.25, 1.0, 1.0, 0.5, 0.25, -0.75, -0.5, 0.5, 0.5, 0.0, -0.5, -0.75, -0.25, 0.0, 0.0, -0.75, 0.75, -0.75, 0.0, 1.0, 0.5, 0.25, 1.0, 0.25, 0.25, 1.0, -0.5, -0.25, -0.25, 0.5, 0.0, -1.0, -0.5, -0.75, -0.5, 0.0, -0.25, -0.75, 0.75, -0.75, -1.0, -1.0, 1.0, -0.5, 0.75, 0.75, -0.5, 0.75, 0.75, -1.0, -0.75, 0.25, -0.25, -0.25, 0.75, 0.75, -0.75, 0.25, -0.75, -1.0, -0.25, 0.5, -0.75, 0.75, 0.75, 0.5, -0.5, 0.25, -1.0, 0.75, 0.75, 0.5, 0.75, 0.5, 1.0, -0.25, -0.75, 0.25, -1.0, -1.0, 0.0, -0.75, -0.25, 0.0, -0.25, 0.0, -1.0, 1.0, 0.25, 0.5, -1.0, 1.0, -0.25, -0.5, -0.25, 0.5, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    command_encoder102.insertDebugMarker("mymarker");
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder102.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer101 = command_encoder101.finish();
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query000.destroy()
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer200 = command_encoder200.finish();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([command_buffer101, ]);
    const array1 = new Float32Array([0.75, -1.0, -0.5, 0.75, 0.75, 0.25, -0.25, 0.75, -0.25, -0.75, -0.25, -0.25, -0.5, -0.75, 0.0, 0.0, -0.25, 0.75, -0.5, 0.0, 0.0, -0.75, -0.5, 1.0, 0.5, 0.75, -0.5, 0.0, -0.25, 1.0, 0.75, 0.75, -0.5, -0.75, 0.0, 0.25, 0.25, 0.25, -0.25, 0.25, -0.25, -1.0, -0.5, -0.25, 1.0, 0.25, -0.25, -0.75, 1.0, -0.25, 0.75, 1.0, -0.5, -1.0, -0.25, 0.0, -0.5, 0.25, 0.25, -1.0, 0.5, 0.75, 1.0, -0.75, 0.0, 0.5, 0.75, 0.5, -0.25, 0.25, 0.5, -0.25, 0.0, -0.5, -1.0, -0.75, 0.5, 0.75, -0.25, 1.0, -0.5, -1.0, -0.5, 0.75, -0.25, -0.25, 0.5, -0.5, -0.75, 0.5, -1.0, -0.5, 0.25, -0.25, -0.5, -1.0, -0.5, 0.0, 0.0, -0.75, ]);
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
    command_encoder100.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    device00.destroy();
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer100,
        0,
        400
    );
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
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
    query200.destroy()
    
    device10.queue.submit([command_buffer102, ]);
    query101.destroy()
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    query200.destroy()
    command_encoder100.clearBuffer(buffer103);
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
    device10.queue.submit([]);
    query101.destroy()
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    command_encoder104.clearBuffer(buffer103);
    device20.queue.submit([command_buffer200, ]);
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    command_encoder103.clearBuffer(buffer103);
    
    
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    command_encoder202.copyBufferToBuffer(
        buffer201,
        0,
        buffer200,
        0,
        400
    );
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer103,
        0,
        400
    );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
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
    const array2 = new Float32Array([-0.25, 1.0, 0.25, -1.0, 1.0, 0.5, -1.0, 1.0, 0.0, 0.75, 0.75, -0.25, 0.75, 1.0, 0.5, 0.25, 1.0, -0.75, -0.25, -1.0, 0.5, -0.5, -0.25, 0.0, 0.5, 0.0, 1.0, 0.0, 0.5, -1.0, -0.25, -1.0, -0.5, 1.0, 0.75, -0.25, 0.75, -1.0, 0.75, 1.0, -0.5, 1.0, -0.25, 0.0, -0.25, 0.75, 0.5, 0.5, 1.0, 0.25, 1.0, -0.75, -0.75, -0.75, 0.5, -1.0, -0.75, 0.25, 0.25, -1.0, -1.0, -0.5, 0.25, -1.0, 1.0, 0.0, 0.75, -0.5, -0.5, 0.5, -0.5, -0.75, -0.25, 0.0, -1.0, -1.0, -0.5, 1.0, -0.25, 0.25, 0.0, 0.25, -1.0, 1.0, -0.25, 0.5, -0.75, -0.25, -0.5, -0.25, -0.75, -0.75, -0.75, 0.5, -0.75, -0.5, 1.0, 1.0, 0.0, 0.0, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder103.clearBuffer(buffer101);
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    const command_buffer202 = command_encoder202.finish();
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer100,
        0,
        400
    );
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer103,
        0,
        400
    );
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    command_encoder103.clearBuffer(buffer101);
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
    
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    device20.queue.submit([command_buffer202, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    const array3 = new Float32Array([0.0, 1.0, 0.5, -1.0, 0.5, -0.75, 0.0, -0.25, 0.0, 0.25, 0.5, 0.75, 1.0, 0.5, 0.75, 1.0, 1.0, -0.5, 0.0, 0.5, -1.0, -1.0, -1.0, -0.25, -0.25, 0.25, 0.5, 1.0, -0.75, 0.0, -0.5, 0.25, -0.25, 0.0, 0.5, 0.0, 0.5, 0.5, -0.75, 0.25, 0.75, 0.25, -0.25, -0.75, -0.5, 0.0, 0.5, 0.25, -0.25, -0.75, 0.75, 0.25, -1.0, 0.75, 0.75, 1.0, -1.0, -0.25, 0.75, -0.25, 1.0, -0.75, 0.5, 0.5, -1.0, -0.5, -0.75, -1.0, -0.5, -0.75, -0.75, -0.75, 0.0, 0.5, 0.25, 0.25, 0.0, 0.25, -0.25, 0.25, 0.25, -0.25, 0.75, -0.25, 0.75, -0.75, -1.0, 0.5, 1.0, -0.75, 0.5, 1.0, 0.5, -0.25, -1.0, 0.5, 0.25, 0.5, 0.0, 0.0, ]);
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
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
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    command_encoder201.insertDebugMarker("mymarker");
    
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
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    command_encoder201.insertDebugMarker("mymarker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.0, -0.25, -1.0, -0.25, -1.0, -1.0, 0.0, 0.75, -0.75, -0.25, 0.25, -0.75, 1.0, 1.0, 0.75, 0.25, 0.5, -0.5, 0.5, -0.75, -0.5, 0.25, -1.0, 0.25, 0.0, -0.25, 0.5, -0.5, -0.25, -0.25, -0.75, 0.25, 0.75, 0.5, -0.75, -1.0, 0.25, -0.5, 0.0, 0.75, -1.0, 0.0, -0.5, -0.75, 0.75, 1.0, 0.5, 0.0, 0.75, -1.0, 1.0, 0.0, -0.25, 0.0, 0.0, -0.75, 0.75, 0.0, 0.5, -0.75, 0.75, 0.25, -0.5, 0.5, -1.0, 0.25, -1.0, 0.75, -1.0, -0.75, -1.0, 1.0, 0.5, -0.5, 0.5, -0.25, 0.25, 0.75, 1.0, 1.0, -1.0, 1.0, 0.25, 0.0, 1.0, -0.5, 0.25, -0.25, 1.0, -0.75, -0.25, 0.75, -0.5, -0.5, 0.5, 0.5, 0.0, -0.5, -0.25, 0.75, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    render_bundle_encoder100.popDebugGroup();
    command_encoder100.clearBuffer(buffer101);
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder104.copyBufferToBuffer(
        buffer103,
        0,
        buffer103,
        0,
        400
    );
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    
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
    command_encoder000.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
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
    render_bundle_encoder200.popDebugGroup();
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    command_encoder103.clearBuffer(buffer101);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    
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
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    command_encoder201.clearBuffer(buffer202);
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    query100.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder100.clearBuffer(buffer103);
    const array5 = new Float32Array([0.0, -1.0, -0.75, -0.75, 0.5, -0.75, -0.25, 0.75, -1.0, -1.0, 0.75, -0.5, -1.0, -0.5, -1.0, 0.0, -0.25, 1.0, 0.75, 0.5, -0.75, 0.0, 0.75, -0.25, 1.0, 0.0, 0.0, 0.5, -0.5, 0.25, 0.5, -0.75, 0.0, 0.0, 0.0, -1.0, -1.0, 0.75, 0.0, -0.5, -0.75, -0.5, 0.0, 0.75, 1.0, -0.25, 0.0, 0.25, -1.0, -1.0, -0.25, -1.0, 0.5, 0.0, -0.5, -0.5, 0.0, -0.25, -0.75, -0.75, 0.25, 0.25, 0.5, 0.0, 0.0, 0.25, 0.5, -0.5, 1.0, 0.75, -0.75, 0.5, 0.0, 0.5, 0.0, 0.25, -0.25, 0.5, -0.5, 0.0, 0.75, -1.0, 0.25, 0.75, 1.0, 1.0, 0.75, 0.75, 0.0, 0.0, 0.25, -0.25, 0.75, 0.75, -0.25, -0.75, 0.25, -0.75, 0.25, -0.5, ]);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    
    query201.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder104.clearBuffer(buffer100);
    command_encoder100.clearBuffer(buffer101);
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
    
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    query201.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    command_encoder201.copyBufferToBuffer(
        buffer200,
        0,
        buffer202,
        0,
        400
    );
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    const command_buffer104 = command_encoder104.finish();
    render_bundle_encoder101.popDebugGroup();
    
    
    
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    render_bundle_encoder201.popDebugGroup();
    query204.destroy()
    query201.destroy()
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query101.destroy()
    command_encoder103.clearBuffer(buffer103);
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder201.clearBuffer(buffer200);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    query202.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer203,
        0,
        400
    );
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    query201.destroy()
    query101.destroy()
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    command_encoder100.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
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
    const command_buffer103 = command_encoder103.finish();
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query204.destroy()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    query201.destroy()
    render_bundle_encoder201.popDebugGroup();
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    query100.destroy()
    command_encoder201.clearBuffer(buffer203);
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout100]
    });
    query204.destroy()
    
    
    
    device10.queue.submit([command_buffer104, ]);
    render_bundle_encoder202.popDebugGroup();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer204,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer204,
        0,
        400
    );
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    command_encoder100.clearBuffer(buffer103);
    query203.destroy()
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
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query201.destroy()
    
    command_encoder100.clearBuffer(buffer103);
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    query204.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer201,
        0,
        400
    );
    
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    command_encoder201.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_bundle_encoder100.popDebugGroup();
    query102.destroy()
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    
    query000.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer203,
        0,
        400
    );
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    command_encoder201.insertDebugMarker("mymarker");
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder201.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    render_bundle_encoder202.insertDebugMarker("marker");
    query101.destroy()
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer203,
        0,
        400
    );
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    query206.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout203]
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    query206.destroy()
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
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
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder203.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder203.popDebugGroup();
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    query100.destroy()
    
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query202.destroy()
    
    query200.destroy()
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder203.pushDebugGroup("group_marker");
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder101.popDebugGroup();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    command_encoder100.clearBuffer(buffer101);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    device20.queue.submit([]);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
}