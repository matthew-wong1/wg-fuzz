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
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    device00.destroy();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.pushErrorScope("out-of-memory");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device20.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.insertDebugMarker("mymarker");
    query300.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query300.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer301.destroy()
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_buffer302 = command_encoder302.finish();
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    query300.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    query300.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    query300.destroy()
    const array0 = new Float32Array([-0.25, 0.0, -0.75, 0.5, -1.0, 1.0, -0.25, 1.0, 1.0, -0.75, 0.75, -1.0, 0.75, 0.5, -0.75, 0.0, -0.5, -0.75, 0.25, 0.5, 0.75, -0.25, 1.0, 1.0, -1.0, 0.25, -0.5, -0.25, 1.0, 0.25, 0.75, 0.0, -0.75, 0.25, -0.75, 0.75, -0.25, 0.5, 0.5, 0.5, 0.5, -0.25, -0.5, 0.75, 0.5, 0.75, 1.0, -0.25, -0.75, 1.0, 0.25, -1.0, -0.5, 0.0, 0.0, 0.5, 0.25, -0.5, 0.5, 0.5, 0.25, 1.0, 1.0, 1.0, -1.0, 0.0, -1.0, 0.5, 0.75, -0.75, -1.0, 0.75, 1.0, 1.0, 1.0, -0.75, 1.0, -1.0, -0.75, 0.25, 0.75, -0.5, 0.5, 0.5, -1.0, -1.0, 0.75, 0.0, -1.0, 0.5, 0.25, 0.0, 1.0, -1.0, 0.5, -1.0, -0.5, 0.0, -0.5, 0.25, ]);
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_buffer303 = command_encoder303.finish();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    
    const array1 = new Float32Array([-0.25, -0.25, 0.75, -0.5, 0.25, -0.5, -0.5, 0.75, -0.25, -0.25, -0.75, 0.0, 0.0, -0.5, -0.25, -0.25, 0.75, -1.0, 1.0, 0.25, -0.25, -0.5, 0.25, -0.75, 0.5, 0.25, 0.0, -0.75, 0.5, 0.5, -0.75, 1.0, 0.0, -0.5, 0.75, -0.25, 1.0, 0.0, 1.0, -1.0, 0.0, -0.5, 0.75, 0.25, -0.5, 0.75, 0.75, -0.75, -0.75, -0.25, 0.75, -1.0, 0.0, 0.25, 0.25, 1.0, 0.5, 0.5, 0.5, 1.0, -1.0, -0.25, 1.0, 0.5, 1.0, -1.0, -1.0, 0.0, 1.0, 0.0, 0.75, 0.5, 0.5, -0.25, 0.25, 1.0, -0.5, 0.5, 0.75, -0.75, -1.0, -0.75, -0.25, 0.5, 0.25, 0.75, 0.75, 0.5, -1.0, 1.0, 0.25, 0.5, 0.75, -0.75, 0.75, 0.0, -1.0, -0.5, 1.0, 0.75, ]);
    device30.pushErrorScope("validation");
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
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
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
    
    
    
    
    command_encoder301.popDebugGroup()
    device00.pushErrorScope("internal");
    
    
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    texture300.destroy();
    
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    command_encoder300.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.setPipeline(render_pipeline303);
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder301.insertDebugMarker("mymarker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder301.resolveQuerySet(
        query303,
        0,
        32,
        buffer301,
        0
    )
    const array2 = new Float32Array([-0.5, 0.75, -0.5, -0.75, 0.25, 0.25, -0.5, 1.0, 0.0, -0.5, -0.75, -1.0, 0.5, 0.75, 0.75, -0.75, 0.75, 0.25, -0.75, 0.25, 1.0, -0.75, -0.25, 0.0, -1.0, 1.0, 0.25, 0.25, 0.0, -1.0, 1.0, 0.25, -0.25, 0.25, 0.0, -0.5, -0.5, 0.25, -1.0, -0.5, -0.5, -0.5, -0.5, 0.25, -0.5, 0.25, 0.75, -0.25, -0.25, 0.25, -1.0, -0.25, -0.5, -0.25, -0.25, -0.25, -0.75, -0.75, -0.5, 0.0, 0.25, 0.5, -1.0, 0.75, 0.0, 0.75, -0.75, 0.25, -1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 0.0, 1.0, 0.0, 0.5, -0.75, -0.5, -0.75, -0.25, 0.5, 0.75, 0.25, -0.25, -0.75, 0.0, -0.25, -0.75, 0.0, 0.0, -0.5, -0.5, 0.75, -0.25, 0.5, -0.75, 0.0, 0.5, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.25, 0.25, -0.25, -0.5, -0.5, -1.0, -0.75, -0.75, -0.75, 1.0, -1.0, -0.25, 0.75, 0.5, -1.0, 0.25, 1.0, 0.25, -0.75, 0.75, 0.0, 0.0, 1.0, 0.5, 0.75, 0.75, 0.25, -0.5, -0.25, 0.5, -0.5, 0.75, 1.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.0, -0.75, 1.0, -0.25, -0.5, 0.75, -1.0, 1.0, 0.5, 0.0, 0.0, 1.0, 0.25, 0.25, -0.5, 1.0, 0.25, 1.0, -0.5, -1.0, 0.0, -0.75, -0.5, -0.5, -1.0, 0.75, -0.75, 0.75, -1.0, 1.0, -0.25, -0.75, -0.25, -0.25, 0.0, 1.0, -0.25, -0.5, 0.75, -0.5, 0.5, -0.75, 0.25, 0.5, 0.0, -1.0, 0.0, -0.75, 0.75, -0.25, -1.0, -0.5, 0.5, 0.5, -0.75, 0.5, 0.0, -0.75, -1.0, -0.5, 0.0, -0.75, ]);
    device40.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    command_encoder601.insertDebugMarker("mymarker");
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder600.insertDebugMarker("mymarker");
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder601.insertDebugMarker("mymarker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder301.insertDebugMarker("mymarker");
    
    command_encoder301.popDebugGroup()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-1.0, -0.75, 0.25, -0.5, 0.0, 0.0, 0.5, 0.75, 0.5, -0.75, 1.0, -0.25, -0.25, 0.25, 0.0, 0.75, 0.5, -0.75, -0.5, -0.75, -0.25, -0.25, 0.5, -0.5, 0.0, -0.25, -1.0, -0.75, 1.0, 0.0, 0.75, 1.0, 0.25, 0.5, 1.0, -0.75, 0.0, 0.5, 1.0, -1.0, 1.0, -0.5, 0.75, -1.0, 0.25, 0.0, 0.5, -1.0, 0.75, 1.0, 1.0, 0.25, 0.75, -0.25, 1.0, 0.75, -0.25, -0.25, 0.25, -0.5, -0.25, 0.5, -0.75, -0.25, 0.25, 1.0, -0.5, 0.0, 0.0, 0.75, 0.75, 0.75, 0.75, -0.75, -1.0, 1.0, 0.25, 0.25, 0.0, 0.25, 0.75, 0.75, -0.5, -1.0, -1.0, 0.5, 0.25, -1.0, -0.25, 0.5, 1.0, 0.25, 1.0, 0.25, -0.25, 1.0, -1.0, 0.5, -0.5, -1.0, ]);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    command_encoder600.popDebugGroup()
    command_encoder601.insertDebugMarker("mymarker");
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    query300.destroy()
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
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
    const array5 = new Float32Array([0.0, -0.75, -0.75, -0.75, -1.0, -0.75, -0.25, 1.0, 0.5, -0.25, 0.0, 0.25, 1.0, 1.0, 0.25, -0.25, 0.0, -1.0, 0.75, 0.75, -1.0, 0.5, 0.75, 0.75, 0.0, -0.75, 1.0, 0.75, -1.0, -0.75, 0.0, -0.5, 0.0, 0.25, 0.25, 0.5, 0.5, 0.5, -0.25, -0.75, 0.25, -0.75, 1.0, 1.0, 0.0, -0.5, -1.0, 0.5, 0.5, -0.75, 0.25, 1.0, 1.0, -0.25, -0.25, 0.25, -0.5, -0.25, 1.0, -0.25, -1.0, 0.5, 0.25, -0.5, 0.25, 0.25, -0.5, 0.0, -0.25, -0.25, 0.75, 0.75, 1.0, -0.25, 0.0, 0.25, 1.0, -0.25, 0.0, -0.25, 0.5, 1.0, 1.0, -0.5, 1.0, -0.75, -0.25, 0.0, -0.75, -0.75, -0.5, 0.5, 0.0, -0.75, 0.25, -1.0, 1.0, -0.5, 0.0, -0.5, ]);
    query101.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    command_encoder602.insertDebugMarker("mymarker");
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
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
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    device70.pushErrorScope("internal");
    device80.pushErrorScope("out-of-memory");
    const command_buffer602 = command_encoder602.finish();
    
    
    device50.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    device60.queue.submit([command_buffer602, ]);
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    command_encoder603.pushDebugGroup("mygroupmarker")
    
    {
        await buffer700.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer700.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer700.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    command_encoder603.insertDebugMarker("mymarker");
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    texture301.destroy();
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    
    
    compute_pass_encoder6030.insertDebugMarker("marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder6010.insertDebugMarker("marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    buffer600.destroy()
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const array6 = new Float32Array([0.75, 0.75, 0.0, -0.25, 0.75, -0.5, -1.0, -0.5, 0.0, 0.0, 1.0, 0.5, 0.75, 0.5, 0.75, 0.25, 0.0, 0.75, -0.75, 0.25, -0.25, 0.5, 0.5, 0.75, 0.75, 1.0, 0.0, -0.75, 1.0, -0.25, 0.25, 1.0, 0.0, 1.0, 0.5, -0.5, -1.0, 0.0, -1.0, -1.0, -1.0, 0.25, 0.5, -0.25, -0.5, 0.25, 0.75, 0.5, -0.75, -0.75, 0.25, 0.5, -0.5, -0.5, 0.5, -1.0, 0.25, 0.0, -0.25, -0.5, -0.75, 0.0, 0.5, 0.75, 0.75, -0.75, -0.5, -0.25, 0.0, -1.0, -1.0, 0.75, 0.5, -0.5, 1.0, 0.0, -0.75, 0.75, 0.5, 0.0, 0.25, -0.5, -0.25, 0.75, -1.0, -0.75, -1.0, 0.0, -0.5, 0.75, 1.0, 0.25, -1.0, 0.0, 0.5, -0.25, -0.75, 0.5, 0.75, -1.0, ]);
    
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
    {
        await buffer700.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer700.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer700.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder6030.insertDebugMarker("marker")
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_bundle_encoder600.setVertexBuffer(0, buffer600);
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    render_bundle_encoder600.draw(3);
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    buffer800.destroy()
    compute_pass_encoder6030.insertDebugMarker("marker")
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    compute_pass_encoder6000.insertDebugMarker("marker")
    device60.pushErrorScope("validation");
    
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    render_bundle_encoder601.setPipeline(render_pipeline602);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    render_bundle_encoder601.popDebugGroup();
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    buffer801.destroy()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    texture800.destroy();
    
    query703.destroy()
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    
    compute_pass_encoder6010.popDebugGroup()
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer602, 0, array6, 0, array6.length);
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group601);
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder700.clearBuffer(buffer700);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    device60.queue.writeBuffer(buffer605, 0, array0, 0, array0.length);
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    query701.destroy()
    const array7 = new Float32Array([0.25, 0.5, 0.25, 1.0, 0.25, 0.25, -1.0, -0.25, 0.75, -1.0, 0.0, 0.25, -1.0, -0.5, 1.0, 0.25, 0.25, 0.75, 0.5, -0.25, 0.75, -0.5, 1.0, 0.0, 1.0, -1.0, 0.25, -0.5, -1.0, 0.5, -1.0, -1.0, 0.75, -0.75, 0.25, -0.5, 0.75, 0.5, 0.0, 0.25, 0.5, -0.5, -1.0, -0.75, -0.5, -0.25, -0.25, 0.0, -0.5, 0.0, 0.0, 1.0, 0.0, -1.0, -0.5, 0.25, -1.0, -0.75, -1.0, -0.75, -0.5, -0.5, 0.25, 1.0, -0.5, 0.0, 0.75, 1.0, -0.25, 0.5, 0.25, -1.0, 0.5, 0.5, 0.25, -1.0, 0.25, 1.0, -0.25, 1.0, 0.5, -1.0, 0.0, 0.5, 1.0, -1.0, 0.75, -1.0, 0.5, 0.75, -0.5, 0.25, 0.75, 0.25, 0.75, 0.25, -1.0, 0.0, 0.5, -0.5, ]);
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    
    buffer605.destroy()
    
    
    
    
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array8 = new Float32Array([0.75, 0.25, -0.25, 0.25, 0.75, -0.25, -1.0, -0.5, 0.0, -0.25, 0.5, 1.0, -0.5, -0.5, 0.0, -0.75, 0.75, -0.25, -0.25, 0.25, 0.0, -0.25, -0.75, -0.25, 0.75, 0.5, 0.75, 0.75, -0.25, 0.0, 0.5, -0.75, 0.5, 0.25, -1.0, -1.0, 0.0, 0.25, 1.0, 0.25, -0.75, -0.75, -0.5, 1.0, 0.0, 1.0, -1.0, 0.75, -0.75, -1.0, 0.75, -0.5, -1.0, 0.5, 1.0, 0.5, -0.5, -0.25, 0.0, 0.25, -0.75, -0.75, 0.25, 1.0, -0.75, 1.0, 0.75, 0.0, 1.0, -1.0, -0.5, 1.0, 0.75, 0.0, 0.75, -0.75, 0.5, -0.75, 0.75, 0.25, 0.25, 1.0, 0.75, 0.75, 0.75, -0.5, 0.0, -0.25, 0.25, -0.25, 0.75, 0.25, -0.75, 0.0, -0.5, -0.5, 1.0, 0.0, -0.25, 1.0, ]);
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    
    device60.queue.writeBuffer(buffer604, 0, array2, 0, array2.length);
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    const array9 = new Float32Array([0.75, -0.25, 1.0, 0.25, 0.0, 0.25, 0.5, -0.25, 1.0, 0.75, 0.75, 1.0, -0.5, -1.0, 1.0, 0.0, 0.0, -0.25, -1.0, 0.75, -1.0, 1.0, -1.0, 0.5, 0.25, -1.0, 0.0, 1.0, -0.25, -0.75, -0.75, -1.0, 1.0, -0.25, 0.75, -1.0, -0.75, 0.0, -0.25, 0.0, -0.75, 1.0, -0.25, 0.25, -0.5, -0.5, 0.5, -0.75, 0.0, 0.5, 0.5, 0.0, 0.5, 0.5, 0.25, 1.0, 0.0, 0.0, -1.0, -1.0, 0.5, -0.75, 0.5, 0.5, -0.25, -1.0, -0.25, 1.0, -0.5, -1.0, 0.5, 0.25, 1.0, -0.75, 0.5, 0.75, 0.25, -0.75, -0.5, 0.25, 0.5, 0.0, -0.25, 1.0, -0.75, 0.25, 1.0, 0.5, -0.75, -0.5, 0.75, 1.0, 1.0, 0.25, 0.5, 0.25, 0.5, 0.25, 0.0, 0.5, ]);
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder601.setVertexBuffer(0, buffer600);
    
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.popDebugGroup();
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
        await buffer603.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer603.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer603.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture802.destroy();
    render_bundle_encoder601.insertDebugMarker("marker");
    command_encoder604.insertDebugMarker("mymarker");
    
    
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    
    render_bundle_encoder800.popDebugGroup();
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    {
        await buffer604.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer604.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer604.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder602.setPipeline(render_pipeline600);
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
    command_encoder700.clearBuffer(buffer700);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder604.copyTextureToBuffer(
        {
            texture: texture601
        },
        {
            buffer: buffer604
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const array10 = new Float32Array([0.75, 0.25, 1.0, 0.25, 0.25, -0.75, 0.0, -0.5, -0.25, 0.5, 1.0, -0.75, 0.0, 0.25, 0.25, -1.0, 0.25, -0.5, 1.0, -0.75, -0.25, -0.75, 0.0, -0.75, -0.5, -0.75, 0.0, 1.0, 0.75, 0.5, -0.75, 0.75, 0.75, 0.0, 0.0, -0.25, 1.0, -0.75, -1.0, 0.0, 0.25, 0.25, 0.5, -0.5, 0.5, -1.0, -0.75, 0.0, 0.75, 0.5, -0.25, -0.25, -0.5, 0.0, 0.0, 0.5, -0.75, 0.0, 0.5, 1.0, 1.0, 0.5, 1.0, -1.0, 0.0, -0.5, 0.75, -0.25, 1.0, -0.5, 0.0, -0.5, 0.25, -1.0, 0.5, 0.25, 0.75, 0.5, -0.75, -0.75, -0.25, -0.75, -0.75, 1.0, 0.0, -0.5, -1.0, -0.25, -0.75, -0.5, -0.5, 0.25, -1.0, -1.0, -0.75, -0.5, -0.5, 0.75, 1.0, -0.75, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    
    render_pass_encoder6030.setPipeline(render_pipeline600);
    const render_pass_encoder6040 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder6040.pushDebugGroup("group_marker");
    const command_buffer701 = command_encoder701.finish();
    buffer601.destroy()
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder801.setPipeline(render_pipeline800);
    texture801.destroy();
    render_pass_encoder6040.setPipeline(render_pipeline603);
    command_encoder604.copyTextureToTexture(
        {
            texture: texture601
        },
        {
            texture: texture600
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    render_bundle_encoder601.drawIndirect(buffer603, 0);
    
    render_pass_encoder6030.pushDebugGroup("group_marker");
    render_pass_encoder6030.insertDebugMarker("marker");
    buffer600.destroy()
    const render_pass_encoder6031 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeBuffer(buffer802, 0, array1, 0, array1.length);
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    device60.queue.writeBuffer(buffer603, 0, array6, 0, array6.length);
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    render_pass_encoder6031.setPipeline(render_pipeline600);
    compute_pass_encoder6030.setPipeline(compute_pipeline602);
    compute_pass_encoder6000.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group602);
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group603);
    compute_pass_encoder6010.setPipeline(compute_pipeline602);
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group604);
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    render_pass_encoder6040.setBindGroup(0, bind_group605);
    compute_pass_encoder6030.popDebugGroup()
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    render_pass_encoder6031.setBindGroup(0, bind_group606);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    render_pass_encoder6030.popDebugGroup();
    compute_pass_encoder6030.end();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder6031.setVertexBuffer(0, buffer608);
    render_pass_encoder6031.draw(3);
    const command_buffer700 = command_encoder700.finish();
    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6018,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group607);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder6031.end();
    render_pass_encoder6030.setVertexBuffer(0, buffer6012);
    render_pass_encoder6040.popDebugGroup();
    const command_buffer604 = command_encoder604.finish();
    render_pass_encoder6030.setIndexBuffer(buffer607, "uint16");
    render_pass_encoder6030.setIndexBuffer(buffer606, "uint16");
    render_pass_encoder6030.drawIndirect(buffer6014, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder6030.end();
    command_encoder603.popDebugGroup()
    device60.queue.submit([command_buffer604, ]);
    compute_pass_encoder6000.end();
    command_encoder600.popDebugGroup()
    render_pass_encoder6040.setVertexBuffer(0, buffer6017);
    render_pass_encoder6040.draw(3);
    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6020,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group608);
    render_pass_encoder6040.end();
    const command_buffer603 = command_encoder603.finish();
    const command_buffer600 = command_encoder600.finish();
    device70.queue.submit([]);
    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6022,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group609);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder6040.end();
    compute_pass_encoder6000.end();
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder6030.drawIndexedIndirect(buffer6019, 0);
    render_pass_encoder6031.setIndexBuffer(buffer6010, "uint16");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    device70.queue.submit([]);
    render_pass_encoder6031.drawIndexedIndirect(buffer6021, 0);
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder6010.end();
    const command_buffer601 = command_encoder601.finish();
    device70.queue.submit([command_buffer700, ]);
    const command_buffer400 = command_encoder400.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
    device60.queue.submit([command_buffer601, command_buffer603, ]);
    render_pass_encoder6030.end();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6040.setIndexBuffer(buffer6018, "uint16");
    compute_pass_encoder6010.dispatchWorkgroups(100);
    compute_pass_encoder6030.end();
    render_pass_encoder6040.draw(3);
    compute_pass_encoder6000.end();
    render_pass_encoder6040.popDebugGroup();
    render_pass_encoder6040.popDebugGroup();
    render_pass_encoder6040.drawIndexedIndirect(buffer601, 0);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder6040.drawIndexedIndirect(buffer6012, 0);
    render_pass_encoder6040.popDebugGroup();
    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6010 = device60.createBindGroup({
        label: "bind_group6010",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6024,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6010);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6031.setIndexBuffer(buffer606, "uint16");
    render_pass_encoder6031.drawIndirect(buffer609, 0);
}