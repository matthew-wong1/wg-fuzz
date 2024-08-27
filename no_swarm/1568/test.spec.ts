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
    const array0 = new Float32Array([0.0, 0.5, -0.75, 0.5, 0.5, 0.25, -0.5, -0.25, 0.5, 0.5, 0.0, -0.25, 0.75, 0.0, 1.0, 0.75, 0.25, -0.25, -0.75, -1.0, 0.0, -0.75, -0.25, -1.0, 0.25, -0.75, 0.25, 0.25, -1.0, 0.25, 1.0, 0.5, 0.0, 0.75, -1.0, 0.25, 0.0, 0.0, 1.0, -1.0, 0.0, 0.0, -0.5, -1.0, 0.75, -0.25, -0.5, 0.5, -1.0, 0.75, -0.5, 0.75, -0.5, 0.75, 0.0, 0.5, 1.0, 0.25, 0.75, 0.25, 0.25, -0.75, 0.25, 0.0, -0.5, -1.0, -0.5, 0.0, -0.5, 0.5, -1.0, -0.5, 0.0, 0.75, -0.25, 0.5, -1.0, -1.0, -0.75, -0.25, 0.0, 0.5, -0.75, -0.75, 0.0, -1.0, -0.5, -1.0, 0.5, -1.0, -1.0, 0.0, -0.25, -1.0, -0.75, -1.0, -0.25, -0.5, 0.75, 0.0, ]);
    
    const array1 = new Float32Array([-0.75, -0.75, 0.0, 0.75, 0.25, 0.75, 0.5, -0.25, 1.0, 0.0, -0.25, 0.0, 0.0, 1.0, 1.0, 1.0, -1.0, 0.5, 1.0, 0.5, 1.0, -1.0, -0.25, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, -0.25, -0.25, -0.25, 1.0, -1.0, 1.0, -0.75, -1.0, -1.0, -0.75, -0.25, 0.5, -1.0, -0.5, 0.75, -0.75, -0.25, 0.25, 0.75, -0.75, 1.0, -0.5, 0.75, -0.5, -0.5, -0.75, 0.5, 0.25, 1.0, 0.25, 0.25, 1.0, -0.25, 0.75, 0.75, 0.75, -0.25, 0.75, -0.75, -1.0, 1.0, 0.25, 0.25, -0.75, 1.0, 0.75, -1.0, -0.5, 1.0, 0.75, -0.25, -0.75, 0.75, -0.75, 0.25, -1.0, -0.25, -0.5, 0.25, -0.75, -0.25, 0.75, 0.25, 0.5, 0.5, 1.0, 0.0, -0.75, 0.75, -0.25, -0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([-0.25, 0.25, 0.0, 0.75, -0.25, -1.0, 0.5, -0.75, 0.5, -1.0, -1.0, -0.75, 0.5, 0.75, -0.25, 0.75, -1.0, -1.0, 0.0, -0.5, -0.75, 0.0, -0.75, -0.25, -0.25, -0.5, -0.75, 0.25, 1.0, 1.0, 0.0, 1.0, -1.0, -1.0, -1.0, -0.5, 1.0, -0.5, -0.25, -0.5, 0.5, 1.0, -0.75, 0.0, -0.25, -0.25, 1.0, -0.25, -1.0, -0.75, -0.75, -1.0, 0.75, 0.0, 0.25, 0.25, 1.0, -0.25, 0.25, -1.0, -0.75, -0.5, -0.25, -0.25, -0.75, 0.0, -0.75, -0.75, -0.75, 0.0, -0.5, -0.5, -1.0, 0.75, 0.75, -0.25, -0.75, 0.75, -0.5, -0.75, 0.0, -0.25, 0.75, -0.75, 0.5, -0.25, 0.5, 0.5, -0.5, -0.25, 0.75, 1.0, -0.25, 0.0, -0.25, -0.5, 0.75, 0.75, -0.25, -0.75, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    device00.pushErrorScope("validation");
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    device10.pushErrorScope("out-of-memory");
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    query100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture100.destroy();
    const array3 = new Float32Array([-0.5, 0.5, -0.25, -0.75, -0.75, -0.75, 0.25, -0.25, 0.75, -0.5, 0.0, 1.0, 0.25, 0.0, -0.25, 0.5, -1.0, -0.5, 0.25, 0.5, 0.75, 0.75, -0.75, 1.0, 0.0, 0.25, 0.25, -0.25, -0.25, -0.5, 1.0, -0.75, 0.5, 1.0, 0.75, 0.75, -1.0, -0.75, 0.0, -1.0, 0.0, -1.0, 0.5, 0.75, -0.75, 1.0, 0.75, 0.25, 1.0, 0.25, 0.5, 0.5, -0.75, 0.0, 0.5, -0.75, -0.5, -0.25, -0.25, 0.5, -1.0, -0.75, 0.5, -1.0, 0.25, 0.0, 0.5, 1.0, 1.0, -0.25, -0.5, 0.75, 0.0, -0.5, 1.0, 0.25, 1.0, 0.25, -1.0, -0.75, -0.75, -1.0, 0.25, 0.75, 0.25, -0.5, -0.25, 0.5, -1.0, 0.25, -0.25, -0.25, -0.25, 0.75, -0.5, -1.0, -0.75, 0.5, -1.0, 0.0, ]);
    
    
    
    query100.destroy()
    const array4 = new Float32Array([-0.5, -0.75, 0.25, -0.75, 0.5, 1.0, -0.25, 0.5, 0.5, 0.75, -0.25, 0.25, 0.5, 0.25, 0.0, -0.75, 0.75, -0.25, -1.0, 1.0, -0.5, 0.5, -0.25, 1.0, -0.25, 0.75, 1.0, -1.0, 0.0, 0.75, 1.0, 0.25, -0.5, 1.0, -1.0, 0.5, -0.5, -0.25, 1.0, -0.75, -0.75, -1.0, -0.5, -1.0, -0.25, 0.0, -1.0, -0.5, 1.0, 0.25, -1.0, 0.75, 0.25, 0.5, -1.0, 0.75, -0.5, 0.25, -0.75, -0.75, 0.5, 0.5, -0.5, 1.0, 0.25, 0.25, 0.0, -0.5, -0.25, 0.0, 1.0, -0.75, -0.5, 0.75, 1.0, -1.0, 0.0, 0.25, 0.0, 0.0, 0.5, -0.5, 1.0, 0.25, 0.25, 1.0, 0.0, 0.5, 1.0, 0.25, 0.5, 0.25, -0.75, -1.0, 0.25, 0.75, -0.75, 0.75, 0.5, -1.0, ]);
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query101.destroy()
    
    
    
    device20.destroy();
    buffer100.destroy()
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query102.destroy()
    query102.destroy()
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    device20.pushErrorScope("validation");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.pushErrorScope("internal");
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    query102.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const command_buffer102 = command_encoder102.finish();
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
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query102.destroy()
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array5 = new Float32Array([1.0, 0.25, 0.0, -0.75, -0.5, -1.0, -0.25, -0.5, -0.75, -1.0, 1.0, 0.75, -0.25, 0.5, 0.5, -1.0, -0.25, 0.5, -0.25, -1.0, 1.0, 1.0, -0.75, -1.0, -1.0, 0.25, -1.0, -0.75, -1.0, -0.75, -0.25, -1.0, -1.0, 0.75, -0.25, -0.75, -0.25, -0.25, 1.0, -1.0, 0.0, 0.25, 0.25, 0.25, 0.25, -1.0, 1.0, 1.0, -0.25, 0.25, 0.25, 0.25, 0.5, 0.75, 0.75, 1.0, -0.5, -1.0, 0.0, -1.0, 0.5, 0.5, -0.25, 1.0, -1.0, 1.0, 1.0, 0.75, -0.25, 0.5, 0.25, -0.25, -1.0, 0.5, -1.0, 0.75, 0.75, 1.0, 0.75, -0.5, -1.0, -0.25, -0.25, -0.5, -0.75, 0.0, -0.5, -1.0, 0.0, -1.0, -0.75, 0.0, 0.5, -0.25, 0.25, 0.25, -0.75, 0.25, -0.25, -1.0, ]);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
    
    const command_buffer300 = command_encoder300.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture103.destroy();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    compute_pass_encoder1001.popDebugGroup()
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer102.destroy()
    
    command_encoder103.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device50.destroy();
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
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
    query101.destroy()
    device40.pushErrorScope("validation");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture105 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("validation");
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder103.copyTextureToTexture(
        {
            texture: texture105
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    texture105.destroy();
    command_encoder101.copyTextureToTexture(
        {
            texture: texture106
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
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    command_encoder103.copyTextureToTexture(
        {
            texture: texture104
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query103 = device10.createQuerySet({
        label: "query103",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder100.popDebugGroup();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture106 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setPipeline(render_pipeline100);
    buffer301.destroy()
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    
    texture104.destroy();
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_pass_encoder1010.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture300.destroy();
    
    query100.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1001.setPipeline(compute_pipeline101);
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1010.setPipeline(render_pipeline101);
    buffer100.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder1030.popDebugGroup();
    query101.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    render_pass_encoder1010.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder1040.insertDebugMarker("marker");
    buffer103.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1010.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    
    
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: query103
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1031.executeBundles([])
    device10.queue.writeTexture({ texture: texture105 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1031.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query104.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    texture102.destroy();
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    
    render_pass_encoder1010.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    
    render_pass_encoder1010.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.submit([command_buffer102, ]);
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline106);
    render_pass_encoder1031.setStencilReference(1);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1031.setPipeline(render_pipeline100);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder1030.setStencilReference(1);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    texture401.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline101);
    compute_pass_encoder1010.insertDebugMarker("marker")
    query101.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder1031.setViewport(0, 0, texture105.width / 2, texture105.height / 2, 0, 1);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    texture402.destroy();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setPipeline(render_pipeline102);
    
    query101.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group100);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1030.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture106 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1040.setPipeline(render_pipeline101);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1040.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    texture400.destroy();
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.setViewport(0, 0, texture105.width / 2, texture105.height / 2, 0, 1);
    compute_pass_encoder1050.insertDebugMarker("marker")
    compute_pass_encoder1050.setPipeline(compute_pipeline101);
    buffer101.destroy()
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: query103
    });
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer101.destroy()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1031.setViewport(0, 0, texture105.width / 2, texture105.height / 2, 0, 1);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    render_pass_encoder1050.setStencilReference(1);
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1010.popDebugGroup();
    texture106.destroy();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query100.destroy()
    render_pass_encoder1050.setPipeline(render_pipeline102);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_pass_encoder1050.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    
    
    render_pass_encoder1041.setPipeline(render_pipeline103);
    render_pass_encoder1012.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    query105.destroy()
    render_pass_encoder1031.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1040.setBindGroup(0, bind_group102);
    render_pass_encoder1030.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query103.destroy()
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device40.destroy();
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder1041.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1012.setStencilReference(1);
    
    
    render_bundle_encoder102.setPipeline(render_pipeline103);
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    render_pass_encoder1012.endOcclusionQuery()
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
    device60.destroy();
    render_pass_encoder1000.setPipeline(render_pipeline102);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.pushDebugGroup("group_marker");
    compute_pass_encoder1050.insertDebugMarker("marker")
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    buffer201.destroy()
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder103.copyBufferToBuffer(
        buffer106,
        0,
        buffer1010,
        0,
        400
    );
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array6 = new Float32Array([1.0, -0.75, 1.0, 0.0, -0.25, 1.0, 1.0, 0.5, -0.75, -1.0, 0.5, -0.5, -0.5, 1.0, 0.5, -0.75, 0.25, 1.0, 1.0, -0.75, 1.0, 0.5, -0.5, 1.0, -0.25, 0.75, -0.5, -0.5, 0.75, 0.0, 0.5, 0.0, 0.0, 0.75, 0.25, 0.75, -0.5, 0.75, -0.25, 0.5, -1.0, 0.75, 0.75, 0.5, -1.0, 0.5, 0.25, 0.0, 0.0, -1.0, -0.75, -0.25, -0.5, -0.75, 0.5, 0.5, 0.75, 0.0, 0.75, -0.5, -0.25, -0.75, 0.25, 0.5, -1.0, 0.5, 1.0, 1.0, -0.5, 0.25, 0.25, -0.75, 0.5, -0.75, -0.25, 1.0, 1.0, 1.0, 1.0, -0.25, 1.0, 0.5, 0.25, 0.75, -0.5, 1.0, 1.0, -0.75, 0.25, 0.75, -1.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.0, -0.5, 0.5, -0.75, ]);
    render_pass_encoder1012.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group103);
    render_pass_encoder1012.setPipeline(render_pipeline100);
    
    buffer1010.destroy()
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
    compute_pass_encoder1000.popDebugGroup()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group104);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout108,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    render_pass_encoder1011.setViewport(0, 0, texture105.width / 2, texture105.height / 2, 0, 1);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    query103.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer108.destroy()
    command_encoder104.insertDebugMarker("mymarker");
    render_pass_encoder1011.popDebugGroup();
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    render_pass_encoder1011.setVertexBuffer(0, buffer108);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group105);
    render_pass_encoder1041.setVertexBuffer(0, buffer101);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1040.setVertexBuffer(0, buffer101);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group106);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group107);
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
    render_pass_encoder1050.setVertexBuffer(0, buffer105);
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
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
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group108);
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder1040.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1010.setVertexBuffer(0, buffer1014);
    render_pass_encoder1031.setVertexBuffer(0, buffer1017);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1050.popDebugGroup();
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
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
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder1011.end();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1041.draw(3);
    render_pass_encoder1031.end();
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    compute_pass_encoder1050.end();
    const command_buffer103 = command_encoder103.finish();
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
        layout: compute_pipeline106.getBindGroupLayout(0),
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
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.end();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group1012);
    render_pass_encoder1030.setVertexBuffer(0, buffer1025);
    compute_pass_encoder1001.end();
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.endOcclusionQuery()
    const command_buffer105 = command_encoder105.finish();
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer1022, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1028, 0);
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    render_pass_encoder1012.setBindGroup(0, bind_group1014);
    render_pass_encoder1012.setVertexBuffer(0, buffer1010);
    render_pass_encoder1041.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1012.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1012.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.end();
    compute_pass_encoder1010.end();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1012.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1050.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1011.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder1012.drawIndirect(buffer108, 0);
    render_pass_encoder1012.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1039, 0);
    compute_pass_encoder1050.end();
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder1050.popDebugGroup()
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1016);
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder1011.end();
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    render_pass_encoder1011.drawIndexed(3);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1042, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1031.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1012.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1012.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1035, "uint16");
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1011.setIndexBuffer(buffer1015, "uint16");
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1040.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1012.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder1001.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1010.end();
    render_pass_encoder1050.drawIndirect(buffer1011, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1042, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1050.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1050.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer104, ]);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1017);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    compute_pass_encoder1050.popDebugGroup()
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1017, 0);
    device60.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder1001.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndirect(buffer1039, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.end();
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
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1019);
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
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
    render_pass_encoder1012.end();
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1050.draw(3);
}