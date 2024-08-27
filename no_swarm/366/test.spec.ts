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
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([0.25, 0.5, 1.0, 1.0, -0.75, -0.25, -0.25, -1.0, -1.0, -0.5, 1.0, 0.5, 0.0, 0.0, -0.5, -0.25, -0.75, 0.5, 0.75, -0.5, -0.75, 1.0, 0.0, -1.0, -0.5, 0.5, -1.0, 0.25, -0.5, 0.0, 0.0, 0.0, -0.75, 0.0, -0.75, 0.0, 0.0, 0.0, -1.0, 0.0, -1.0, 0.25, 0.75, 0.0, 0.75, 0.75, 0.5, -0.5, 0.0, -1.0, -0.5, -0.5, 1.0, -0.25, 0.25, 0.25, -0.5, -1.0, 0.25, 0.75, -1.0, 0.0, -0.75, 0.5, -1.0, -0.5, -0.5, 0.0, -0.5, 0.25, 0.75, -0.25, 1.0, 0.75, -1.0, -0.25, -0.5, -0.5, 0.25, -0.75, -0.75, -0.25, -0.5, 1.0, 0.25, -0.75, 0.75, -0.25, 0.0, -0.25, 0.5, 0.5, 0.0, -1.0, 0.0, 0.5, -1.0, -0.75, -0.5, -0.75, ]);
    const array1 = new Float32Array([-1.0, 0.75, 0.5, 0.25, 0.0, 0.5, 0.75, 0.25, -0.5, 0.5, 0.5, -1.0, 0.5, 0.0, -0.75, 0.75, 0.75, 0.0, -0.25, 0.25, 0.0, -0.25, -0.75, -0.25, 0.0, 0.0, 0.75, -0.5, 1.0, -0.75, 0.5, 1.0, 0.0, 0.25, 1.0, -0.25, 0.5, 1.0, 0.5, 0.75, -0.5, -0.75, 0.0, 0.5, 0.0, 0.0, 0.75, 0.25, -1.0, 1.0, -0.75, -0.5, 0.5, -1.0, 0.0, -0.75, 0.0, 0.25, 1.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.5, 1.0, 0.5, 0.75, 1.0, -0.5, -1.0, -0.25, 1.0, 0.0, -0.25, -0.25, -0.25, 0.5, -0.25, -1.0, 0.25, 0.75, -0.75, -0.25, -0.75, 1.0, 0.5, -0.25, -0.25, 0.0, -1.0, -1.0, 1.0, 0.75, 0.0, -1.0, -1.0, 0.75, 0.75, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    const array2 = new Float32Array([0.0, -0.25, -1.0, 0.5, -0.25, -0.25, 1.0, 1.0, 0.5, 0.25, -0.25, 1.0, 0.75, -1.0, 0.0, 0.5, 0.75, 1.0, 0.5, -0.5, -1.0, -0.25, -0.25, -0.25, -1.0, 0.0, 0.0, 0.75, 0.75, 1.0, -1.0, 0.0, -0.5, 0.5, 0.5, -0.25, 0.25, 0.75, 0.0, 0.25, 0.5, -0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 0.0, 0.5, -0.5, 0.0, 1.0, 0.25, -0.75, -0.75, 0.0, 0.0, -0.75, 0.25, -0.5, -1.0, 0.75, 1.0, 0.75, -0.75, -1.0, 0.25, 0.5, -1.0, 0.25, -0.75, 0.0, 0.5, -1.0, 0.0, -0.5, -1.0, -0.5, -0.75, 0.25, -0.5, -1.0, -0.5, 0.25, -1.0, -0.75, -0.75, -1.0, -1.0, -0.75, 0.0, 0.25, 0.25, -0.25, 0.5, -1.0, 1.0, -0.75, 0.25, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.5, -0.75, -0.75, -0.25, 0.75, 1.0, -0.25, 0.0, -0.75, 0.5, 0.5, 0.0, 0.0, -0.25, -1.0, 0.75, -0.75, -0.5, -0.75, -0.75, 1.0, 0.0, 1.0, 1.0, -0.5, 0.25, -0.5, -0.25, 0.25, -0.75, 0.0, -0.25, 1.0, 0.75, -0.75, 0.5, 0.25, -0.25, -0.5, 0.75, 0.0, 0.25, -0.5, -0.75, 0.0, 0.75, 1.0, -0.25, -0.5, 0.75, -0.75, -0.5, -0.5, -0.75, 0.75, -0.25, -0.75, -0.5, 0.25, 1.0, -0.5, 0.5, 0.5, -1.0, 0.25, 0.0, 0.25, -1.0, -0.75, 0.5, 1.0, 0.75, 0.75, -0.25, 0.75, -0.25, 0.75, 0.75, -0.25, 0.25, 0.25, -0.5, -0.5, -0.25, 0.0, 0.25, -1.0, 1.0, 0.0, -1.0, 0.0, -1.0, -0.75, 0.5, -0.75, -0.25, -0.5, 0.75, -0.75, 0.0, ]);
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array4 = new Float32Array([-0.75, 0.25, 0.25, 0.75, -0.75, 0.5, 0.25, 1.0, -0.5, 0.25, -0.75, 0.0, -0.25, 0.0, -0.75, -0.75, -0.75, 0.0, -0.75, 0.5, -1.0, 1.0, -0.25, 0.0, -0.25, 0.5, -0.25, 0.5, 0.25, -0.5, -0.5, 0.75, 0.5, -1.0, 0.5, -0.75, 0.5, -0.25, 0.5, -1.0, -0.75, 0.25, -0.25, 0.75, 0.25, -0.5, 0.25, -1.0, 1.0, -0.75, -0.5, -0.5, -0.75, 0.0, 0.5, -0.25, -0.25, 1.0, 0.0, -0.25, 0.0, 0.0, -0.5, 0.5, -0.25, 0.5, 0.25, -0.75, 1.0, 0.0, 1.0, -1.0, -1.0, -0.5, 0.5, 0.5, -0.75, 0.5, 0.25, 0.0, -0.75, -0.5, 1.0, -1.0, 0.0, 0.5, -0.75, -0.75, -0.25, -0.5, 0.0, 0.75, 0.75, 1.0, 1.0, -0.5, 0.0, 0.25, -0.75, -1.0, ]);
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
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
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
    device20.destroy();
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
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
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    render_bundle_encoder101.popDebugGroup();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    texture300.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.pushErrorScope("validation");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.pushErrorScope("validation");
    const command_buffer300 = command_encoder300.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture301.destroy();
    const query301 = device30.createQuerySet({
        label: "query301",
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
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const array5 = new Float32Array([1.0, 1.0, 0.0, -1.0, 0.25, 0.5, 1.0, -0.5, -0.25, 0.25, 0.75, -0.75, 0.5, -0.25, -1.0, -0.5, 0.25, -1.0, -0.5, -0.25, -0.25, -0.25, -0.75, -0.75, 0.75, 1.0, -0.75, -0.25, 0.0, 0.0, 1.0, -0.5, -1.0, 0.0, 1.0, 0.5, 0.0, 0.5, 0.0, -0.25, -0.5, 0.75, -0.25, 0.5, -0.25, 1.0, -1.0, 1.0, 0.0, -0.25, 0.75, 0.5, 0.75, -0.5, -0.75, -0.75, -1.0, 0.5, 0.25, -0.75, -0.5, -1.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.25, -0.5, 0.0, -0.25, 1.0, -0.75, 1.0, 0.5, -1.0, 1.0, 0.0, 0.5, 0.5, 0.75, 0.25, 0.75, 0.5, 0.75, -1.0, 0.25, 0.25, -0.5, 1.0, -1.0, -0.5, -0.25, 0.5, -1.0, -1.0, 1.0, 0.0, 0.25, 0.0, ]);
    const array6 = new Float32Array([1.0, -0.5, 0.75, 0.75, -0.5, 0.25, 0.75, -0.5, 0.5, -1.0, 0.0, -1.0, -0.5, 0.25, 1.0, -0.25, -0.75, 0.25, 0.0, 0.75, 1.0, 0.75, -1.0, 0.5, -0.25, -0.25, -1.0, -0.25, 0.75, -0.75, 0.75, 0.25, 0.5, -0.25, 1.0, -0.75, 0.75, -1.0, -0.75, 0.0, 0.25, -0.25, 0.75, -0.5, -0.75, 0.0, 0.75, -0.75, 0.25, 0.75, 1.0, 0.75, -0.75, -0.25, 0.75, 0.0, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, 0.5, 0.0, 1.0, 0.75, -1.0, 0.25, -0.25, 0.75, -0.5, -0.75, -1.0, 0.0, 1.0, 0.75, -1.0, -1.0, -1.0, 0.0, -1.0, -0.25, 0.75, 0.0, -0.75, 0.25, -0.5, 1.0, 1.0, 0.0, -1.0, -1.0, 0.75, 0.5, 0.0, 1.0, 0.25, -1.0, -1.0, 0.0, ]);
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    query300.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer100.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer301 = command_encoder301.finish();
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    command_encoder302.insertDebugMarker("mymarker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder102.insertDebugMarker("mymarker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder302.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder303.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer101.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder101.popDebugGroup();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.popDebugGroup();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    query100.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    command_encoder302.clearBuffer(buffer301);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    render_bundle_encoder300.setPipeline(render_pipeline302);
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    command_encoder304.insertDebugMarker("mymarker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
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
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
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
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder302.clearBuffer(buffer303);
    
    query302.destroy()
    device40.destroy();
    
    
    query302.destroy()
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    const command_buffer302 = command_encoder302.finish();
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    command_encoder305.clearBuffer(buffer301);
    command_encoder304.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    buffer300.destroy()
    device30.queue.submit([command_buffer302, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    
    render_bundle_encoder101.popDebugGroup();
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
    command_encoder304.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder304.clearBuffer(buffer303);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    buffer302.destroy()
    
    
    command_encoder303.clearBuffer(buffer303);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    buffer303.destroy()
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.pushErrorScope("validation");
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const array7 = new Float32Array([-0.75, 0.0, 0.0, -0.5, 0.5, 1.0, 0.25, -1.0, 0.5, -0.75, 1.0, 0.0, 0.25, 0.75, -0.75, -0.75, -1.0, 0.75, -0.75, -0.75, 1.0, -0.25, 0.75, -0.25, -0.25, 0.5, -0.75, 1.0, -0.75, -0.25, 0.25, -0.25, -0.25, 0.75, 1.0, 1.0, 0.5, -0.75, 1.0, -0.25, 0.25, 0.75, 0.25, -0.75, 0.75, -0.75, 0.5, 1.0, 0.75, 1.0, -1.0, -0.75, 0.25, 0.0, -0.25, 1.0, 1.0, -0.5, 0.0, 0.0, -1.0, 0.75, 0.0, 0.25, 0.5, 0.0, -0.75, 1.0, 0.75, 0.5, 0.25, -1.0, 1.0, 0.75, -0.25, 0.25, 0.75, -0.25, -1.0, 0.25, 1.0, 0.75, -0.5, 1.0, 1.0, 0.5, 0.5, 0.0, 1.0, 0.0, -0.75, 0.75, -0.5, -0.5, -0.25, 0.75, -0.5, 0.0, 0.5, -0.5, ]);
    command_encoder305.clearBuffer(buffer301);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer104.destroy()
    const array8 = new Float32Array([0.25, 0.25, 0.75, -0.75, 0.75, 0.0, -0.75, 0.75, -1.0, -1.0, 1.0, 0.75, 0.25, 0.25, -1.0, -0.25, 0.75, -0.5, 0.25, 1.0, 1.0, 1.0, -0.75, 0.5, -0.75, 0.75, 0.75, 0.75, 1.0, -0.75, 1.0, -0.25, -0.5, -0.75, 0.25, 0.25, 0.25, -0.75, -0.5, -0.5, 1.0, -1.0, 1.0, 0.5, 1.0, 0.0, -1.0, -1.0, -0.75, -0.5, 0.75, -0.75, -0.5, -0.5, 0.0, -0.75, -0.75, 0.75, 1.0, 0.0, 1.0, -1.0, 0.0, 1.0, -1.0, -0.5, -0.5, -0.75, -0.25, 0.0, 0.75, -0.75, 0.0, -0.75, 0.5, 1.0, 0.25, -0.5, 0.25, 1.0, 0.25, -0.75, 0.75, 0.25, 0.0, -0.75, -0.5, -0.25, 0.5, 0.0, 0.5, 0.0, -1.0, -0.25, 0.0, -0.5, 1.0, -0.75, -1.0, 0.5, ]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    command_encoder305.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_buffer304 = command_encoder304.finish();
    
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    query100.destroy()
    
    
    
    const command_buffer306 = command_encoder306.finish();
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_buffer103 = command_encoder103.finish();
    
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query303.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query101.destroy()
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
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    command_encoder303.popDebugGroup()
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder3050.setPipeline(compute_pipeline301);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([-0.75, 0.0, 1.0, -0.75, 0.5, 0.0, 0.5, -0.5, -1.0, -0.25, 0.5, -0.25, -0.5, -0.25, 0.0, -0.25, 1.0, 0.75, 0.75, -0.75, 0.0, 1.0, -1.0, 0.5, -0.25, 0.75, -0.25, 1.0, 0.5, 0.75, 0.5, -0.25, -0.75, -0.5, -0.25, -0.75, 0.25, -0.5, -1.0, 0.25, 0.0, -0.5, -0.75, -0.25, 0.25, 0.25, -0.75, -0.5, 1.0, -0.75, 0.25, 0.75, 0.25, -0.5, 0.5, 0.75, 0.25, 1.0, 0.0, -0.75, -0.25, -1.0, -0.75, -0.25, -0.5, 0.0, -0.5, -0.75, 1.0, 0.0, -0.25, -0.5, 0.0, -1.0, -1.0, 0.5, -0.25, -0.25, 0.75, -1.0, 0.5, 0.0, -0.25, 0.0, 0.0, -0.5, -0.25, 0.25, 0.75, 1.0, 0.0, -0.5, 0.25, -1.0, -0.25, 0.25, -0.75, -0.75, 0.25, 0.75, ]);
    buffer102.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    command_encoder307.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder307.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    buffer103.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    texture302.destroy();
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const array10 = new Float32Array([-1.0, 0.25, -0.5, 1.0, -0.75, 1.0, -1.0, 0.0, -0.75, 0.0, 0.5, 0.0, -0.75, -1.0, -1.0, -0.25, -0.25, -1.0, -1.0, 0.5, 1.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.25, 0.75, 0.25, -0.5, 0.25, 0.25, -0.25, -0.5, 0.0, 0.75, 1.0, 0.0, -1.0, -0.25, -0.5, -0.5, -0.5, 1.0, 1.0, 1.0, 0.5, 0.25, -0.25, 0.0, -0.75, -0.25, 0.0, -0.75, -0.75, -0.5, 0.25, 0.25, -0.5, -1.0, 0.75, 0.25, 0.0, 0.5, 0.5, 0.75, -1.0, -0.75, 0.75, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.75, -0.25, 0.5, -1.0, 0.0, 0.75, -0.25, -0.75, 0.0, 0.75, 0.0, 0.75, 0.75, -1.0, 0.0, -1.0, -0.25, -0.25, -0.75, -0.75, -0.25, 0.75, -0.5, 0.75, ]);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    compute_pass_encoder3050.insertDebugMarker("marker")
    buffer304.destroy()
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer306, ]);
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    
    
    render_bundle_encoder101.popDebugGroup();
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    command_encoder105.pushDebugGroup("mygroupmarker")
    device10.queue.submit([command_buffer103, ]);
    
    query101.destroy()
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query303
    });
    command_encoder303.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3070.executeBundles([])
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    command_encoder104.pushDebugGroup("mygroupmarker")
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    query300.destroy()
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_pass_encoder3070.setPipeline(render_pipeline303);
    
    texture303.destroy();
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    query302.destroy()
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
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    device30.queue.submit([command_buffer304, ]);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
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
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder3070.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    query102.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder300.popDebugGroup();
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    query303.destroy()
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    render_bundle_encoder301.setVertexBuffer(0, buffer306);
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    buffer308.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    
    render_bundle_encoder300.insertDebugMarker("marker");
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
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer307.destroy()
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer500.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("internal");
    
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
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
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout307,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query303.destroy()
    device30.pushErrorScope("validation");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    compute_pass_encoder1050.setPipeline(compute_pipeline102);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    query301.destroy()
    
    const command_buffer107 = command_encoder107.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer303, ]);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder106.pushDebugGroup("mygroupmarker")
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout308,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder3070.insertDebugMarker("marker");
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3070.setStencilReference(1);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer107, ]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout306,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group102);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group104);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1012, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3050.setBindGroup(0, bind_group302);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1015, 0);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group106);
    compute_pass_encoder1010.end();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder3050.popDebugGroup()
    compute_pass_encoder1050.end();
    command_encoder500.popDebugGroup()
    command_encoder105.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1018, 0);
    compute_pass_encoder1020.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1019, 0);
    compute_pass_encoder1040.end();
    const command_buffer102 = command_encoder102.finish();
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
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_pass_encoder3070.setBindGroup(0, bind_group303);
    compute_pass_encoder1000.end();
    compute_pass_encoder3050.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer105 = command_encoder105.finish();
    command_encoder104.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder3050.end();
    command_encoder106.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    command_encoder305.popDebugGroup()
    const command_buffer305 = command_encoder305.finish();
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3070.setVertexBuffer(0, buffer306);
    render_pass_encoder3070.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3070.setIndexBuffer(buffer302, "uint16");
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder3070.drawIndexed(3);
    render_pass_encoder3070.end();
    const command_buffer307 = command_encoder307.finish();
    device30.queue.submit([command_buffer307, ]);
}