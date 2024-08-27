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
    const array0 = new Float32Array([-0.5, 1.0, -0.25, -0.5, 1.0, -0.25, -0.25, 1.0, -1.0, -0.75, 0.75, -0.5, -0.25, -0.75, -0.25, -0.5, 1.0, 0.25, 0.0, 0.25, -0.75, 0.25, 0.25, 0.5, -0.75, 1.0, 1.0, -1.0, -0.75, -0.25, 0.0, -0.75, -0.25, -0.5, -0.5, 0.25, 0.75, 0.0, -0.5, 1.0, 0.0, 0.5, -0.75, -1.0, -0.25, -0.75, -0.5, 0.5, -0.5, 0.75, -1.0, -0.25, -0.75, -0.25, 0.0, 0.25, -0.5, 0.5, 0.5, -0.75, -0.25, -1.0, 0.0, 0.25, 0.5, -0.5, -1.0, -0.25, -0.75, -0.75, -0.25, 0.0, -0.5, -0.5, 0.75, -0.5, -0.5, 1.0, -0.75, 0.25, 0.25, 0.0, 1.0, 0.0, 0.75, -1.0, 0.75, 0.5, 0.5, 0.75, -0.5, -1.0, 0.0, 0.75, 0.25, -0.75, 1.0, 0.5, 0.25, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer000.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-1.0, 0.25, -0.5, -1.0, 0.25, -1.0, 0.0, 0.0, -0.75, 0.75, 1.0, 0.75, -0.25, 0.75, 0.5, 0.75, 0.25, 0.0, 1.0, -0.5, 0.0, -0.5, 0.0, -0.75, -0.75, 0.75, -1.0, -1.0, 0.75, 0.5, -0.75, -0.75, 1.0, 0.0, -1.0, -0.25, -1.0, -0.75, 0.5, 0.0, 1.0, 0.75, -1.0, 0.25, -0.75, -0.25, -0.5, 0.0, 0.25, 1.0, 0.5, 1.0, 1.0, -1.0, 0.25, 0.5, 0.25, 0.5, -1.0, 0.75, 0.75, 0.25, 0.0, 0.0, -1.0, 0.25, -1.0, 0.0, -0.75, 0.5, -1.0, 1.0, 0.75, -0.75, 0.0, -0.75, -0.25, -1.0, 0.0, 0.75, 0.5, -0.75, -0.75, 1.0, -0.25, 0.25, -1.0, -0.5, -1.0, 0.25, 1.0, -0.5, -0.5, 0.75, 0.75, 1.0, -0.5, -0.75, -1.0, -0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array2 = new Float32Array([0.75, 1.0, 1.0, 0.75, 0.25, 0.75, 0.0, -0.25, -0.75, -0.5, 0.75, -0.5, 0.0, 0.0, 0.5, 0.5, -0.25, 1.0, -0.75, -0.5, -0.5, -0.5, -0.75, 0.5, -0.75, 0.5, 0.5, 0.5, 0.0, 0.25, 0.75, 0.5, -0.25, 0.75, 0.75, 1.0, 0.25, 0.25, -0.5, 0.5, 1.0, -0.75, 0.75, 1.0, -0.25, -0.5, -0.75, 1.0, -0.5, 0.25, -1.0, -0.5, 1.0, -0.75, 1.0, 0.5, 1.0, 1.0, -0.5, 0.0, 0.0, 1.0, -0.75, -0.5, -0.5, -0.5, -0.25, 1.0, 0.0, 0.25, -0.5, -0.75, -0.5, -0.25, 1.0, 1.0, -0.25, -0.75, -1.0, 1.0, -0.25, -1.0, 0.0, 1.0, -0.5, -1.0, -0.75, -0.25, -1.0, -0.75, 0.25, -0.5, -1.0, -0.5, 0.5, 1.0, -1.0, -0.5, 0.25, -1.0, ]);
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
    const array3 = new Float32Array([-0.5, 0.75, 0.25, 0.75, -0.5, 0.75, -1.0, -0.75, 0.0, -0.75, -0.5, -0.5, 0.25, 1.0, 1.0, 0.0, 1.0, -1.0, 0.75, 0.0, -0.75, 1.0, 0.75, 0.75, -0.75, -0.5, 0.5, 1.0, -1.0, 0.0, -0.5, 0.25, 0.25, -0.5, 0.75, 0.0, 0.5, 0.5, 0.25, 0.25, 0.5, 0.0, -0.25, -0.75, -0.5, -0.5, 0.5, -0.75, -0.25, -0.75, 0.0, -0.75, 0.0, 0.5, -0.5, 0.5, -0.75, 1.0, 0.75, -0.25, 0.75, -1.0, 0.5, -0.25, -0.25, 0.0, -0.25, -0.25, 0.5, -0.5, 0.0, 0.5, -1.0, 0.75, 0.5, 0.5, 0.25, -0.5, -1.0, 0.25, 0.5, 0.75, 0.0, 0.75, 0.75, -0.5, 1.0, -0.75, -0.5, 0.0, 1.0, -0.75, 0.5, -0.25, -1.0, 0.0, 1.0, -0.5, -0.5, 0.25, ]);
    device20.destroy();
    
    
    
    
    
    
    const array4 = new Float32Array([0.5, -0.25, -0.5, 0.0, 1.0, 1.0, 0.5, 0.5, 1.0, 0.25, -0.75, -0.25, -0.75, -1.0, 0.75, 0.0, -0.5, -0.25, 0.5, 0.75, -1.0, -0.5, 0.5, -0.75, 0.25, -0.75, 1.0, -1.0, 0.25, -0.75, 0.0, 0.0, 0.0, 0.0, 1.0, -1.0, 0.0, -1.0, 1.0, 0.0, -0.25, 1.0, 0.75, -0.75, 0.0, -1.0, 1.0, 0.0, -1.0, -0.75, 1.0, -1.0, 1.0, 1.0, -0.25, 0.0, -0.25, -0.75, -0.75, -1.0, -1.0, -0.75, -0.75, -0.5, -1.0, -1.0, 0.0, -0.75, -0.5, -0.75, 0.75, 0.75, 0.5, 0.75, 1.0, 0.0, -1.0, -0.75, 1.0, -0.5, -1.0, 0.25, 0.25, -0.25, -1.0, -0.25, 0.5, -0.5, -0.25, 0.5, 1.0, 1.0, 0.25, 0.75, 0.75, 0.75, -0.5, -0.75, -1.0, -0.75, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.pushErrorScope("out-of-memory");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query000.destroy()
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.pushErrorScope("internal");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    texture400.destroy();
    
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device40.pushErrorScope("out-of-memory");
    buffer101.destroy()
    device30.queue.submit([]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    
    
    const command_buffer301 = command_encoder301.finish();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder1000.popDebugGroup()
    
    const command_buffer300 = command_encoder300.finish();
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
    
    device10.queue.submit([command_buffer101, ]);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
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
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    texture401.destroy();
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
    
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: query401
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_buffer104 = command_encoder104.finish();
    const command_buffer401 = command_encoder401.finish();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device30.queue.submit([command_buffer300, ]);
    
    const command_buffer100 = command_encoder100.finish();
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_pass_encoder4000.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_pass_encoder4000.setStencilReference(1);
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    command_encoder103.popDebugGroup()
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder4001.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder4001.insertDebugMarker("marker");
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: query401
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_bundle_encoder400.setPipeline(render_pipeline400);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder300.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device30.pushErrorScope("out-of-memory");
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder4001.setStencilReference(1);
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4001.setStencilReference(1);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder403.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_pass_encoder4020.beginOcclusionQuery(0)
    render_pass_encoder4020.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder4001.setStencilReference(1);
    render_pass_encoder4000.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    
    command_encoder403.popDebugGroup()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    
    render_pass_encoder4001.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder4000.executeBundles([])
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
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
    texture100.destroy();
    render_pass_encoder4000.beginOcclusionQuery(0)
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_bundle_encoder400.popDebugGroup();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const command_buffer302 = command_encoder302.finish();
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const array5 = new Float32Array([0.25, -0.5, 0.0, -0.75, 0.5, -0.75, 0.75, -0.25, 0.0, 0.0, 0.0, 0.75, 0.75, -0.25, 0.25, 0.75, 1.0, 0.0, 0.0, -0.25, -0.5, -0.25, -1.0, -1.0, -0.25, -0.75, 1.0, -1.0, 0.0, -1.0, 0.25, -0.25, -1.0, -0.25, 1.0, -0.5, 0.5, 0.25, 0.25, 0.25, -0.25, 0.75, 1.0, -0.75, -0.5, 1.0, -1.0, 0.5, 1.0, 1.0, 0.0, -1.0, -0.25, -1.0, 0.0, 0.75, -0.75, -0.75, -1.0, -0.25, -0.25, 0.5, 0.75, 0.5, 0.0, -0.75, 0.25, -0.75, 1.0, -1.0, 0.0, -0.25, 1.0, 0.0, 0.75, -0.75, 0.0, 0.0, -0.5, -1.0, 0.0, -0.25, -0.5, 0.5, -0.5, 1.0, -0.5, 0.0, 0.75, 0.5, 0.5, -0.75, -1.0, -0.75, 0.5, -0.25, -0.75, -0.75, 0.0, 0.0, ]);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    render_pass_encoder4000.insertDebugMarker("marker");
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_pass_encoder4020.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder4000.setStencilReference(1);
    
    command_encoder105.insertDebugMarker("mymarker");
    
    const render_pass_encoder4002 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4022,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder4002.executeBundles([render_bundle_encoder400, ])
    texture402.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer104, ]);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
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
    
    query402.destroy()
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_pass_encoder4002.setBindGroup(0, bind_group400);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array6 = new Float32Array([0.5, 0.5, 0.25, -0.75, 0.25, 0.75, 0.0, 1.0, 0.75, -1.0, -0.75, 1.0, -0.25, 0.0, 0.25, -0.75, -0.75, 0.25, -0.75, -1.0, 0.75, 0.75, 0.0, -0.75, 0.75, 0.25, -0.75, -1.0, -0.5, 1.0, -1.0, -1.0, -0.5, -1.0, -0.25, 1.0, 0.75, -0.75, 0.0, -0.25, 1.0, -0.75, 0.75, 1.0, 0.5, 0.25, -0.25, -0.75, -0.75, 1.0, -0.75, 0.5, -0.75, 0.75, 0.25, 1.0, -0.75, 0.75, -0.75, -0.75, 0.75, -1.0, 1.0, -0.75, 0.0, -1.0, -1.0, -1.0, -1.0, 1.0, 0.25, 1.0, -1.0, 0.5, 0.5, 0.75, -1.0, 0.75, 0.25, -0.5, 0.25, 0.75, -0.5, -0.25, -0.5, -0.25, -0.25, -0.5, -0.75, -1.0, 0.0, 0.0, -0.5, -0.75, 1.0, 0.5, 0.5, 1.0, -0.25, 0.75, ]);
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
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    render_pass_encoder4000.executeBundles([render_bundle_encoder400, ])
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    buffer300.destroy()
    
    
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
    
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group401);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    texture000.destroy();
    buffer102.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    render_pass_encoder4001.insertDebugMarker("marker");
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder4001.pushDebugGroup("group_marker");
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder4001.executeBundles([])
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    command_encoder303.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer106.destroy()
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder300.popDebugGroup();
    
    const command_buffer304 = command_encoder304.finish();
    command_encoder106.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    buffer106.destroy()
    render_pass_encoder4020.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    
    buffer300.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_bundle_encoder100.drawIndirect(buffer106, 0);
    render_bundle_encoder301.popDebugGroup();
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    compute_pass_encoder1020.popDebugGroup()
    
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder4001.setPipeline(render_pipeline401);
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    render_pass_encoder4000.setVertexBuffer(0, buffer403);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder4020.popDebugGroup();
    
    const command_buffer105 = command_encoder105.finish();
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    command_encoder303.copyBufferToBuffer(
        buffer301,
        0,
        buffer300,
        0,
        400
    );
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: query402
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4001.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    query402.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    query402.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    render_bundle_encoder402.setPipeline(render_pipeline401);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.popDebugGroup();
    query301.destroy()
    command_encoder303.pushDebugGroup("mygroupmarker")
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.resolveQuerySet(
        query402,
        0,
        32,
        buffer401,
        0
    )
    render_pass_encoder4040.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.setPipeline(render_pipeline301);
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer402.destroy()
    
    
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
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    render_pass_encoder4040.setPipeline(render_pipeline401);
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    compute_pass_encoder3030.setPipeline(compute_pipeline303);
    
    buffer404.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder4020.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    query400.destroy()
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    query400.destroy()
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query300.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    render_bundle_encoder000.popDebugGroup();
    device40.destroy();
    
    render_bundle_encoder101.popDebugGroup();
    
    compute_pass_encoder1060.insertDebugMarker("marker")
    buffer103.destroy()
    compute_pass_encoder1050.insertDebugMarker("marker")
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    buffer105.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1060.insertDebugMarker("marker")
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    compute_pass_encoder1060.insertDebugMarker("marker")
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    command_encoder305.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder4040.pushDebugGroup("group_marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query302.destroy()
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1050.popDebugGroup()
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    query301.destroy()
    render_pass_encoder4020.setPipeline(render_pipeline403);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3050.setPipeline(compute_pipeline3014);
    compute_pass_encoder1030.popDebugGroup()
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group301);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer306, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline3014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group302);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1030.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    device50.queue.submit([]);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    compute_pass_encoder3030.end();
    command_encoder303.popDebugGroup()
    compute_pass_encoder3050.end();
    const command_buffer303 = command_encoder303.finish();
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1020.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    device10.queue.submit([command_buffer104, ]);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline3014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group303);
    device50.queue.submit([]);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3050.end();
    command_encoder106.popDebugGroup()
    device50.queue.submit([]);
    compute_pass_encoder3030.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1060.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer104, ]);
    command_encoder305.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    const command_buffer305 = command_encoder305.finish();
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder3030.end();
    device10.queue.submit([command_buffer102, ]);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3011, 0);
    render_pass_encoder4002.popDebugGroup();
    compute_pass_encoder3050.popDebugGroup()
    device30.queue.submit([command_buffer303, command_buffer305, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4001.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    device30.queue.submit([command_buffer305, ]);
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder4002.setVertexBuffer(0, buffer400);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3012, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3012, 0);
    device30.queue.submit([command_buffer304, ]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder3050.end();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder3050.end();
    compute_pass_encoder1000.popDebugGroup()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group402);
    device10.queue.submit([]);
    device50.queue.submit([]);
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder3030.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder1060.popDebugGroup()
    device50.queue.submit([]);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group403);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group304);
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4040.setVertexBuffer(0, buffer408);
    const command_buffer402 = command_encoder402.finish();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3050.end();
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    device30.queue.submit([command_buffer305, ]);
    device50.queue.submit([]);
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3015, 0);
    compute_pass_encoder1060.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group305);
    compute_pass_encoder1060.popDebugGroup()
    compute_pass_encoder3050.end();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer103, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3018, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3018, 0);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, ]);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder4040.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline3014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group306);
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline3014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group307);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1030.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    device30.queue.submit([command_buffer305, ]);
    device10.queue.submit([]);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3023, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3023, 0);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
}