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
    const array0 = new Float32Array([0.75, -0.25, 0.0, 0.25, 0.75, -0.75, -0.25, 0.25, -0.25, 0.25, 0.0, -1.0, 0.75, -0.75, -0.25, -0.75, 0.75, -0.25, 0.0, -1.0, 0.75, -0.25, 0.75, 0.25, 0.5, -0.75, -0.75, -0.5, -0.75, 0.25, 0.25, -0.25, -0.75, 0.25, 0.0, 0.5, -0.25, -0.25, 1.0, -1.0, -1.0, 0.75, 0.5, -0.5, 0.0, -0.75, 0.0, -0.25, -1.0, -1.0, -0.75, -0.5, 0.0, 0.5, -0.25, 0.25, -0.5, 0.0, 0.0, -0.75, -0.75, 1.0, -1.0, -0.75, -0.25, 1.0, 0.0, 0.25, -0.75, -0.25, 0.25, -0.75, 0.0, 0.75, 0.0, 0.25, 0.5, -0.75, 0.25, -0.75, -0.75, 0.25, 1.0, -0.5, 0.0, -0.5, 0.75, -0.5, 0.25, -0.75, 1.0, 0.5, 0.75, 1.0, 0.75, -0.5, -0.5, 0.5, 0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.25, 0.75, -0.5, -0.25, -0.5, -0.5, 0.0, 0.0, -1.0, 0.5, -0.25, -0.5, 0.5, 0.75, -1.0, 1.0, 1.0, 1.0, 0.75, 0.0, -0.75, -0.25, -1.0, 0.75, 0.5, 0.0, 0.5, 0.0, -1.0, -0.5, 0.25, -0.25, 0.5, 0.25, 0.75, -0.75, 1.0, 0.0, 1.0, -0.75, -0.25, -0.25, -0.75, -0.25, 0.0, -0.25, -0.5, 0.5, 1.0, -0.5, 0.25, 1.0, 0.75, 0.25, 0.5, 1.0, -1.0, 0.5, 0.75, 0.25, -0.75, -0.5, 0.5, 0.75, -1.0, -0.25, -0.75, 0.25, -1.0, 1.0, 0.75, -0.75, 1.0, 0.0, 0.5, -0.75, -0.25, -0.5, 0.25, 0.0, -0.75, 0.5, 0.5, 1.0, -0.25, -0.5, -0.5, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, -0.25, -0.75, 1.0, -0.75, 0.5, 0.25, 0.25, ]);
    const array2 = new Float32Array([-0.75, 0.75, 0.5, -0.5, 0.75, -1.0, -1.0, 0.25, 0.75, 0.5, 0.25, -0.75, -0.25, 0.25, 0.5, 0.75, 0.25, 0.75, -0.5, -0.75, 0.75, -0.5, -0.25, -0.75, -0.25, 0.75, 0.75, 1.0, -0.75, 0.0, -0.5, -1.0, 1.0, 0.75, -0.5, 1.0, -1.0, 1.0, 0.0, -0.25, -0.25, 0.25, 0.75, 0.5, 0.0, -0.5, 0.25, -1.0, 0.5, 0.25, 0.5, 0.75, 0.5, 0.5, 0.75, -0.25, -0.75, 0.0, 1.0, 1.0, -0.75, 1.0, -1.0, -0.75, 0.5, 0.75, 1.0, 0.5, 0.75, -1.0, -0.5, 0.75, -0.25, 1.0, -0.25, -0.25, 0.25, 0.75, 0.75, 0.75, 0.5, -0.75, -1.0, -0.75, 0.25, -0.5, 0.25, -0.75, 0.75, -0.25, -0.75, -0.75, -0.25, -1.0, 1.0, -0.75, 0.5, -0.75, 0.75, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array3 = new Float32Array([0.75, 0.0, -0.25, -0.75, -0.25, 1.0, 1.0, 0.25, 0.0, -0.75, -1.0, 0.5, 0.5, 1.0, -0.75, 0.0, 0.0, -0.25, 0.0, 0.0, 0.5, -0.5, -0.25, 0.25, -0.25, -0.75, 0.75, -0.25, 1.0, -1.0, -0.25, -0.25, 0.25, 0.5, -1.0, 0.25, -1.0, -0.75, -0.5, -1.0, 0.0, -0.75, 0.5, -1.0, 0.75, -1.0, 1.0, 0.5, 0.0, -1.0, 0.5, 0.25, -0.5, 0.5, 0.25, 0.5, 0.75, 0.0, 0.25, 0.0, -1.0, -0.25, -0.75, 0.5, 0.75, 0.5, -0.5, 0.75, 1.0, -0.75, -0.75, 1.0, -0.75, -0.75, -0.5, -0.75, 0.75, -0.75, -0.75, 0.75, -0.75, 0.0, 0.5, -0.75, -0.5, 0.75, -0.25, 0.5, -0.5, -0.25, 1.0, -0.25, 0.75, -0.5, -1.0, -0.25, -0.75, 0.5, 0.25, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_buffer300 = command_encoder300.finish();
    device00.destroy();
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device30.pushErrorScope("validation");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer300.destroy()
    
    
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer301 = command_encoder301.finish();
    buffer000.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    
    
    device00.destroy();
    
    
    query000.destroy()
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const array4 = new Float32Array([-0.75, 0.0, 0.25, 0.5, 0.75, -0.75, 1.0, -0.5, -0.5, 1.0, 0.75, -1.0, 0.5, 0.75, 0.25, -1.0, 0.5, -0.5, -0.25, -0.75, 0.25, -0.75, 1.0, -1.0, 0.25, 0.25, -0.25, -1.0, 1.0, 0.25, -1.0, -0.25, 0.5, 1.0, -1.0, 0.25, -0.5, 1.0, 0.25, 0.75, -1.0, 0.25, -0.75, -0.75, 0.5, -0.75, 1.0, 0.25, 1.0, 0.25, 1.0, -0.25, -0.5, 0.0, -1.0, 0.25, 0.75, -0.75, 0.0, -1.0, 0.5, -1.0, 0.75, -0.5, 0.75, -0.25, -0.5, -0.5, -0.75, 0.75, 0.75, 0.5, -0.75, -1.0, 0.75, 0.25, -0.25, 0.25, 1.0, 0.5, -0.25, 1.0, -0.25, -0.5, 0.75, 1.0, 1.0, 0.5, 0.5, -0.75, -0.25, 0.5, 0.0, 1.0, 0.5, 0.25, -1.0, 0.5, -0.5, -0.25, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array5 = new Float32Array([0.25, -0.75, -1.0, -0.5, -0.25, -1.0, 0.75, 0.25, 0.0, 0.0, 0.0, -1.0, -0.75, -0.75, 1.0, 0.25, -0.5, -0.25, -0.5, -0.5, -1.0, 0.75, -0.25, -0.5, 0.75, 0.75, 0.75, 1.0, 0.75, -0.5, 0.75, -1.0, 0.0, 0.5, -0.5, 1.0, -0.5, 0.75, -0.75, 0.75, 0.0, -0.5, -0.5, -0.5, 0.0, 0.25, 0.0, -0.25, -0.5, -0.25, 0.25, -0.5, -0.25, 0.75, 0.0, 0.5, -0.5, 0.75, 0.25, -1.0, 0.5, 0.5, -1.0, -0.25, 1.0, 0.5, -0.25, -1.0, -0.5, -0.25, -0.5, -0.5, -1.0, -0.25, -0.25, 0.5, 0.75, 0.5, 1.0, -0.25, -0.5, 1.0, 0.75, -0.25, -0.25, -0.5, -0.75, 0.5, 0.0, -0.75, -0.25, -1.0, 0.75, -0.5, 0.0, -1.0, 0.25, 1.0, 0.75, 0.75, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    compute_pass_encoder3020.insertDebugMarker("marker")
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
    device30.pushErrorScope("validation");
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.pushErrorScope("validation");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer300.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
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
    buffer302.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer301.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    
    
    
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder302.clearBuffer(buffer303);
    
    render_bundle_encoder302.insertDebugMarker("marker");
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
    
    
    query301.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder303.copyBufferToBuffer(
        buffer303,
        0,
        buffer303,
        0,
        400
    );
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const command_buffer400 = command_encoder400.finish();
    render_bundle_encoder300.insertDebugMarker("marker");
    query301.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    device20.destroy();
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    const array6 = new Float32Array([-0.5, 0.0, 1.0, 0.75, -0.5, 0.75, -0.5, 0.5, -1.0, -0.25, -0.25, 0.0, -0.75, 0.5, 0.75, 1.0, 0.0, 0.5, 0.25, 0.5, 1.0, -0.75, -1.0, 0.0, -0.25, -0.75, 1.0, -1.0, -1.0, 0.25, 0.25, 0.5, -1.0, 0.25, 0.75, 1.0, 0.0, 1.0, 0.0, -0.5, -0.5, 0.5, -0.5, 0.75, -1.0, 0.25, -0.75, -0.25, -1.0, 0.0, -1.0, -0.5, 0.75, 0.5, 0.5, 0.5, -0.75, -1.0, 1.0, -0.5, -1.0, 0.0, 0.5, 0.25, -0.5, 0.5, 0.75, 0.5, -0.75, 1.0, 0.0, -0.75, -0.25, 0.75, -1.0, 1.0, 0.0, -0.75, -0.25, 0.25, 0.5, -0.25, 0.75, -0.5, -1.0, -0.5, -0.5, 1.0, 0.75, -1.0, -1.0, -0.75, 0.0, 0.75, 0.25, -0.25, -0.5, 1.0, -0.75, 0.75, ]);
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.submit([command_buffer400, ]);
    query300.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query400.destroy()
    
    
    device20.destroy();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
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
    
    buffer305.destroy()
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
    render_bundle_encoder300.popDebugGroup();
    
    query300.destroy()
    
    
    compute_pass_encoder3020.popDebugGroup()
    
    render_bundle_encoder401.popDebugGroup();
    buffer304.destroy()
    query300.destroy()
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder401.popDebugGroup();
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device70.destroy();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder301.popDebugGroup();
    
    const array7 = new Float32Array([0.75, -1.0, 0.5, 0.5, -0.75, 0.25, 0.0, -0.5, -0.75, -0.5, 0.5, -0.5, -0.5, 1.0, 0.25, -0.25, 1.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.0, -0.5, 0.75, 0.0, 0.0, 0.0, -0.25, -0.75, 1.0, 0.25, -0.75, 0.25, -0.5, -0.75, -1.0, -0.5, 0.0, 0.25, -0.5, -1.0, 0.0, -0.25, 0.75, 1.0, -1.0, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, -0.5, -1.0, -0.75, 0.75, 0.25, -1.0, -1.0, 0.0, 0.75, 1.0, 0.5, 0.75, -0.25, 0.5, 0.5, 0.25, -0.75, -1.0, -0.5, 1.0, -0.25, 0.0, -0.5, 0.5, 1.0, 0.0, -0.5, 0.0, 0.75, 0.0, 1.0, 1.0, -0.75, 0.75, 0.25, 0.25, 0.0, 0.5, -0.25, 0.5, 0.25, 1.0, 0.75, -0.25, 1.0, -0.75, -0.25, ]);
    buffer306.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer303 = command_encoder303.finish();
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    device20.destroy();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    {
        await buffer306.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer306.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer306.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer303,
        0
    )
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    command_encoder304.copyBufferToBuffer(
        buffer307,
        0,
        buffer301,
        0,
        400
    );
    render_bundle_encoder400.insertDebugMarker("marker");
    query400.destroy()
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    buffer303.destroy()
    
    device40.queue.submit([command_buffer400, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    buffer400.destroy()
    device70.pushErrorScope("out-of-memory");
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const array8 = new Float32Array([-1.0, 0.25, -1.0, 1.0, 1.0, -0.5, -0.75, 1.0, 0.25, -0.5, -0.75, 1.0, 0.0, -1.0, -1.0, -1.0, 0.5, -1.0, -0.75, 0.75, 0.5, 0.75, -0.5, 1.0, -0.75, -0.75, 0.0, 0.0, 0.75, 0.0, -0.5, 0.25, 1.0, 1.0, 0.5, -0.25, 1.0, -0.5, 1.0, -0.25, 0.25, 0.0, 0.0, -1.0, 0.25, -0.5, -1.0, 0.0, -0.25, -0.5, -0.75, 0.75, -0.25, 0.0, 1.0, -0.5, 1.0, -0.5, -0.5, -1.0, 1.0, 0.25, 0.75, 0.5, 0.0, 0.25, -1.0, 0.0, 0.75, 0.25, -0.75, 0.75, 1.0, -0.25, 0.5, -0.25, -0.5, 0.5, 0.75, -0.25, 1.0, 0.0, 0.75, 0.75, 1.0, 0.75, 0.0, -0.5, 0.75, 0.75, 0.0, -1.0, -0.5, 0.25, -0.25, 0.5, -0.25, 0.25, 0.25, 1.0, ]);
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const query001 = device00.createQuerySet({
        label: "query001",
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
    
    query301.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder3050.insertDebugMarker("marker")
    render_bundle_encoder302.popDebugGroup();
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder401.popDebugGroup();
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    query001.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer401.destroy()
    query401.destroy()
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    
    query402.destroy()
    
    
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder3050.setPipeline(compute_pipeline300);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3050.insertDebugMarker("marker")
    buffer307.destroy()
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer308,
        0
    )
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    query401.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    buffer403.destroy()
    compute_pass_encoder3040.insertDebugMarker("marker")
    const command_buffer600 = command_encoder600.finish();
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
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
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    command_encoder401.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    buffer306.destroy()
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    const array9 = new Float32Array([0.5, 0.25, 0.25, -0.25, 0.0, -0.75, 0.5, 0.75, 0.5, -0.75, 1.0, 0.5, 1.0, -0.5, -0.75, 0.5, 0.0, -0.5, 0.5, -0.75, -0.75, -0.25, 0.75, 0.0, -1.0, 0.5, -0.5, 1.0, 0.25, 0.75, 0.25, 0.5, 1.0, -1.0, -0.5, -0.25, -0.75, -0.75, 0.0, -0.5, 0.75, -0.5, -0.75, 0.25, -0.25, 0.0, -0.5, 0.0, 0.75, 0.0, -0.25, 0.25, -0.5, -0.75, -1.0, 1.0, 0.0, 0.75, -0.25, 0.0, -0.25, 0.25, -0.5, -0.25, 0.25, -0.75, 0.0, -0.5, 0.5, 1.0, -1.0, -0.25, 0.0, 1.0, 0.0, 0.0, 0.75, -0.75, 0.0, -1.0, 1.0, -1.0, 0.5, 0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 0.75, 0.0, 0.25, 0.5, -0.25, -0.75, 0.5, 0.5, 0.25, 0.5, 1.0, ]);
    device50.pushErrorScope("out-of-memory");
    const array10 = new Float32Array([-0.5, -0.25, -0.5, 1.0, -0.5, 1.0, 1.0, 0.5, 0.75, -1.0, -0.75, 1.0, 0.0, -1.0, -0.25, 0.0, 0.0, -0.5, -0.5, -0.25, -0.5, 0.5, 0.25, 0.25, -0.75, 1.0, -0.25, -0.25, 0.75, 0.75, 0.75, 0.75, -0.75, 0.75, -0.25, -0.25, -0.5, 0.5, 0.25, 0.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.0, -0.25, -0.5, 0.0, -0.5, 0.5, 0.75, 0.75, 0.75, -0.75, -0.25, 0.75, -1.0, -0.75, 0.75, 0.5, -0.5, 0.25, -0.5, 0.75, -0.75, 0.5, -1.0, 0.25, 0.25, -1.0, 0.0, 0.0, 0.75, -0.75, -0.75, 0.0, 0.0, -0.75, 0.5, 0.25, -0.5, -0.75, -0.5, 0.75, -1.0, -0.5, 0.25, 0.25, -0.75, 0.75, 0.25, 0.25, 0.5, -0.75, 0.0, 0.0, 0.25, -1.0, 0.5, ]);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder3050.insertDebugMarker("marker")
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const array11 = new Float32Array([-0.5, 1.0, 0.75, -1.0, -0.5, 0.25, 0.5, 0.5, 1.0, 0.0, -0.25, -1.0, 0.5, 0.5, 0.5, 0.0, 0.25, 0.0, -1.0, 1.0, 0.0, 0.25, -0.5, -1.0, 0.5, -0.25, 0.0, 0.75, 0.0, 0.25, 0.25, -0.75, -0.25, -0.5, 0.25, 1.0, -0.5, 0.5, 0.0, 1.0, 1.0, -0.25, 0.0, -0.25, 1.0, -0.25, -0.25, 0.5, 0.0, 0.75, -0.25, 0.75, 0.5, -0.25, 0.75, 0.5, 0.0, -1.0, 0.5, 1.0, -0.5, 0.5, -0.75, 0.25, 0.75, 0.0, 0.5, -0.5, -1.0, -0.25, 1.0, 0.5, 0.25, 0.5, 0.0, 0.5, 0.0, 0.25, 0.75, -0.5, 1.0, -1.0, -0.75, 0.75, 0.0, 0.25, 0.0, 0.75, -1.0, 0.0, -1.0, 0.25, 0.25, 0.25, -0.75, 1.0, 1.0, 0.0, 0.0, -0.75, ]);
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.popDebugGroup();
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
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const command_buffer401 = command_encoder401.finish();
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer308,
        0
    )
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
    buffer600.destroy()
    
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
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    compute_pass_encoder3050.insertDebugMarker("marker")
    buffer600.destroy()
    const render_bundle_encoder603 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder603",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const compute_pass_encoder3041 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3041" });
    buffer308.destroy()
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
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
    query401.destroy()
    compute_pass_encoder5010.insertDebugMarker("marker")
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    query500.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const array12 = new Float32Array([-0.25, 0.0, -0.5, -0.5, -0.25, 0.25, -1.0, 1.0, 0.5, 0.75, -0.25, 0.75, -1.0, 1.0, -0.5, -1.0, 0.25, 0.0, 1.0, 0.5, -0.5, 0.25, 0.5, 0.5, -1.0, 0.5, -0.5, 0.5, 1.0, 1.0, -0.75, -1.0, -0.75, 0.25, 0.75, 1.0, 0.5, 1.0, -1.0, 0.25, 1.0, -0.75, 1.0, -0.75, -0.75, -0.75, 0.75, -1.0, 0.0, -0.5, 0.0, 1.0, -0.75, 0.5, -1.0, -1.0, -0.75, -0.5, 1.0, -0.75, 0.75, 0.5, 1.0, 0.25, 0.5, 0.5, -0.25, 0.0, 0.25, 0.75, -0.75, -0.75, 0.75, -0.75, 0.25, -0.25, 1.0, 0.5, -1.0, 0.5, -0.75, -0.75, -0.5, 0.5, 0.75, -0.25, -0.5, -0.75, -0.75, -1.0, -0.25, 0.5, -0.75, 0.0, 0.75, 1.0, 0.5, -0.5, -0.25, -0.75, ]);
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer600.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    device60.pushErrorScope("validation");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
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
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder303.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    
    buffer500.destroy()
    render_bundle_encoder600.popDebugGroup();
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    buffer402.destroy()
    
    device30.pushErrorScope("internal");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    query400.destroy()
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    {
        await buffer404.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer404.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer404.unmap();
        console.log(new Float32Array(data));
    }
    buffer307.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder3040.setPipeline(compute_pipeline301);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    compute_pass_encoder3041.setPipeline(compute_pipeline303);
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    render_bundle_encoder603.insertDebugMarker("marker");
    device30.destroy();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5011 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5011" });
    
    render_bundle_encoder601.popDebugGroup();
    device10.pushErrorScope("validation");
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
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
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    buffer601.destroy()
    
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
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    query402.destroy()
    device10.pushErrorScope("internal");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    
    query500.destroy()
    render_bundle_encoder100.popDebugGroup();
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    render_bundle_encoder800.popDebugGroup();
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    
    buffer405.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const array13 = new Float32Array([-0.25, 0.75, 0.5, 0.25, 0.75, 0.5, 0.25, -0.5, 0.75, 0.25, -0.5, 0.25, -0.25, -0.5, 1.0, 0.25, 0.5, 0.75, 1.0, 0.25, 0.5, -0.25, -1.0, 0.25, 1.0, 0.75, -0.25, -0.75, 0.75, 0.0, -1.0, -1.0, 0.0, -0.75, 1.0, -0.5, 0.5, 0.5, 1.0, -0.25, 0.5, 0.5, -1.0, 0.5, 0.25, -0.25, -1.0, -0.5, -0.5, -1.0, 1.0, 0.25, -0.5, -1.0, 1.0, 1.0, -0.75, -0.75, -0.25, -0.25, -0.5, 0.75, -1.0, -0.75, -0.5, -0.25, -0.75, -0.25, -0.5, -0.5, 0.0, 0.75, 0.0, 0.75, -1.0, -1.0, 0.25, -0.5, 0.25, 0.25, -0.75, 0.5, 1.0, 1.0, -1.0, 0.0, 0.5, -0.75, 0.5, -0.75, 0.5, -0.75, 0.25, -0.25, 0.25, 0.0, 0.5, -1.0, 0.25, 0.75, ]);
    compute_pass_encoder5000.insertDebugMarker("marker")
    device40.queue.submit([command_buffer401, ]);
    const command_buffer500 = command_encoder500.finish();
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group300);
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([command_buffer600, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer100, ]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder5010.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}