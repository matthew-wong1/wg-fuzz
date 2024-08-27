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
    
    
    
    const array0 = new Float32Array([-0.25, -1.0, 0.0, -0.25, 0.25, 0.25, -0.5, 1.0, -1.0, -0.5, 0.25, -0.75, 1.0, 0.75, 1.0, -1.0, -1.0, -0.5, 0.0, 0.25, 0.5, -0.75, -0.5, -1.0, 0.75, 0.25, -1.0, -1.0, -0.75, 0.75, 0.75, 1.0, -0.25, 0.25, 0.0, 1.0, 0.75, -0.5, 1.0, 0.25, 0.5, -0.75, 1.0, -0.5, 0.75, 0.0, 0.0, -0.25, -1.0, -0.25, 0.0, 0.0, -0.25, -0.25, 0.25, -0.75, -0.75, -0.25, 1.0, -0.25, 0.75, 0.5, -0.25, 1.0, -0.25, -0.75, -0.5, 0.75, 0.0, 0.25, 0.0, -0.5, 0.5, 0.5, -1.0, 0.5, 0.25, 0.0, -0.75, 0.5, 0.5, -0.5, 1.0, 0.25, -1.0, -1.0, -0.75, 0.75, -1.0, -0.75, 0.5, 0.0, -1.0, 0.75, 0.5, 0.25, 0.25, 0.25, -0.5, 1.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.75, 1.0, -0.75, -0.25, -1.0, -0.25, 0.5, 0.0, 0.75, 0.5, 0.5, 1.0, 0.0, -1.0, 1.0, 0.0, -1.0, 1.0, -1.0, 0.5, 0.0, 0.25, -0.5, -0.75, -0.25, 0.25, -0.75, -0.25, 0.75, 0.75, 0.75, 1.0, 0.0, 0.25, 0.25, -0.5, 0.75, 0.25, 0.75, 0.25, 0.0, 0.0, 0.0, -0.25, 1.0, 0.25, 0.25, 0.25, -1.0, 0.0, 0.75, 0.0, 0.25, -1.0, 1.0, -1.0, 0.25, 0.5, -0.5, 0.5, 1.0, 1.0, -0.5, 0.5, 0.0, -0.5, 1.0, 0.0, 1.0, 0.75, -0.5, -0.25, -1.0, -0.25, 0.0, -0.5, -0.75, -1.0, -0.25, -1.0, 0.0, -0.5, 0.0, 0.0, 1.0, 0.75, 0.25, -0.5, 1.0, 1.0, 0.0, 0.25, 0.5, -1.0, 0.5, 0.5, 0.0, 0.0, -1.0, -0.75, ]);
    
    const array2 = new Float32Array([0.25, -0.25, 0.25, 0.0, -0.25, -0.75, 0.0, -0.75, -1.0, 0.75, -0.25, -0.5, 0.5, -1.0, 0.0, -0.75, 0.0, 0.5, 0.75, 0.5, 0.0, 0.5, 1.0, 1.0, 1.0, 1.0, 0.5, 0.75, -1.0, 0.75, -0.75, -0.75, 0.75, 0.5, -0.75, 0.75, -0.75, -0.5, 0.5, -0.25, 1.0, -0.5, 0.25, 0.25, 1.0, 0.5, 0.25, -0.5, -0.5, 0.25, 1.0, 0.75, 0.0, 0.25, -0.75, 0.5, -0.25, 1.0, 1.0, 0.0, 0.25, -0.5, 0.75, -0.25, 0.0, -1.0, -0.25, 0.25, 0.75, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0, 0.5, 0.75, -0.25, 0.75, -0.75, 0.75, 0.75, -0.75, 1.0, 0.0, 0.5, 0.25, 0.75, 0.0, 0.5, -0.25, -0.5, -0.25, 1.0, -0.5, 0.0, -0.5, 0.75, 0.75, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("internal");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer100.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const array3 = new Float32Array([-0.25, -0.5, -1.0, -0.75, 0.5, -0.75, 0.5, 0.5, -1.0, 0.75, 0.0, -1.0, 0.25, -0.25, 0.25, -0.75, -1.0, -1.0, 1.0, -0.25, 1.0, 0.25, 0.75, -0.75, -1.0, -0.75, -0.25, -0.75, 0.25, 1.0, 0.0, 0.5, 0.0, -1.0, -1.0, -1.0, -1.0, 0.0, 0.0, -1.0, 0.75, -0.5, 0.75, 0.25, -1.0, 1.0, 0.5, -0.75, -1.0, -0.75, -0.25, 0.0, 0.25, 0.25, 0.25, 0.75, -0.25, 0.0, 0.25, -1.0, 0.75, -0.25, 0.0, -0.5, 1.0, -0.75, 1.0, 0.25, -1.0, 0.5, -0.5, 0.0, 0.5, 0.75, -0.75, -0.25, 0.5, 0.75, -0.75, -0.5, 0.75, -1.0, -0.5, 1.0, 0.75, 1.0, -0.25, -0.25, 0.5, -0.5, -0.25, 0.0, 0.0, 1.0, -1.0, 0.25, 1.0, -0.5, 0.25, 1.0, ]);
    
    device20.destroy();
    compute_pass_encoder0000.popDebugGroup()
    device10.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array4 = new Float32Array([0.25, 0.25, -0.5, 0.25, 0.75, -1.0, 0.0, 0.25, 0.25, 1.0, 0.25, 1.0, 0.5, -1.0, -1.0, 1.0, -0.75, 1.0, 1.0, -0.25, 0.75, -0.75, 0.25, 0.0, -1.0, 0.25, -0.5, -0.5, -0.5, -0.25, 0.75, 0.5, -0.25, 0.0, -0.75, 0.0, 0.5, 1.0, 0.0, 0.0, 0.25, -0.25, -0.5, -0.25, 0.0, -0.25, 0.75, -0.5, 0.75, -0.5, 0.0, 0.25, -0.25, 0.5, -0.75, -0.75, 0.5, 0.0, -0.75, 0.25, 0.0, 0.5, 0.5, -0.75, -1.0, 1.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.5, -0.5, -0.75, 1.0, 0.25, 0.25, 1.0, -0.25, 0.25, 1.0, -1.0, -0.25, 0.5, 1.0, -1.0, 0.0, 0.0, -0.5, 1.0, 0.0, -0.5, 1.0, -0.25, -0.25, -0.25, -0.5, -1.0, -0.75, 1.0, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    buffer000.destroy()
    const array5 = new Float32Array([0.25, -0.25, -1.0, -0.25, 0.25, -1.0, 0.75, 0.25, 0.25, -0.5, -0.75, -0.25, 0.5, -1.0, -1.0, 0.5, -0.25, -0.75, 0.75, 1.0, -0.5, -1.0, -0.5, -0.75, 0.0, -0.25, 1.0, -0.25, 1.0, 0.75, -0.5, 0.25, 0.75, -0.25, 0.0, 0.25, -1.0, -0.5, -0.25, -0.25, -0.5, -0.25, -0.75, 0.25, -0.5, 0.25, -0.5, 1.0, -0.75, -1.0, -0.5, 1.0, 0.75, 0.0, -0.75, 0.0, 0.25, 0.0, -0.75, 1.0, 0.0, 0.5, 1.0, 0.5, -0.25, 0.25, -1.0, 0.25, -0.25, 0.0, 1.0, 0.0, 0.0, 0.5, 1.0, 0.25, -0.25, 1.0, -1.0, 0.25, 0.25, 0.0, 0.5, -1.0, 0.5, -1.0, 0.5, 0.75, 0.25, -1.0, -0.25, -1.0, 1.0, 0.25, 0.0, -0.5, -0.25, -1.0, 0.25, -0.5, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array6 = new Float32Array([-0.5, -1.0, -1.0, 1.0, -0.25, -0.75, -0.5, 0.75, 0.25, -1.0, 0.75, -0.5, 0.75, -0.25, 1.0, -0.75, -0.5, 0.0, 0.75, -1.0, 0.5, -1.0, 0.0, 0.0, 1.0, 0.25, -0.75, -0.25, -0.75, 1.0, 0.0, -1.0, -0.75, 1.0, -0.25, 1.0, 0.5, 1.0, -1.0, -0.25, 1.0, -0.25, -0.75, -0.5, 0.25, -1.0, 0.75, -1.0, -0.5, 0.75, 0.25, -0.75, -0.5, 0.25, -0.75, 0.75, -1.0, 0.25, -0.25, 0.25, 1.0, -0.25, 1.0, 0.0, 0.5, 0.75, 1.0, -0.25, -0.5, -0.75, 1.0, 0.0, -0.75, 0.5, 0.25, -0.75, 0.75, -0.25, 1.0, 0.75, -1.0, -0.5, 0.0, -0.5, 0.0, 0.25, 0.0, 0.75, 0.0, 0.75, 0.75, -0.25, 0.75, 0.75, 0.5, 0.0, 0.75, 1.0, 0.25, -1.0, ]);
    const array7 = new Float32Array([0.0, 0.0, -1.0, -1.0, -0.75, 1.0, 1.0, -0.25, -0.25, 0.75, 0.75, -0.5, -0.5, -1.0, 1.0, -0.25, 0.75, -0.75, 0.75, 0.0, -0.75, -1.0, 1.0, 0.0, 0.0, 0.75, 0.5, 1.0, 0.25, 0.75, -1.0, 0.25, -0.25, -0.25, 0.5, 0.5, 0.25, -1.0, 0.25, 0.75, 0.75, 0.0, -0.5, 1.0, -0.25, 0.5, -0.5, -0.25, -0.25, -0.5, 0.25, 0.0, 0.25, 0.75, -0.25, -0.25, 0.5, 0.0, -0.25, -1.0, 0.75, -0.25, -1.0, -0.25, 0.75, 0.5, -0.5, -1.0, -0.5, 0.75, 0.5, -0.25, 0.25, 1.0, 1.0, 0.25, -0.25, 1.0, -0.25, 0.0, 0.25, -1.0, 1.0, -0.5, 0.0, -0.25, 0.0, 0.75, 0.25, 1.0, 0.75, 1.0, -0.75, 0.25, -0.5, 0.25, -0.25, 0.5, 0.5, 0.25, ]);
    
    
    command_encoder001.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device00.pushErrorScope("validation");
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.destroy();
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder001.popDebugGroup()
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder001.insertDebugMarker("mymarker");
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer001.destroy()
    const array8 = new Float32Array([-0.25, -0.5, 0.75, -0.5, -0.75, -1.0, 1.0, 0.25, -0.25, -0.25, -0.5, 0.75, -1.0, 1.0, -1.0, -1.0, 0.5, -0.5, 0.25, 1.0, -1.0, 1.0, 0.25, -0.75, -0.5, 0.5, 0.25, -0.75, -0.5, 0.75, -0.75, -0.75, -0.75, 0.5, 1.0, -0.5, -0.5, -0.5, 0.25, 0.5, 1.0, -0.5, 0.0, -0.5, -0.5, -1.0, 0.25, -0.75, -0.5, -1.0, 0.0, 0.5, -0.75, -1.0, 0.75, 0.75, 0.5, 0.75, -0.5, 0.25, 0.75, 0.0, 0.75, -1.0, 1.0, -1.0, 0.25, 1.0, -1.0, 0.5, -0.5, 0.75, 0.75, -0.25, 0.5, -0.25, 0.75, 1.0, 0.25, 0.5, 0.5, -0.5, -1.0, 0.0, 0.0, 1.0, -0.75, -0.75, -0.75, 1.0, -0.75, 0.5, -0.25, 0.75, -0.25, -0.25, 0.5, 0.5, -1.0, 0.75, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    buffer002.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder000.popDebugGroup();
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    compute_pass_encoder0000.popDebugGroup()
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    
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
    command_encoder001.popDebugGroup()
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    
    
    query000.destroy()
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    buffer003.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
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
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.popDebugGroup()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer009.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer005.destroy()
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
    query001.destroy()
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device40.pushErrorScope("internal");
    const command_buffer001 = command_encoder001.finish();
    device00.queue.writeBuffer(buffer0011, 0, array8, 0, array8.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    
    const array9 = new Float32Array([-0.25, -0.5, -0.5, 0.0, 1.0, 0.25, -0.75, -0.25, 1.0, 0.0, 0.75, -0.75, -1.0, 0.0, 1.0, -0.25, 0.75, 0.0, 1.0, 1.0, -1.0, 0.75, 1.0, -0.5, -0.5, 0.25, -0.75, -0.75, 0.0, 1.0, -0.25, -1.0, -0.5, 0.75, 0.75, 0.75, -1.0, 0.25, 1.0, -0.5, 0.0, 0.25, -1.0, -1.0, -0.25, 0.75, 0.75, -0.25, 0.5, -0.5, 0.25, -1.0, -1.0, -0.25, -1.0, -0.5, 0.75, 0.5, 0.75, -0.25, -0.75, -1.0, -0.25, -0.5, 1.0, 1.0, 0.0, 0.0, -0.25, 0.75, 0.25, 0.25, -1.0, 1.0, 0.25, 0.0, 0.0, 0.5, 0.5, -0.75, -1.0, 1.0, 0.25, 0.25, 0.75, -0.25, 0.25, -1.0, -0.75, 0.5, -0.5, 0.5, 1.0, 0.0, 0.0, 0.0, -0.75, -0.75, 0.5, -0.25, ]);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer0013.destroy()
    command_encoder002.copyBufferToBuffer(
        buffer0012,
        0,
        buffer0011,
        0,
        400
    );
    command_encoder002.popDebugGroup()
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer002 = command_encoder002.finish();
    
    
    device00.queue.writeBuffer(buffer0011, 0, array7, 0, array7.length);
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    command_encoder003.copyBufferToBuffer(
        buffer0012,
        0,
        buffer0011,
        0,
        400
    );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer0012.destroy()
    buffer006.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder003.clearBuffer(buffer0011);
    device00.queue.writeBuffer(buffer0011, 0, array9, 0, array9.length);
    
    
    
    
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.pushErrorScope("internal");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer0014, 0, array8, 0, array8.length);
    buffer007.destroy()
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    device00.pushErrorScope("internal");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer0011, 0, array5, 0, array5.length);
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer008.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer0014, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder0030.executeBundles([])
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder0030.setPipeline(render_pipeline000);
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    buffer0014.destroy()
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer0011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0011.unmap();
        console.log(new Float32Array(data));
    }
    
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    buffer400.destroy()
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device00.queue.submit([command_buffer002, ]);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query500.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    buffer0016.destroy()
    render_pass_encoder0030.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0011, 0, array2, 0, array2.length);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.popDebugGroup();
    
    
    device00.queue.writeBuffer(buffer0011, 0, array9, 0, array9.length);
    
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query500.destroy()
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
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
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    render_bundle_encoder002.popDebugGroup();
    
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0021, 0);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    buffer0011.destroy()
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0030.pushDebugGroup("group_marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer0021, 0, array0, 0, array0.length);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    
    buffer0017.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer0021, 0, array8, 0, array8.length);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    query400.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer0021, 0, array8, 0, array8.length);
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    texture001.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device40.destroy();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.popDebugGroup()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer0021, 0, array7, 0, array7.length);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query501.destroy()
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("out-of-memory");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    compute_pass_encoder0000.popDebugGroup()
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
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
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    device00.pushErrorScope("internal");
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    render_pass_encoder0030.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder700.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0021, 0, array6, 0, array6.length);
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder501.copyBufferToBuffer(
        buffer501,
        0,
        buffer500,
        0,
        400
    );
    render_bundle_encoder000.popDebugGroup();
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer004.destroy()
    
    
    render_pass_encoder0030.insertDebugMarker("marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    buffer504.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    compute_pass_encoder0000.end();
    compute_pass_encoder5000.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline601.getBindGroupLayout(0),
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

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    const command_buffer502 = command_encoder502.finish();
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder6000.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer507, 0);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder5000.end();
    compute_pass_encoder6000.end();
    device00.queue.submit([command_buffer001, ]);
    command_encoder500.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder6010.end();
    command_encoder601.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    const command_buffer601 = command_encoder601.finish();
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer601, ]);
    device00.queue.submit([command_buffer000, ]);
    device60.queue.submit([command_buffer600, ]);
}