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
    const array0 = new Float32Array([0.0, 0.75, 0.25, 0.25, 0.0, -0.75, 0.75, 0.0, 0.0, 0.5, 0.75, -0.5, 0.0, -0.75, 0.5, 0.75, 0.75, 0.75, 0.25, -1.0, -0.25, 1.0, 0.5, 0.75, 1.0, -0.25, -0.5, -0.5, -0.75, 0.75, 1.0, 0.25, 0.0, 0.75, 0.25, -1.0, 0.5, 1.0, 1.0, 1.0, -1.0, 0.75, -0.25, -0.75, -0.25, 0.25, -0.25, -1.0, -1.0, 0.75, 0.25, 0.25, -0.75, -0.25, -1.0, 1.0, 0.75, -0.25, -0.5, 0.75, 0.0, -0.5, 0.5, -0.5, 0.75, -0.5, 0.5, 0.25, 0.0, 0.0, 0.75, -0.75, 1.0, -0.75, -1.0, 0.5, 0.5, 0.75, -0.5, 1.0, 0.5, 0.75, -0.25, -1.0, -0.25, 0.75, -0.5, 1.0, -1.0, 0.5, -0.75, -0.25, -0.25, -0.25, -0.75, -0.5, 0.5, 0.25, 1.0, 0.25, ]);
    
    
    
    
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    buffer100.destroy()
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer101.destroy()
    device10.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const array1 = new Float32Array([-0.75, 0.25, 0.5, -0.75, 0.75, -0.75, 0.25, 0.0, 0.0, 0.75, 0.25, 0.0, 1.0, 0.25, 0.75, 0.25, 0.5, 0.5, 0.0, -0.5, 0.75, 1.0, -0.25, -0.75, -0.25, 1.0, -0.5, 0.0, -0.75, -0.5, 0.75, -1.0, -1.0, -1.0, 0.5, 0.0, 0.5, 1.0, -1.0, 0.75, -0.25, 1.0, -0.75, 0.5, -0.75, -1.0, 1.0, -0.75, -0.5, -0.5, -0.75, -0.75, 0.75, -0.75, -0.5, -0.5, 0.5, 0.0, -0.5, 0.0, 0.0, 1.0, 0.25, -1.0, -0.25, -0.5, -0.75, -0.75, -1.0, 1.0, -0.5, 0.0, 0.25, 0.0, 0.0, 0.0, 0.25, 1.0, -0.75, -0.75, -0.75, 0.5, -1.0, 0.5, 0.25, -1.0, -0.5, 0.25, -0.75, -1.0, 0.0, -0.25, 0.75, 0.25, 0.5, 1.0, 0.0, 0.0, -0.75, -1.0, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.pushErrorScope("validation");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    
    
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device20.pushErrorScope("internal");
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const array2 = new Float32Array([0.25, -0.75, 0.0, -0.75, -0.25, -0.25, 0.5, -0.5, 1.0, 0.75, -1.0, -0.25, 0.75, 0.25, 0.0, 0.25, -0.75, 0.75, -0.75, -0.75, -0.75, 0.75, 0.5, -0.5, 1.0, 0.75, 0.5, -0.5, -0.25, -1.0, -1.0, 0.25, 0.0, -0.5, -0.5, 0.75, -1.0, -1.0, 0.75, -0.5, 0.25, -0.25, 0.5, -0.75, 1.0, 0.0, 0.5, -0.25, -0.5, 0.5, -0.75, 0.0, 0.0, -0.75, 0.5, -0.25, 0.25, -0.5, 0.0, -0.25, -0.25, 0.0, -0.25, -1.0, 0.0, 0.75, 0.75, 1.0, -1.0, -0.25, 0.5, -0.75, 0.75, 0.25, 0.0, -0.75, 0.25, -0.75, 0.0, -0.5, -0.25, -0.75, 0.0, -1.0, 0.75, -0.75, 1.0, -0.75, 0.25, 0.75, -0.25, 0.25, -0.5, 0.0, -0.25, -0.75, -0.5, 0.75, 0.0, 0.5, ]);
    const array3 = new Float32Array([-1.0, -0.5, -1.0, 1.0, 0.0, -1.0, 1.0, -0.5, 0.25, 1.0, 1.0, -0.5, -0.75, -0.25, -1.0, 0.25, -0.25, -0.25, -0.25, -1.0, -0.75, 0.75, -1.0, 0.0, 0.0, -0.5, -0.75, 0.75, -0.5, 0.25, -0.5, 0.5, -0.75, 0.75, -0.5, -0.75, 0.5, 0.5, 0.5, 0.5, 1.0, -0.75, -1.0, -1.0, -1.0, 0.5, 0.5, 0.25, -0.5, -1.0, -0.25, -0.5, -0.25, -0.25, -0.25, 0.0, 0.25, -0.75, -0.5, 0.75, -1.0, 0.5, 0.75, 0.75, 0.25, -0.75, 0.25, 0.25, -0.5, -0.5, 0.5, -0.25, 0.0, -0.75, 1.0, -0.5, 0.75, 0.25, 0.25, 0.25, 0.5, -0.5, -0.5, 0.0, 1.0, 0.25, -0.5, -0.25, 0.75, 0.5, 1.0, -0.75, 0.5, 1.0, 1.0, 0.0, -1.0, 0.25, -0.5, 1.0, ]);
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    device40.destroy();
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_buffer501 = command_encoder501.finish();
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    device50.pushErrorScope("validation");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    buffer500.destroy()
    
    const command_buffer500 = command_encoder500.finish();
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
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.0, 0.25, -0.75, 0.25, -0.25, 0.0, -0.75, -0.5, 1.0, -0.5, 1.0, 0.5, -0.75, -0.25, 0.5, -0.5, 1.0, -0.25, 0.25, 1.0, 0.75, 0.25, -0.5, 0.0, 0.5, 0.0, -0.75, 0.75, 0.75, 0.75, -0.75, 1.0, -1.0, 0.0, -0.75, -0.5, 0.25, -0.25, -0.75, 1.0, 0.0, 0.0, 0.0, 0.75, -0.25, -0.75, 0.5, 0.25, -0.5, 0.0, -0.75, -1.0, -0.25, 0.5, -0.75, -0.5, -0.75, -1.0, 0.5, -0.75, -0.5, -0.5, 0.5, 0.25, 1.0, -0.5, -0.25, -0.75, 0.75, 0.75, 0.0, 0.5, 0.0, 0.5, 0.75, 0.25, 0.5, 0.25, 0.0, 0.75, -0.5, 0.5, 0.25, -0.25, 1.0, -1.0, 1.0, -0.25, 0.75, -0.25, -0.25, -0.5, 0.5, 0.5, -1.0, -0.5, 0.0, 0.75, 0.0, 0.75, ]);
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    device30.destroy();
    
    
    buffer502.destroy()
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder502.copyBufferToBuffer(
        buffer500,
        0,
        buffer503,
        0,
        400
    );
    const command_buffer502 = command_encoder502.finish();
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device50.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder503.copyBufferToBuffer(
        buffer501,
        0,
        buffer501,
        0,
        400
    );
    const array5 = new Float32Array([0.5, -1.0, -1.0, -0.25, -0.25, -0.75, 0.25, 0.75, -1.0, -1.0, 0.75, 0.0, 0.75, 0.0, 1.0, -0.75, 0.25, 0.0, -1.0, -0.75, -0.75, 1.0, 0.75, 0.25, 0.25, -0.5, 0.25, 0.75, 0.75, -0.5, 1.0, -1.0, 1.0, -0.5, -1.0, -1.0, 0.5, 1.0, 0.5, 0.25, -0.75, 0.75, 0.0, 1.0, -0.25, -0.5, -0.75, 0.25, -0.75, -0.75, 1.0, 0.25, 1.0, -0.75, 0.5, 0.0, 0.0, -0.5, 0.25, -0.25, 0.5, 0.75, -1.0, -1.0, -0.5, -0.75, -0.25, 0.0, -0.75, 0.5, -0.5, -1.0, -1.0, 0.75, 0.0, -1.0, -0.25, 0.75, 0.0, 0.5, 0.75, 0.5, -1.0, -0.75, -0.75, -0.5, -0.5, 0.5, 0.75, 1.0, -0.25, 0.5, 1.0, -0.75, 1.0, -0.5, -0.75, 0.0, -0.25, 0.25, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
    
    
    command_encoder503.resolveQuerySet(
        query501,
        0,
        32,
        buffer501,
        0
    )
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    
    const array6 = new Float32Array([-0.75, 0.75, -0.75, 0.25, 0.75, 1.0, -0.5, 0.75, 0.25, -1.0, -1.0, 0.75, -0.25, -0.5, 0.0, 0.25, -0.25, 0.0, 0.0, 1.0, -0.75, 0.0, -0.5, 0.0, -1.0, 0.75, 0.5, -0.5, 0.5, 0.25, 0.75, 0.75, 1.0, 0.5, -0.25, -0.5, 0.75, 0.75, 1.0, -0.25, -0.25, 0.5, -0.5, -0.25, 0.75, -1.0, -0.5, 1.0, -0.5, 0.5, 0.5, 0.25, -0.5, 0.5, -1.0, 0.0, 0.0, 0.5, -0.25, -0.75, -0.75, 1.0, -0.25, 0.75, 1.0, -0.75, -0.5, 0.5, 0.25, 1.0, -0.5, 0.75, 0.5, 0.5, 0.0, -0.5, -0.5, -1.0, 1.0, -0.5, 1.0, 0.5, -0.5, 0.25, 0.0, -0.25, 0.5, 0.0, 0.75, 0.5, 1.0, 1.0, 1.0, -0.25, -0.25, -1.0, -1.0, -0.25, -0.25, -0.25, ]);
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    device90.destroy();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([-1.0, 1.0, 0.0, 0.75, 0.5, 0.25, 0.75, -0.5, -0.5, 0.75, 0.5, 0.25, 0.5, -0.5, -1.0, -0.25, 0.5, 0.0, 1.0, -0.75, -0.25, -0.75, -0.25, -0.75, 0.5, 0.5, 0.75, 0.0, -1.0, -0.25, -0.5, -0.75, 1.0, -0.75, -0.75, -0.75, 0.5, -0.75, 0.75, 0.5, 0.0, -0.25, 0.5, 0.75, -0.75, 0.5, -0.5, -0.5, -0.75, 0.0, 1.0, 0.75, 0.5, -0.5, 0.25, 0.5, 0.5, -1.0, 0.75, -1.0, -0.5, -1.0, -1.0, -0.25, -1.0, -0.75, -0.5, 0.5, -0.75, 0.5, 0.25, -0.5, 1.0, -0.75, -1.0, 0.25, 0.25, 0.75, -0.75, 0.75, 0.5, 1.0, 0.25, -0.75, 0.0, 0.25, 0.75, -0.75, -0.5, -1.0, 0.5, -1.0, 0.0, 0.0, 0.0, 1.0, -0.75, 0.75, 1.0, 0.75, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
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
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer701.destroy()
    texture700.destroy();
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    command_encoder503.insertDebugMarker("mymarker");
    device70.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer100 = command_encoder100.finish();
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer200.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder503.resolveQuerySet(
        query500,
        0,
        32,
        buffer503,
        0
    )
    
    
    
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    
    
    device80.destroy();
    
    texture300.destroy();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    
    
    
    render_bundle_encoder800.popDebugGroup();
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.destroy();
    query000.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device120.pushErrorScope("internal");
    
    
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    device110.destroy();
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query1200.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder1400 = device140.createCommandEncoder({ label: "command_encoder1400" });
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
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
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    device120.destroy();
    
    device140.pushErrorScope("internal");
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const compute_pass_encoder14000 = command_encoder1400.beginComputePass({ label: "compute_pass_encoder14000" });
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const command_encoder1401 = device140.createCommandEncoder({ label: "command_encoder1401" });
    
    
    
    
    device40.pushErrorScope("internal");
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    compute_pass_encoder14000.insertDebugMarker("marker")
    const array8 = new Float32Array([-0.25, -0.25, -0.75, -0.5, 0.0, -1.0, 0.0, 0.75, -0.25, -0.75, -0.75, -0.25, 1.0, 1.0, -0.25, -0.75, -0.5, -0.75, 0.5, 1.0, 0.0, 0.75, 0.5, 0.5, -0.75, -0.75, -1.0, 0.0, -0.25, 1.0, 0.25, 1.0, -0.75, -0.75, 0.5, -0.25, 0.0, -1.0, -0.75, -0.5, -0.25, -0.25, -0.75, -0.75, 1.0, -0.75, 0.0, -0.75, 0.75, -1.0, 0.5, 0.5, -0.25, 0.5, 1.0, 0.25, 0.25, -0.75, -0.75, 0.0, -0.25, 0.25, -0.5, -0.25, 0.0, 0.25, -0.25, 0.0, 1.0, -0.25, 0.0, 0.75, -0.75, -0.5, 0.75, 1.0, 1.0, -1.0, 1.0, 0.5, 1.0, -0.75, 0.5, -1.0, 0.75, 0.75, -0.5, -0.25, 0.0, 1.0, 0.25, -0.5, 0.25, 0.5, 0.25, 0.5, -0.25, 0.25, -0.75, 0.25, ]);
    texture200.destroy();
    
    
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    texture100.destroy();
    command_encoder1401.insertDebugMarker("mymarker");
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder1402 = device140.createCommandEncoder({ label: "command_encoder1402" });
    
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder1401.insertDebugMarker("mymarker");
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const command_encoder1300 = device130.createCommandEncoder({ label: "command_encoder1300" });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_buffer1401 = command_encoder1401.finish();
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
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    render_bundle_encoder1400.insertDebugMarker("marker");
    
    render_bundle_encoder000.popDebugGroup();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline1500 = device150.createRenderPipeline({
        label: "render_pipeline1500",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    
    var shader_module1403_code = "";
    try {
        shader_module1403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1403 = await device140.createShaderModule({ label: "shader_module1403", code: shader_module1403_code })
    
    device60.destroy();
    
    device130.queue.writeBuffer(buffer1300, 0, array8, 0, array8.length);
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    device130.queue.writeBuffer(buffer1300, 0, array4, 0, array4.length);
    query000.destroy()
    const command_buffer1300 = command_encoder1300.finish();
    device140.queue.writeBuffer(buffer1401, 0, array4, 0, array4.length);
    
    
    
    
    device130.queue.writeBuffer(buffer1300, 0, array0, 0, array0.length);
    buffer1401.destroy()
    command_encoder503.resolveQuerySet(
        query502,
        0,
        32,
        buffer503,
        0
    )
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    device140.queue.writeTexture({ texture: texture1400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    render_bundle_encoder1400.popDebugGroup();
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    query600.destroy()
    
    var shader_module1404_code = "";
    try {
        shader_module1404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1404 = await device140.createShaderModule({ label: "shader_module1404", code: shader_module1404_code })
    
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    buffer1400.destroy()
    
    device130.queue.submit([command_buffer1300, ]);
    
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    {
        await buffer1300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1300.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query1401.destroy()
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const bind_group_layout1501 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1501",
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
    command_encoder1402.insertDebugMarker("mymarker");
    
    render_bundle_encoder1401.insertDebugMarker("marker");
    device130.queue.writeBuffer(buffer1300, 0, array0, 0, array0.length);
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder14000.insertDebugMarker("marker")
    
    
    const array9 = new Float32Array([-0.5, -0.25, -0.75, 0.5, 0.75, -0.25, -1.0, 0.0, -1.0, 0.25, -0.5, -0.5, -1.0, 0.75, -0.5, -0.5, 0.25, -0.5, -0.75, 0.75, 0.75, -1.0, -0.75, 0.75, 0.5, -0.75, 0.5, 0.25, 0.5, -0.25, -0.25, -0.25, -1.0, -0.25, -0.5, -0.25, -0.75, -0.75, 1.0, 0.5, -1.0, -0.75, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, 0.75, 0.25, 1.0, 0.25, -0.75, 0.0, 0.75, -0.25, 0.5, -1.0, -0.5, -0.5, 0.25, 0.25, 1.0, -0.75, 0.25, 0.75, 0.5, 0.0, 1.0, -0.25, -1.0, -0.75, 0.0, 0.75, 0.0, 0.0, 0.75, 0.5, -1.0, -0.5, 0.0, 0.75, -0.5, -0.5, -0.75, 1.0, -0.25, 0.5, -0.75, -1.0, -0.25, 0.0, -0.25, -1.0, -0.5, -0.25, 0.25, -0.25, 1.0, 0.5, ]);
    const texture_view14000 = texture1400.createView({ label: "texture_view14000" });
    device130.queue.writeTexture({ texture: texture1300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device140.queue.submit([command_buffer1401, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer1402 = command_encoder1402.finish();
    device130.queue.submit([command_buffer1300, ]);
}