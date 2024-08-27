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
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    device00.destroy();
    
    
    
    
    const array0 = new Float32Array([0.5, 0.75, 1.0, -0.75, -0.25, -0.5, 1.0, -0.25, 0.0, 0.0, -0.5, 0.5, -1.0, 0.25, 0.0, -1.0, -0.5, 0.25, -0.25, -0.5, 1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.75, -0.25, 1.0, -1.0, 0.0, 0.25, -0.25, 0.5, 0.25, -1.0, 0.25, 0.0, -0.25, -0.75, 0.75, 0.0, -1.0, 0.5, 1.0, 1.0, -0.5, 0.0, -1.0, 1.0, 1.0, 0.25, 0.75, -0.5, -0.5, 0.0, -0.75, -0.25, -0.5, 0.5, 0.25, -0.75, -1.0, -0.5, 0.75, 0.0, -0.5, 0.5, -0.25, 0.5, -0.75, 0.25, 0.0, 0.75, 1.0, -0.25, 0.75, -0.25, 0.0, 0.0, 1.0, 0.25, 0.25, 0.25, -0.75, 0.0, 0.0, 0.25, 0.5, -0.75, -0.5, 0.25, -0.75, -0.5, -0.25, 0.25, 0.0, -1.0, -1.0, ]);
    
    
    const array1 = new Float32Array([-1.0, 0.25, 0.5, 0.75, 1.0, 0.75, -0.5, -1.0, 0.75, -0.5, -0.25, 0.25, 0.75, 0.0, 1.0, -0.75, 0.25, -0.5, 0.75, 0.75, 0.0, 0.5, 0.5, 0.25, 1.0, 0.75, -1.0, 0.75, -0.5, 0.5, -0.75, -0.25, -0.5, 0.75, 1.0, -0.25, -0.5, -1.0, 0.0, -1.0, 0.75, -0.25, 0.0, 0.25, -0.75, 0.5, 0.0, 0.25, 0.0, -0.25, -0.75, 0.25, -0.25, -1.0, 1.0, 0.0, 1.0, 0.25, 1.0, 1.0, 0.75, 0.5, 0.0, -0.25, -1.0, 0.25, -0.25, 0.25, -0.25, 0.75, -0.75, 0.25, 0.25, 1.0, -0.25, 0.5, 0.75, 1.0, -0.75, 1.0, 0.0, 0.0, -0.25, -0.25, 0.25, -0.5, -0.25, -0.25, 0.0, 0.25, -1.0, 0.0, 0.25, -0.5, 0.5, 1.0, -0.5, 0.0, -0.5, 1.0, ]);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([1.0, 1.0, 0.5, 0.75, 0.75, -0.5, -0.75, -0.75, -0.5, 0.0, 0.0, 1.0, 1.0, 1.0, 0.25, -0.5, 0.5, 0.0, -0.25, -1.0, 1.0, 0.75, -0.75, -0.25, -0.75, 0.5, -0.75, -1.0, 1.0, -0.5, 0.0, 1.0, -0.5, 0.25, 0.5, -1.0, 0.0, 0.25, -0.25, 0.5, 0.5, 1.0, 0.0, -0.75, 0.5, 0.25, -0.75, 0.25, 0.0, 0.0, 0.75, 0.75, -0.75, -0.5, 1.0, -0.75, 0.0, 0.5, 0.5, 0.0, 1.0, 0.75, -1.0, 0.0, -0.75, 1.0, 0.5, 0.0, -0.25, 0.5, -0.75, 0.75, 0.75, 0.75, 0.5, 0.75, 0.5, 0.75, 0.0, 0.25, 0.5, -1.0, 0.25, -0.5, -0.25, -0.25, -0.75, 0.0, -0.75, 0.75, 0.5, -0.75, -0.25, -0.75, -0.75, 0.75, -1.0, -0.75, 0.25, 0.25, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer300.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const array3 = new Float32Array([0.0, -0.75, 0.5, -0.75, -1.0, 1.0, 0.25, 0.25, 0.25, -0.5, 1.0, -0.25, 0.75, 1.0, -1.0, 0.0, -0.5, 0.0, -0.25, -0.25, 0.25, -0.5, -0.25, -0.75, -1.0, -0.25, -0.25, -0.5, -0.25, 0.0, -0.25, -0.75, 0.0, -0.25, 0.0, 0.0, -1.0, 0.5, -0.25, 0.0, -1.0, 1.0, 0.75, 1.0, -0.75, 1.0, 1.0, 0.75, 0.5, -0.25, -1.0, 0.25, 0.5, 0.75, 0.75, 0.75, -0.25, -0.25, 0.25, -1.0, -0.5, -0.25, -0.75, -0.5, 1.0, -0.5, -0.75, -1.0, -0.75, 0.5, -0.5, 1.0, 0.5, 0.75, -0.25, -1.0, 0.0, 0.75, 1.0, 0.75, -0.5, -1.0, -0.5, -0.5, 0.5, -0.25, 0.75, -0.5, 0.0, -1.0, -0.75, -0.5, 0.5, 0.5, -0.5, -0.75, -0.75, 1.0, 1.0, 1.0, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    texture300.destroy();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query300.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer100.destroy()
    query301.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    query302.destroy()
    
    
    command_encoder300.insertDebugMarker("mymarker");
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.pushErrorScope("validation");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    buffer304.destroy()
    
    const array4 = new Float32Array([-0.5, 0.25, -0.5, -0.5, 0.75, -0.75, -0.5, -1.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.75, 0.25, -1.0, 0.5, -0.25, 0.75, 0.5, 0.5, 0.75, -0.75, 0.25, 0.0, -1.0, -0.5, 0.25, 0.5, -1.0, -1.0, -0.25, -1.0, 0.75, -0.25, 0.25, 0.5, -0.75, -0.75, 0.0, -0.25, 0.0, -0.5, -0.25, 1.0, -0.75, 0.5, 0.25, 1.0, 0.5, 1.0, -0.25, -1.0, 0.25, 0.25, -1.0, 0.75, -0.75, -0.75, 1.0, 0.0, 1.0, 0.75, 0.5, -0.75, -0.5, 0.75, 1.0, -1.0, 0.75, -0.75, 0.25, 0.75, -0.5, 0.75, 0.0, 0.5, 0.5, 1.0, 0.5, -1.0, 0.0, 1.0, -0.25, -0.5, 0.25, 1.0, 0.5, 1.0, 0.25, -0.75, 0.0, -1.0, -1.0, -0.25, 1.0, -0.25, 1.0, -1.0, 0.75, ]);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    query303.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder300.clearBuffer(buffer301);
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device50.destroy();
    command_encoder300.pushDebugGroup("mygroupmarker")
    const array5 = new Float32Array([-0.75, -1.0, 0.5, 0.5, 0.25, -0.75, -0.75, 1.0, -0.25, 0.75, 1.0, -0.75, -0.5, 0.0, 0.75, 0.25, 1.0, 0.0, -0.5, -0.75, 0.0, 1.0, -0.25, 0.75, 0.0, 0.25, 0.5, 0.25, 0.75, 1.0, 0.5, 0.0, -0.5, -0.75, -0.75, 0.5, 0.0, -1.0, 0.0, 0.0, 0.25, 0.25, -0.5, 0.5, 0.25, -0.25, 0.0, -0.75, 1.0, 0.25, 0.0, 0.0, -0.25, 0.75, -0.75, 0.25, -1.0, -0.25, 0.75, 0.5, 0.0, -0.5, -0.25, 0.0, -0.25, 0.0, -0.25, 0.5, -0.25, 0.25, 0.25, 0.75, 0.25, 0.75, -0.75, 0.5, 0.75, -0.75, 0.0, 0.75, -1.0, -1.0, 0.5, -0.25, 0.75, -0.5, -0.5, -0.75, -0.75, -0.25, 0.5, -0.75, 0.5, -0.5, 0.75, -0.75, 1.0, -1.0, 0.0, 0.5, ]);
    
    command_encoder300.resolveQuerySet(
        query303,
        0,
        32,
        buffer302,
        0
    )
    
    query300.destroy()
    query302.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
    
    query300.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    
    query303.destroy()
    render_bundle_encoder301.popDebugGroup();
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
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
    
    const array6 = new Float32Array([0.25, -0.25, -0.75, 0.75, -0.5, 0.25, -0.5, -0.75, -1.0, 0.75, -0.25, -0.25, 0.25, 0.25, 1.0, -0.75, 0.75, 0.75, 0.75, -1.0, 0.75, -0.25, 0.25, 0.0, 0.75, 1.0, -0.5, -1.0, -0.5, -0.5, 1.0, -0.25, -1.0, 0.5, -1.0, 1.0, 0.5, -0.75, 0.0, 0.25, -0.5, -0.5, -0.25, 0.75, -0.25, -1.0, 0.25, 0.0, -0.25, -1.0, 0.75, 1.0, 0.75, 0.25, 0.5, 0.0, 0.25, 0.0, 1.0, -0.25, -0.75, 0.75, -0.25, 0.5, -0.25, -0.75, -0.75, -0.25, 0.25, 0.0, 0.75, -0.75, 1.0, 0.5, -0.25, -0.25, -0.25, 1.0, -0.75, -0.5, -1.0, -1.0, 0.25, 0.25, 0.5, -0.5, 0.5, -0.5, -1.0, 0.75, 1.0, -1.0, -0.5, -0.75, 0.5, 0.5, 0.0, 0.5, 0.75, 0.75, ]);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    query303.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    buffer304.destroy()
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    command_encoder300.insertDebugMarker("mymarker");
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array7 = new Float32Array([0.25, 0.5, 0.25, -0.75, -0.25, -1.0, -0.25, 0.0, 0.25, -0.5, 0.75, -1.0, 0.25, -1.0, 1.0, -0.75, -1.0, -0.75, 0.5, -0.75, -0.5, 0.75, -0.5, 0.75, -0.5, -0.25, -0.75, 0.75, -0.5, -0.25, -0.5, 0.0, -0.75, -0.25, 0.0, 1.0, 0.25, 0.0, 0.25, 0.5, -0.25, 0.75, -0.5, -0.75, -0.25, 1.0, -0.25, 0.25, -0.25, -0.75, 1.0, -1.0, 0.25, 0.5, 0.25, 0.5, 0.5, 0.0, 0.25, -0.75, -0.75, -0.5, -0.75, 0.5, 1.0, 0.75, 0.5, 1.0, 1.0, -1.0, 0.0, 0.5, 0.75, 1.0, -0.75, 0.75, 0.75, -0.25, 0.25, -1.0, 0.25, 1.0, -0.75, -0.25, 0.25, 0.75, 0.25, -0.5, -1.0, -0.75, 0.0, 1.0, 0.25, 0.0, 0.25, -0.75, 0.25, -0.5, 0.0, 1.0, ]);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const array8 = new Float32Array([1.0, 0.75, -0.5, 0.75, -0.75, 0.75, 1.0, -0.5, 0.5, -0.5, -1.0, 0.5, -0.5, 0.75, 1.0, 0.75, -0.25, -0.25, -0.5, -1.0, 1.0, -0.5, 0.75, -0.75, 1.0, 1.0, 1.0, -0.25, 0.0, -1.0, 0.0, -0.25, 0.25, -0.75, -0.25, -0.75, 0.0, 0.25, 0.0, 0.25, -0.5, -0.25, 0.25, -0.25, 0.75, 0.0, -0.5, 0.5, 0.0, 0.5, -0.5, -0.25, -0.25, 0.25, 1.0, -0.25, 0.75, 0.0, 0.75, -1.0, -0.5, 0.25, -1.0, 0.0, 0.0, 0.75, -0.75, 0.75, 0.75, -0.25, -0.75, -1.0, 0.0, -0.25, 0.0, -0.25, -0.25, 1.0, -1.0, -0.5, 0.75, 0.75, 1.0, 0.0, 0.25, -0.25, -0.5, 0.25, 1.0, 0.0, -0.75, 0.5, 0.75, 0.75, 0.0, 1.0, -0.25, -0.25, -0.25, 0.75, ]);
    
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
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    device40.pushErrorScope("validation");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    query302.destroy()
    query303.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3000.popDebugGroup()
    query302.destroy()
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer301.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    query600.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    query300.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    device20.destroy();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder300.setPipeline(render_pipeline301);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer303.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder301.setPipeline(render_pipeline301);
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer304,
        0
    )
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    command_encoder301.copyTextureToTexture(
        {
            texture: texture301
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.insertDebugMarker("mymarker");
    
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    query303.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query600.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    texture300.destroy();
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
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
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    
    query600.destroy()
    query304.destroy()
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
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
    
    
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array9 = new Float32Array([-0.5, 0.75, -1.0, 1.0, -0.5, -0.75, 0.0, -0.5, 0.75, 0.5, -0.5, 0.25, -0.75, 0.0, -0.5, 0.5, -1.0, 0.0, -0.75, 0.25, -0.75, 0.75, 0.75, 0.75, -1.0, 0.75, 0.25, 0.75, 0.5, 0.5, 0.5, 0.25, -0.25, 0.25, -0.75, 0.0, -0.75, 0.0, 1.0, -0.5, 0.75, 0.75, 1.0, -0.5, 0.25, -0.75, 0.25, 1.0, -1.0, -1.0, 0.25, 0.25, -1.0, -0.5, -0.25, -0.5, -1.0, 0.5, 0.5, 0.75, -1.0, -0.75, 0.5, 0.25, 0.75, 0.0, 0.5, -0.25, -1.0, -1.0, 0.5, -0.75, -0.5, 0.5, 0.25, 1.0, -0.25, 0.0, 0.0, 0.25, 0.25, -0.5, 0.5, 1.0, -0.75, -0.25, -1.0, -1.0, 0.25, 1.0, 0.5, 1.0, 0.75, -0.75, 0.75, -1.0, -0.75, 0.5, -0.75, -0.25, ]);
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    const command_buffer400 = command_encoder400.finish();
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_bundle_encoder301.popDebugGroup();
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    query601.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    buffer302.destroy()
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3010.executeBundles([render_bundle_encoder300, ])
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer305
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query306
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query306.destroy()
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder3011.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    const array10 = new Float32Array([-1.0, 0.75, 0.75, 0.0, 0.75, -0.75, -0.25, 0.75, 0.75, -1.0, 0.75, 0.25, 0.0, -0.5, 0.25, -0.25, 0.0, -1.0, -0.25, -0.25, 0.25, 0.25, -0.75, 0.25, 1.0, 0.5, 0.75, 0.25, 0.0, -0.25, -0.25, -0.5, 0.75, -0.5, 0.5, -0.5, 0.25, -0.5, -0.5, 0.75, -1.0, -0.5, 1.0, 0.0, 0.75, 1.0, 0.75, -1.0, -1.0, 0.0, 0.75, 0.75, 0.0, -1.0, 0.0, 0.25, -0.25, 0.25, -1.0, -0.75, -0.25, -0.75, -0.25, 1.0, 0.25, 0.25, 1.0, 0.5, 1.0, 0.75, -0.5, -0.75, -0.5, -0.5, -0.25, -0.75, 0.25, -1.0, -0.5, 0.5, 0.5, 0.25, 0.25, -0.75, 1.0, 0.0, -0.25, -1.0, 0.0, 1.0, -0.5, -1.0, 0.75, -0.25, -1.0, 0.25, 1.0, -0.25, 0.0, 0.25, ]);
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder301.popDebugGroup()
    query307.destroy()
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    compute_pass_encoder3000.setPipeline(compute_pipeline303);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    buffer000.destroy()
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query301.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    device40.pushErrorScope("out-of-memory");
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3011.setPipeline(render_pipeline302);
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout305,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setPipeline(render_pipeline401);
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture301.destroy();
    
    render_pass_encoder3011.setStencilReference(1);
    render_pass_encoder4010.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.popDebugGroup();
    buffer300.destroy()
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setPipeline(render_pipeline301);
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.insertDebugMarker("marker");
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    query302.destroy()
    render_pass_encoder3011.pushDebugGroup("group_marker");
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout303]
    });
    device40.queue.submit([command_buffer400, ]);
    query400.destroy()
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout307,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer302
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    query304.destroy()
    query600.destroy()
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group400);
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    query303.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout308,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout604,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout308,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder6000.setPipeline(compute_pipeline603);
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.popDebugGroup()
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query306
    });
    
    query300.destroy()
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout304,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout304]
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pass_encoder3002 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query307
    });
    query302.destroy()
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query304.destroy()
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout305,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout307,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3002.pushDebugGroup("group_marker");
    render_pass_encoder3001.executeBundles([])
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout309,
        compute: {
            module: shader_module3012,
            entryPoint: "main"
        }
    });
    const compute_pipeline3053 = device30.createComputePipeline({
        label: "compute_pipeline3053",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3054 = device30.createComputePipeline({
        label: "compute_pipeline3054",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout305]
    });
    const compute_pipeline3055 = device30.createComputePipeline({
        label: "compute_pipeline3055",
        layout: pipeline_layout302,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const compute_pipeline3056 = device30.createComputePipeline({
        label: "compute_pipeline3056",
        layout: pipeline_layout309,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
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
        layout: compute_pipeline603.getBindGroupLayout(0),
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
    render_pass_encoder3020.setPipeline(render_pipeline301);
    render_pass_encoder3002.setPipeline(render_pipeline302);
    render_pass_encoder3001.setPipeline(render_pipeline304);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group300);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder6000.end();
    const command_buffer402 = command_encoder402.finish();
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group302);
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3002.setBindGroup(0, bind_group304);
    render_pass_encoder3020.setVertexBuffer(0, buffer304);
    render_pass_encoder3002.setVertexBuffer(0, buffer301);
    render_pass_encoder3002.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3014, "uint16");
    device40.queue.submit([]);
    render_pass_encoder3002.draw(3);
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

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder3020.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3001.setVertexBuffer(0, buffer303);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3018, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3018, 0);
    compute_pass_encoder3000.end();
    command_encoder600.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3010.setVertexBuffer(0, buffer3014);
    render_pass_encoder3001.end();
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3011.setBindGroup(0, bind_group306);
    render_pass_encoder3010.drawIndirect(buffer3018, 0);
    command_encoder300.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder3002.drawIndirect(buffer303, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3002.popDebugGroup();
    render_pass_encoder3000.setVertexBuffer(0, buffer3016);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3011.setVertexBuffer(0, buffer3014);
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3002.draw(3);
    render_pass_encoder3011.drawIndirect(buffer3015, 0);
    render_pass_encoder3002.end();
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder4010.popDebugGroup();
    command_encoder401.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer3017, 0);
    render_pass_encoder3000.drawIndirect(buffer3018, 0);
    render_pass_encoder3000.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder3011.end();
    render_pass_encoder3020.end();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3000.drawIndirect(buffer3018, 0);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3000.end();
    render_pass_encoder3002.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3011.end();
    render_pass_encoder3020.drawIndirect(buffer3018, 0);
    device60.queue.submit([]);
    render_pass_encoder3002.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3011.end();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3018, 0);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const command_buffer600 = command_encoder600.finish();
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    render_pass_encoder3002.drawIndexedIndirect(buffer3012, 0);
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
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3002.popDebugGroup();
    render_pass_encoder3002.drawIndirect(buffer3018, 0);
    render_pass_encoder4010.popDebugGroup();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer603, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer603, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3011.setIndexBuffer(buffer303, "uint16");
    device30.queue.submit([]);
    render_pass_encoder3002.end();
    render_pass_encoder3002.draw(3);
    render_pass_encoder3000.drawIndirect(buffer3018, 0);
    render_pass_encoder3002.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3010.drawIndirect(buffer3012, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3002.end();
    render_pass_encoder3010.end();
}