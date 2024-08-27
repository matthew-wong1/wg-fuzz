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
    
    
    const array0 = new Float32Array([-0.5, -1.0, -0.25, -0.5, -1.0, -1.0, -0.25, 0.0, -0.75, -0.5, -1.0, -0.25, 0.75, 0.25, 0.25, 0.5, 1.0, -0.75, 0.5, 0.5, 1.0, 1.0, -1.0, 0.0, 0.5, -0.25, 0.75, 0.25, 0.0, 0.75, -0.5, 0.5, 0.25, -0.75, 0.75, 0.25, -1.0, 0.0, 1.0, 0.0, -0.75, 0.25, 1.0, -0.25, 1.0, 0.25, -0.5, -0.25, 0.25, 1.0, 0.5, 1.0, 0.25, 0.5, -0.25, -0.5, 0.25, -0.5, 1.0, 0.75, -0.75, -0.75, -1.0, 1.0, -1.0, 0.0, -0.5, -0.5, -0.75, -1.0, 0.25, -0.75, 1.0, -0.5, -0.5, 0.5, 0.75, -0.25, 0.0, 0.5, 0.25, 0.25, 0.75, -0.75, -0.5, -0.75, 0.0, 1.0, 0.0, -0.25, 1.0, 0.5, 0.25, 0.5, 0.5, -1.0, 0.5, -1.0, 0.75, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.25, 0.25, 0.75, -1.0, 0.25, -0.25, -0.25, 0.25, 1.0, 0.0, 1.0, 0.25, 0.0, 0.75, 0.75, -0.25, 0.0, -1.0, 1.0, -0.5, 0.75, -0.5, -0.75, 0.5, -1.0, -0.75, -0.75, 1.0, -0.5, 0.25, -1.0, 1.0, -0.25, 1.0, 0.25, 0.25, -0.25, 0.5, 0.25, 0.75, 1.0, 0.25, -0.25, 1.0, 0.75, 1.0, -0.75, 0.5, 1.0, 0.25, 0.5, -0.5, 1.0, 0.0, -0.75, -0.75, -0.25, -0.25, -0.75, 0.25, -0.75, 0.75, -0.5, -1.0, -0.5, 0.0, 0.25, -0.25, -0.75, 1.0, -0.75, 0.25, 0.25, -0.25, 0.0, -0.25, -0.5, 0.5, -0.75, -0.75, -1.0, 0.75, -0.5, -0.5, 1.0, -1.0, -0.75, 0.75, 0.75, 0.75, 0.25, 1.0, -0.75, 1.0, 0.0, 0.25, 0.25, 0.0, -1.0, 1.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    const array2 = new Float32Array([0.25, 1.0, -1.0, -1.0, 1.0, -1.0, -0.5, 0.0, -0.25, -0.75, -0.75, 0.5, -0.75, -0.75, -1.0, -0.75, -0.25, -0.25, -0.5, 0.25, -0.25, 0.5, 1.0, 0.0, 0.0, 0.25, 0.5, -1.0, -0.5, -0.75, 0.5, 0.75, -0.5, -0.5, 0.5, -0.5, -0.75, 0.75, 1.0, 1.0, -0.75, -0.5, -0.5, 0.5, -0.5, 0.75, 0.5, 0.5, 0.75, 0.0, -0.75, -0.75, -0.5, -0.75, -0.5, -0.25, -0.75, 1.0, 0.25, 0.0, 0.5, -0.75, 0.25, -0.25, -1.0, 0.25, 0.5, 0.0, 0.5, -0.5, -1.0, 0.25, -0.75, -0.5, 0.75, 0.75, 0.5, 0.25, -0.75, -1.0, 0.5, -0.25, 1.0, 0.5, -0.25, 0.5, -0.25, -1.0, 0.5, 0.5, 0.25, 0.25, 0.0, 0.75, -0.75, -1.0, 0.25, 1.0, -0.5, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.pushErrorScope("out-of-memory");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("out-of-memory");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
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
    render_bundle_encoder001.popDebugGroup();
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    device10.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    buffer100.destroy()
    render_bundle_encoder000.popDebugGroup();
    command_encoder201.pushDebugGroup("mygroupmarker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.popDebugGroup()
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    command_encoder201.insertDebugMarker("mymarker");
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder102.clearBuffer(buffer100);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    device20.pushErrorScope("validation");
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder102.insertDebugMarker("mymarker");
    query000.destroy()
    buffer000.destroy()
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.pushErrorScope("validation");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query100.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.25, 0.5, 0.75, -0.25, -0.5, -0.75, 0.5, -0.75, -0.5, -0.5, 0.75, 1.0, 0.0, -1.0, 0.75, -0.25, -0.5, 0.75, -0.75, -0.5, -0.75, 0.5, -1.0, 0.75, -0.5, 0.0, 1.0, 0.5, -0.25, 0.0, 1.0, 0.5, 0.25, 0.25, -1.0, -0.75, -1.0, -0.25, 0.0, -0.75, 1.0, 0.0, 0.0, -0.75, -1.0, -0.5, 0.25, -0.25, -0.75, 1.0, 0.5, -0.25, 0.75, -0.75, -0.75, -0.5, 0.5, 1.0, 0.0, 0.75, 0.5, 0.75, 0.25, -0.75, 0.25, -0.25, 0.25, -0.75, 0.5, 1.0, 1.0, 0.0, 0.25, -0.25, 0.75, 0.0, 0.25, -1.0, -0.75, 0.25, -0.75, 0.75, -0.5, -0.5, -0.5, 0.75, -0.5, 0.0, 0.75, -0.25, 1.0, 0.25, 1.0, 0.0, -1.0, -0.5, 0.0, -0.75, 0.5, 1.0, ]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer101
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
    command_encoder101.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    device10.pushErrorScope("validation");
    
    render_bundle_encoder001.popDebugGroup();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query000.destroy()
    buffer102.destroy()
    command_encoder001.clearBuffer(buffer001);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
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
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder101.popDebugGroup()
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer101 = command_encoder101.finish();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_buffer102 = command_encoder102.finish();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer001.destroy()
    
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
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
    
    render_bundle_encoder000.popDebugGroup();
    
    texture100.destroy();
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    query101.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder202.popDebugGroup()
    render_bundle_encoder300.insertDebugMarker("marker");
    query100.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
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
    buffer002.destroy()
    texture001.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder100.insertDebugMarker("mymarker");
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
    query002.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder104.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
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
        occlusionQuerySet: undefined
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const command_buffer203 = command_encoder203.finish();
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.submit([]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    render_bundle_encoder000.popDebugGroup();
    texture002.destroy();
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
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1041.setPipeline(render_pipeline103);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    render_pass_encoder1040.setPipeline(render_pipeline103);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder204.insertDebugMarker("mymarker");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    device10.queue.submit([command_buffer101, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.setStencilReference(1);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder301.popDebugGroup();
    
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.popDebugGroup()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setStencilReference(1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder3000.setStencilReference(1);
    buffer105.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setPipeline(render_pipeline300);
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
        occlusionQuerySet: query100
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline004);
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_pass_encoder3000.insertDebugMarker("marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setStencilReference(1);
    
    
    
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    buffer301.destroy()
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder1041.insertDebugMarker("marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setPipeline(render_pipeline101);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
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
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer101,
        0,
        400
    );
    buffer103.destroy()
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer106.destroy()
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    query100.destroy()
    query300.destroy()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query006
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.submit([command_buffer002, ]);
    
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    device20.pushErrorScope("internal");
    render_pass_encoder3010.setStencilReference(1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.executeBundles([])
    
    buffer007.destroy()
    buffer300.destroy()
    buffer303.destroy()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_pass_encoder3010.setPipeline(render_pipeline302);
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    render_pass_encoder2020.setPipeline(render_pipeline201);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0010.setPipeline(render_pipeline004);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0010, 0);
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    compute_pass_encoder2040.popDebugGroup()
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder1000.popDebugGroup();
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group103);
    const command_buffer104 = command_encoder104.finish();
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1041.setVertexBuffer(0, buffer100);
    render_pass_encoder1041.drawIndirect(buffer1012, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2040.setPipeline(compute_pipeline200);
    compute_pass_encoder0000.end();
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    render_pass_encoder1041.end();
    render_pass_encoder1041.popDebugGroup();
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    compute_pass_encoder1050.setPipeline(compute_pipeline100);
    render_pass_encoder2010.setPipeline(render_pipeline201);
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

    render_pass_encoder2020.setBindGroup(0, bind_group204);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2011, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer000 = command_encoder000.finish();
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group205);
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group206);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2016, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2016, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer2015);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder2040.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder2020.end();
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group004);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2010.end();
    command_encoder202.popDebugGroup()
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group104);
    render_pass_encoder1040.popDebugGroup();
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
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group207);
    render_pass_encoder3010.setVertexBuffer(0, buffer305);
    render_pass_encoder1000.setVertexBuffer(0, buffer104);
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder2010.setVertexBuffer(0, buffer2010);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder0010.setVertexBuffer(0, buffer0010);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder1000.end();
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder3000.setVertexBuffer(0, buffer302);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder2020.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder2040.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2019, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1040.popDebugGroup();
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
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer202, ]);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2020.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0015, 0);
    command_encoder100.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2010.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder3010.drawIndexed(3);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1000.end();
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group105);
    compute_pass_encoder1050.end();
    compute_pass_encoder2040.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder1041.end();
    render_pass_encoder0010.end();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2000.end();
    const command_buffer100 = command_encoder100.finish();
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group005);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1041.end();
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder3000.end();
    render_pass_encoder2020.draw(3);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder1040.setVertexBuffer(0, buffer1012);
    const command_buffer001 = command_encoder001.finish();
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder1040.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder1041.popDebugGroup();
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    render_pass_encoder2020.popDebugGroup();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2022, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2022, 0);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1016, "uint16");
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0010.popDebugGroup()
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    compute_pass_encoder1000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1020, 0);
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer100, ]);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1000.end();
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([]);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2027, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    compute_pass_encoder0000.popDebugGroup()
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group2011);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2020, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder3010.end();
    compute_pass_encoder1000.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0026, 0);
    compute_pass_encoder0010.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2030, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2031, 0);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0010);
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.popDebugGroup();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1021, 0);
    render_pass_encoder1041.drawIndirect(buffer1021, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    device00.queue.submit([command_buffer001, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1022, 0);
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
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.end();
    render_pass_encoder3000.draw(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
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
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2036,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    render_pass_encoder0010.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group107);
    compute_pass_encoder2000.end();
    render_pass_encoder1041.drawIndirect(buffer1021, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder3010.drawIndexed(3);
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder0010.end();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndirect(buffer1020, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3010.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder1041.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3000.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0010.end();
    render_pass_encoder3010.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder3010.setIndexBuffer(buffer305, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3010.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1024, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2037, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2037, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1000.draw(3);
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1020, 0);
    device00.queue.submit([]);
    render_pass_encoder1040.end();
    render_pass_encoder3010.popDebugGroup();
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    render_pass_encoder2020.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2010.drawIndirect(buffer2032, 0);
    render_pass_encoder2010.drawIndirect(buffer2032, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer2030, "uint16");
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1041.end();
    render_pass_encoder0010.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group2015);
    device10.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    compute_pass_encoder2040.popDebugGroup()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2042, 0);
    render_pass_encoder2020.end();
    render_pass_encoder1000.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1000.drawIndirect(buffer1020, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0034, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1029, 0);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
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
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1010);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    render_pass_encoder1041.drawIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2010.end();
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1011);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0035, 0);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1012);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1040.end();
    render_pass_encoder2010.drawIndirect(buffer2040, 0);
    render_pass_encoder1040.drawIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2020.end();
    render_pass_encoder3010.popDebugGroup();
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
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
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1036, 0);
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2045, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2045, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder3010.end();
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder0000.end();
    render_pass_encoder3000.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2020.end();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder3010.end();
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer109, 0);
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
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1050.end();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1050.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder2010.end();
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
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2018);
    compute_pass_encoder2010.end();
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1022, 0);
    compute_pass_encoder1050.end();
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
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
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1014);
    render_pass_encoder2020.drawIndirect(buffer2037, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1015);
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    device00.queue.submit([command_buffer000, ]);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2050, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2050, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.draw(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    compute_pass_encoder1050.popDebugGroup()
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1016);
    render_pass_encoder1040.end();
    render_pass_encoder1041.end();
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder2010.end();
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2051, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2051, 0);
    render_pass_encoder1041.drawIndirect(buffer1017, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder2010.drawIndirect(buffer2051, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
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
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1041.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1041.draw(3);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1040.end();
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2037, 0);
    render_pass_encoder2020.drawIndirect(buffer2051, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2052, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2052, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1050.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder0000.popDebugGroup()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2053, 0);
    compute_pass_encoder0010.popDebugGroup()
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1047, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2055,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2019);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder1041.end();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2032, "uint16");
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
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder3000.draw(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2056, 0);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3010.draw(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2057, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2057, 0);
    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1049,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0040, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2058, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2058, 0);
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder0010.end();
    device30.queue.submit([command_buffer301, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0041, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder1041.end();
    compute_pass_encoder2040.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1050, 0);
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer105, ]);
    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2060,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2020);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1050.end();
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2061, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2061, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder1000.drawIndirect(buffer1047, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2056, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder1040.drawIndirect(buffer1050, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1050.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2062, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2062, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder2020.drawIndirect(buffer2062, 0);
    render_pass_encoder1041.drawIndirect(buffer1021, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1014, 0);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1022, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1050, 0);
    device40.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder3010.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1041.popDebugGroup();
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0014);
    compute_pass_encoder2010.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    device00.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2021);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2063, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1041.drawIndirect(buffer1028, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1041.end();
    render_pass_encoder3000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer105, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    render_pass_encoder1040.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2065, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2065, 0);
    render_pass_encoder1000.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder2040.end();
    compute_pass_encoder0000.popDebugGroup()
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2061, 0);
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
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    compute_pass_encoder2000.end();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder2010.setIndexBuffer(buffer2056, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([]);
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2023);
    render_pass_encoder1040.drawIndexed(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2070, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2070, 0);
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
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2020.end();
    device10.queue.submit([command_buffer103, ]);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1040.end();
    compute_pass_encoder1050.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.drawIndirect(buffer2065, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1056, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1056, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2071, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2071, 0);
    render_pass_encoder1000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1057, 0);
    device30.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer2025, "uint16");
    device00.queue.submit([command_buffer002, ]);
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
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1021);
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.drawIndirect(buffer2066, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer1050, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2058, 0);
    compute_pass_encoder2040.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
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
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    render_pass_encoder2020.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1057, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder2040.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1060, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder1041.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1023, "uint16");
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    compute_pass_encoder2040.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1023);
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder1000.drawIndirect(buffer1064, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2075,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2025);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2058, 0);
    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2077,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2026);
    render_pass_encoder2010.drawIndexedIndirect(buffer2047, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
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
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2079,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2027);
    compute_pass_encoder0010.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder0010.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder2010.setIndexBuffer(buffer209, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder1050.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2056, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder2010.end();
}