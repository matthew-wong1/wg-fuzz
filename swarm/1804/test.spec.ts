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
    const array0 = new Float32Array([-1.0, -0.75, -0.75, -1.0, -0.5, 1.0, -1.0, 0.5, 0.75, 0.0, 0.5, -0.5, -0.5, 0.75, 0.25, -1.0, 1.0, 0.5, 0.25, 0.25, 0.5, 0.75, -0.75, -1.0, 0.75, 0.0, 0.75, 0.75, 1.0, -0.5, -0.5, 0.0, 0.75, -0.75, 0.5, 0.75, 0.5, 1.0, -0.75, -0.25, 0.5, -0.25, 0.75, 0.0, 1.0, -1.0, 0.5, 0.0, 0.25, 1.0, 0.0, -0.25, 0.25, 1.0, -1.0, 0.0, 0.75, 0.25, -0.75, 0.0, 0.0, -0.75, -0.5, -1.0, -0.5, -0.75, 0.0, 1.0, -0.75, 0.75, 0.0, 0.25, -0.75, 0.75, -0.75, -0.75, 0.75, 0.5, 0.5, 0.0, 0.25, 1.0, 0.25, -0.75, 0.25, -1.0, 0.75, -0.25, -1.0, -0.75, -1.0, -0.5, 0.5, -0.75, -0.5, 0.5, 0.5, -0.5, 0.0, -0.25, ]);
    const array1 = new Float32Array([-0.5, 0.0, 0.25, 1.0, -0.25, -0.75, 0.25, 1.0, -0.75, -0.75, 0.25, 0.75, -0.25, -0.25, 0.5, -0.25, 0.5, -0.25, 0.5, -0.25, -1.0, 0.5, 1.0, 0.75, 0.25, 0.25, 0.25, -0.25, 1.0, 1.0, 0.5, 1.0, 0.75, -1.0, 0.0, 0.75, 0.75, 0.75, 0.75, -0.25, -0.5, 0.75, 0.25, -1.0, 0.75, 1.0, 0.25, -1.0, -0.25, 0.0, -1.0, 0.5, 0.0, -0.5, -0.75, -0.25, -0.75, -0.75, 0.5, -1.0, -0.5, -0.5, -0.5, -0.25, -0.75, 1.0, 0.0, -0.75, 1.0, -0.25, 0.5, 0.5, -0.25, -1.0, -0.75, 0.25, -1.0, -1.0, 0.25, 0.75, 1.0, -1.0, 0.75, 0.5, -1.0, 0.0, 1.0, -1.0, 0.5, 0.5, 0.0, 0.75, -0.25, -1.0, 0.5, 0.5, -0.25, -0.75, 0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.destroy();
    const array2 = new Float32Array([-0.25, -0.5, -0.75, -1.0, 1.0, 0.75, 0.5, 1.0, 0.0, 0.5, -0.25, -0.25, 0.25, -0.25, 1.0, 0.25, -0.75, 0.25, -0.75, -1.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.25, -0.25, 0.25, 0.0, -0.5, -0.5, 0.5, -1.0, 1.0, -0.25, 0.25, 0.5, 0.25, -0.25, 0.5, 0.75, 0.25, -0.25, 1.0, 0.75, 0.25, -0.75, 0.25, 0.25, 1.0, 0.0, -1.0, 0.25, 0.25, 0.0, 0.0, 0.75, -0.5, 0.5, -0.75, -0.25, 0.25, 1.0, 0.25, -0.25, 0.5, 0.25, 1.0, -0.25, -1.0, 1.0, 0.75, 0.0, -0.5, -0.5, 0.0, -1.0, -1.0, 0.25, -0.75, 1.0, -0.25, 1.0, -0.5, 0.0, -0.25, -0.5, 1.0, -0.25, 0.5, 0.0, -1.0, -1.0, -1.0, 0.5, -1.0, 0.5, 1.0, -1.0, -0.25, ]);
    const array3 = new Float32Array([1.0, 0.75, 0.5, 0.75, 0.75, 0.25, -0.75, -0.5, -0.25, -1.0, -1.0, -0.5, -0.5, -0.5, 0.0, 1.0, 0.25, 0.25, 0.5, -0.5, -1.0, 0.5, 0.25, 1.0, 0.75, -0.25, 0.0, -0.5, 0.75, -0.75, 0.0, 0.0, -0.25, -0.5, -0.75, 0.75, -1.0, -0.75, 0.75, 0.75, -0.5, 0.25, -0.25, 0.0, 1.0, -1.0, -0.25, -0.25, 0.75, 0.75, 0.5, 0.0, 0.75, -0.5, 0.5, 0.25, -0.75, 1.0, -0.5, -0.75, 0.25, -1.0, 0.75, -1.0, 0.75, -0.75, -1.0, -0.25, 0.0, 0.5, -1.0, 0.0, 0.0, -1.0, -1.0, -0.75, -0.5, 1.0, 1.0, 0.0, 1.0, -0.25, 0.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.0, 0.25, 1.0, -0.75, 0.5, -0.5, 0.0, 0.5, 0.0, -0.25, 1.0, 0.75, ]);
    texture000.destroy();
    const array4 = new Float32Array([1.0, 0.0, 0.75, 0.25, -1.0, 0.75, 0.75, 0.0, 0.0, -0.25, -0.75, 1.0, 0.0, 1.0, -1.0, -0.25, -0.25, -0.5, 0.75, 0.75, -1.0, 0.5, -0.75, -0.5, 0.0, -0.25, -0.75, -0.25, -0.25, 1.0, -0.75, -0.75, -0.5, 0.75, 0.0, 0.75, 0.75, 0.75, -0.25, -0.75, 0.5, -1.0, -0.25, -0.75, 0.75, 0.5, 0.75, -0.25, -0.5, -0.75, 0.5, 0.5, 0.5, 1.0, -0.25, -0.25, -1.0, 0.25, 1.0, -0.75, 0.5, 0.5, 0.75, -0.25, 1.0, 1.0, 0.25, 0.0, 0.25, -0.5, -1.0, -1.0, -0.25, -0.25, 0.25, -0.5, -0.75, 0.75, 0.25, -0.25, 0.25, 0.0, -0.25, 1.0, 1.0, -0.75, -0.5, -0.25, -0.75, -0.25, 1.0, -0.25, 1.0, -1.0, 0.5, 0.25, -0.5, 1.0, -0.5, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device10.pushErrorScope("validation");
    
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder100.popDebugGroup()
    query101.destroy()
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query101.destroy()
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder101.insertDebugMarker("mymarker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder101.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("internal");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.popDebugGroup()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer100.destroy()
    command_encoder101.popDebugGroup()
    
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder300.insertDebugMarker("mymarker");
    query104.destroy()
    query300.destroy()
    query104.destroy()
    const command_buffer101 = command_encoder101.finish();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query101.destroy()
    const array5 = new Float32Array([0.5, -0.25, 0.0, 1.0, 1.0, 0.25, -1.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.75, 0.5, 0.0, 0.25, -0.75, 0.5, -0.75, 0.0, 0.0, -1.0, -0.25, -0.5, -0.75, 0.5, 1.0, 0.25, -0.5, 0.25, 0.0, 0.25, 1.0, 0.0, 1.0, -0.25, 0.0, 1.0, -0.75, -1.0, 1.0, 0.5, 0.5, -0.5, -0.25, -0.5, 0.25, 0.25, 0.5, 0.5, -0.75, 0.75, 1.0, 1.0, 0.0, -0.75, -0.75, -0.75, -0.75, 0.5, -0.75, 0.75, 1.0, 0.5, -1.0, -1.0, 0.75, 1.0, -0.75, -1.0, 0.25, 0.5, 0.75, 0.25, -0.5, 0.75, -0.25, -1.0, -0.25, -0.25, 0.5, -0.25, -0.5, 0.75, -0.25, 0.5, -1.0, -0.75, -0.25, -1.0, 0.25, 0.0, 0.75, 1.0, 1.0, -1.0, -0.25, -0.5, -1.0, 0.0, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.destroy();
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.clearBuffer(buffer100);
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    query101.destroy()
    query104.destroy()
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device30.pushErrorScope("out-of-memory");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    query102.destroy()
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const array6 = new Float32Array([0.0, -1.0, 0.25, 0.0, -0.25, -0.75, -1.0, 0.0, 1.0, 0.25, 1.0, -0.75, -0.25, 0.0, -0.25, 0.5, 1.0, 0.0, -0.25, 0.75, -0.5, 0.0, 0.5, 0.75, -0.5, -1.0, 0.25, -1.0, 0.75, -1.0, 1.0, 0.0, -0.5, -0.25, -0.75, -0.25, 0.0, -1.0, 0.25, 0.5, 1.0, 0.5, 0.25, -1.0, 0.25, 0.5, 0.75, 1.0, -0.5, 1.0, 1.0, -0.5, -0.25, 0.5, -0.75, 0.75, -0.5, 1.0, -0.75, 0.25, 0.75, -0.75, 1.0, -1.0, 0.5, -0.25, 0.0, 0.75, 0.0, -0.25, -1.0, -1.0, -0.75, 0.5, 0.75, -0.75, -0.5, 1.0, 0.5, -0.5, 0.25, -1.0, 0.0, 0.5, -0.75, -1.0, -1.0, -0.5, -0.75, -0.25, 0.0, -0.75, 0.5, -0.75, -0.5, 0.5, -1.0, -1.0, -0.25, 0.75, ]);
    query102.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.submit([command_buffer101, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder100.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    query104.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    
    device20.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    const array7 = new Float32Array([-0.5, 0.0, 0.25, -1.0, 1.0, 0.5, 0.75, 1.0, 0.75, -0.5, 0.5, -1.0, -0.75, 0.0, 1.0, 1.0, 1.0, 0.5, 0.0, 0.75, -0.5, 0.0, 0.25, 0.25, -1.0, 0.0, 0.0, -1.0, 1.0, 0.0, 1.0, -1.0, 0.5, -1.0, -0.75, -0.25, -0.5, 1.0, 0.5, 0.75, -0.75, -0.5, 0.25, -0.25, 0.75, 0.0, -0.5, 0.0, -0.5, -0.25, 0.75, 0.25, -0.25, 0.5, 0.75, 1.0, 1.0, -1.0, 1.0, 0.75, -1.0, 0.25, 0.25, 1.0, 0.0, 1.0, -0.5, 0.75, -0.75, 0.75, -0.5, 0.0, 0.25, 0.25, 0.0, -1.0, -0.5, -0.25, 0.5, -0.5, -0.75, 0.5, 0.0, -0.75, -0.25, 0.5, 0.75, 0.25, 0.25, -0.75, -0.75, 0.25, -0.5, -0.75, 0.0, -0.25, -1.0, -0.75, 0.5, 0.75, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    query102.destroy()
    query200.destroy()
    const command_buffer100 = command_encoder100.finish();
    device10.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.submit([]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    query102.destroy()
    command_encoder300.clearBuffer(buffer300);
    
    query101.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("validation");
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
    query200.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    query105.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query105.destroy()
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder102.pushDebugGroup("mygroupmarker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    query103.destroy()
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query105.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query100.destroy()
    
    
    device20.pushErrorScope("validation");
    query102.destroy()
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    query202.destroy()
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device20.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    texture500.destroy();
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    query106.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer102.destroy()
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    query105.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder102.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device10.pushErrorScope("internal");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder102.insertDebugMarker("mymarker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
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
    query103.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    query106.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    query103.destroy()
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    device40.pushErrorScope("internal");
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const command_buffer500 = command_encoder500.finish();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder102.setPipeline(render_pipeline100);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    query105.destroy()
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer101.destroy()
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query100.destroy()
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const command_buffer600 = command_encoder600.finish();
    command_encoder102.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    device60.queue.submit([command_buffer600, ]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query105.destroy()
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    texture501.destroy();
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    texture100.destroy();
    
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder502.clearBuffer(buffer500);
    const array8 = new Float32Array([0.0, -0.25, -0.75, 1.0, 0.25, 0.5, -0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 0.25, -0.5, -0.75, -0.25, 0.25, 0.25, 0.0, -0.75, 0.75, -0.5, 1.0, -0.5, -0.5, -0.5, 0.0, -1.0, -0.75, 1.0, -0.25, 0.0, -1.0, 0.75, -1.0, 1.0, -1.0, 0.5, -0.5, -0.25, 0.75, -1.0, -0.75, 1.0, -1.0, -0.75, 0.75, 0.25, 1.0, -0.75, 0.5, 0.0, -1.0, -0.25, -0.25, 0.75, 0.5, 0.0, 0.75, -0.5, -0.75, 0.75, -1.0, 0.5, 0.75, -0.5, 1.0, 1.0, 0.5, -1.0, 0.0, -1.0, -1.0, -0.75, 0.25, 1.0, -0.5, -0.5, -1.0, -1.0, -0.25, 0.25, 1.0, -0.5, 0.75, 0.0, -0.75, 0.25, -0.5, 0.75, 1.0, -0.5, 0.25, 0.25, -0.25, 0.5, 0.75, -0.75, 0.0, 0.25, ]);
    query103.destroy()
    
    command_encoder102.resolveQuerySet(
        query105,
        0,
        32,
        buffer101,
        0
    )
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder501.copyBufferToBuffer(
        buffer500,
        0,
        buffer500,
        0,
        400
    );
    texture102.destroy();
    texture503.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query400.destroy()
    
    query102.destroy()
    device60.destroy();
    query100.destroy()
    device50.pushErrorScope("internal");
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    device10.pushErrorScope("out-of-memory");
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const command_buffer300 = command_encoder300.finish();
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.queue.submit([command_buffer300, ]);
    
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    buffer103.destroy()
    command_encoder102.resolveQuerySet(
        query106,
        0,
        32,
        buffer101,
        0
    )
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    command_encoder102.resolveQuerySet(
        query105,
        0,
        32,
        buffer101,
        0
    )
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device10.destroy();
    
    device40.destroy();
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_buffer501 = command_encoder501.finish();
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    command_encoder502.clearBuffer(buffer500);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    texture504.destroy();
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    query202.destroy()
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    command_encoder502.copyBufferToBuffer(
        buffer500,
        0,
        buffer500,
        0,
        400
    );
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    query500.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    command_encoder502.clearBuffer(buffer500);
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder503.copyBufferToBuffer(
        buffer501,
        0,
        buffer500,
        0,
        400
    );
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    command_encoder503.clearBuffer(buffer500);
    buffer501.destroy()
    device60.pushErrorScope("internal");
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    
    query501.destroy()
    const command_buffer504 = command_encoder504.finish();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const array9 = new Float32Array([-0.25, -1.0, -0.5, 1.0, 1.0, 0.75, 1.0, 1.0, -0.25, -0.25, 0.25, -0.75, 0.75, 0.0, -1.0, 0.5, -0.75, -1.0, 0.0, 1.0, 0.0, -0.75, 1.0, -0.75, -1.0, -0.5, 0.25, 1.0, 0.25, -0.25, 0.0, 0.0, 0.5, -1.0, -0.25, -0.5, 1.0, -0.75, -1.0, 0.75, 0.25, 0.75, -1.0, -0.5, -0.75, -0.75, 1.0, -0.25, 0.5, 1.0, -1.0, -0.5, 0.5, 0.25, -1.0, 0.0, 0.25, 0.0, 0.5, -0.75, -0.75, -0.25, 1.0, -0.25, -0.5, -0.5, -0.5, -0.5, -0.75, 0.0, -0.75, 0.75, -1.0, -0.25, 0.0, 1.0, 0.5, -0.25, -0.5, -0.75, -0.5, -0.75, -0.25, 0.0, -0.25, 0.25, -0.5, 0.25, 0.0, -0.5, 0.0, -1.0, -0.75, 1.0, -1.0, -0.25, -0.5, 0.5, -1.0, -0.5, ]);
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    command_encoder502.clearBuffer(buffer500);
    
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    command_encoder503.clearBuffer(buffer500);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    command_encoder502.clearBuffer(buffer500);
    command_encoder503.pushDebugGroup("mygroupmarker")
    query101.destroy()
    command_encoder502.pushDebugGroup("mygroupmarker")
    render_bundle_encoder501.setPipeline(render_pipeline501);
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    texture502.destroy();
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    command_encoder503.clearBuffer(buffer500);
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder502.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    
    query700.destroy()
    const texture507 = device50.createTexture({
        label: "texture507",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    command_encoder502.clearBuffer(buffer500);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    command_encoder503.insertDebugMarker("mymarker");
    command_encoder502.clearBuffer(buffer500);
    device70.destroy();
    texture507.destroy();
    texture300.destroy();
    const command_buffer400 = command_encoder400.finish();
    query502.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    
    command_encoder502.clearBuffer(buffer500);
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    texture506.destroy();
    command_encoder503.clearBuffer(buffer500);
    command_encoder503.popDebugGroup()
    query501.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder502.popDebugGroup()
    const command_buffer503 = command_encoder503.finish();
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer500, command_buffer504, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
}