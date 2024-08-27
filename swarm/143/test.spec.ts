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
    
    
    
    
    
    
    const array0 = new Float32Array([1.0, -0.75, -1.0, 0.0, 0.75, -0.75, -0.75, 0.5, 0.25, 0.0, 0.5, -0.5, 1.0, 0.25, 0.0, 0.25, -1.0, 0.25, 0.75, 1.0, -0.25, -1.0, 0.5, 1.0, -0.75, 0.25, -0.75, 0.5, 1.0, -0.75, -0.75, -0.5, 1.0, 0.75, -0.75, -1.0, 1.0, 0.5, -1.0, -0.75, 0.0, 0.5, 0.5, 1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 1.0, -0.5, 1.0, 0.5, -0.25, -0.5, 0.5, 0.5, -0.75, -0.25, 1.0, 1.0, 0.0, 0.25, -0.25, 0.0, -0.5, 0.0, 0.75, 0.5, 0.75, 0.5, 0.5, -0.5, 1.0, -0.25, -0.75, 0.5, -0.75, 0.25, 0.25, -0.25, -1.0, -0.25, -0.75, -0.25, 0.0, 0.5, -0.75, 0.25, -1.0, -0.75, -0.5, 1.0, -0.5, -0.75, 1.0, 0.25, 0.25, 0.5, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array1 = new Float32Array([-1.0, 0.0, 1.0, -0.75, 0.0, 0.25, -1.0, -0.25, -1.0, 0.75, -0.5, 0.5, -0.25, -0.75, 0.75, -1.0, -0.5, 0.25, -0.75, 1.0, 1.0, 0.5, -0.25, -1.0, 0.75, 1.0, -0.25, 0.75, 0.5, 1.0, -0.25, 0.25, 0.75, -1.0, 0.25, -0.25, -0.5, 1.0, -0.75, 1.0, 0.25, 0.0, -0.25, 0.25, 0.25, 0.75, 0.0, 1.0, 0.25, -0.25, 0.25, -0.5, 0.25, 0.5, 0.25, -0.75, 0.75, 0.75, 1.0, -0.5, -0.75, 0.0, 0.5, -1.0, -0.25, -1.0, 1.0, -0.75, -0.25, -0.75, 0.25, 0.75, -0.5, 0.25, 1.0, 0.0, 0.75, 1.0, 0.25, -1.0, 0.0, 0.5, -1.0, -0.5, -0.25, 0.75, 0.5, -1.0, 1.0, 0.0, 0.0, 1.0, 0.75, 1.0, -0.5, -0.75, 0.0, 0.5, 0.25, 0.5, ]);
    
    
    const array2 = new Float32Array([0.75, 0.75, -0.75, -0.5, -0.25, 0.0, 0.25, 0.5, -0.25, -0.5, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.25, 0.25, 0.5, 0.5, 0.25, 0.75, 0.0, 0.5, 1.0, 1.0, -1.0, 0.25, 0.5, -0.5, 0.75, 0.25, -0.5, -1.0, 1.0, 0.25, 0.75, -0.25, 0.5, -0.25, -0.5, 0.25, 0.5, 0.0, -1.0, -0.75, 0.25, 0.0, 0.25, 0.5, 0.25, 0.75, -0.25, 0.25, -1.0, 0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 1.0, -0.25, 0.75, 0.0, -1.0, 0.75, -0.5, -0.5, 1.0, -0.25, -0.25, 0.5, 1.0, 0.5, -0.75, -0.25, 0.0, -1.0, -0.25, 0.5, 0.25, -0.75, 0.25, 1.0, 1.0, 0.0, -1.0, -0.25, -1.0, -0.75, -0.5, 1.0, 1.0, -0.5, ]);
    const array3 = new Float32Array([-0.5, -0.25, 0.0, 0.0, 0.0, 1.0, -0.5, 0.75, 0.75, 0.5, 0.25, 0.5, -0.25, 0.25, 0.5, -0.5, 0.0, 0.5, -1.0, -0.75, 0.25, 0.75, -1.0, -0.25, -0.5, 0.75, 0.5, 0.25, -0.5, 0.25, 0.0, 0.5, -0.25, 0.0, -0.5, -0.25, 0.5, 0.0, -0.25, 0.5, -1.0, 0.25, 0.75, -0.25, 1.0, -0.25, 1.0, 0.75, 0.5, 0.25, 1.0, 0.25, 0.75, -1.0, -1.0, -0.5, -0.75, -0.25, -0.5, -0.5, 0.0, -0.5, 0.0, 0.25, 0.5, -0.75, -0.75, -0.25, -0.25, 0.0, -1.0, -1.0, 0.75, 0.5, -1.0, -0.5, 0.75, -0.5, -1.0, -0.25, 0.25, 0.75, 0.0, 1.0, 0.5, 0.75, 0.0, -0.25, 1.0, 1.0, -0.75, 0.25, -0.5, 0.75, 0.5, -0.25, 1.0, -0.75, -1.0, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([1.0, 0.5, -1.0, 0.25, 0.75, 0.75, -0.25, 1.0, -1.0, 0.75, 0.5, 0.5, -1.0, 0.75, 0.0, -0.75, 0.75, -0.25, -0.25, -0.25, -0.25, -0.75, -0.5, 0.75, -0.5, -1.0, 0.75, 0.0, 0.75, 0.75, -1.0, 1.0, 0.5, 1.0, 1.0, 0.0, -0.5, -0.5, -0.5, 1.0, 0.25, -1.0, 0.75, -1.0, 0.5, 1.0, -0.5, 1.0, -0.75, -0.25, 1.0, 1.0, 0.0, -0.5, 1.0, 1.0, -0.75, 0.75, -0.5, 0.75, 0.25, 0.75, -0.5, -0.5, 0.75, 0.25, -0.75, 0.75, 0.25, 0.0, 0.25, 0.75, -0.75, 0.25, 1.0, -0.75, -0.5, 0.5, 0.25, 0.0, 0.0, 0.5, 1.0, -0.5, -0.75, 1.0, 0.75, -1.0, 0.5, 0.5, 0.0, 0.5, -1.0, -0.25, 0.5, -0.5, -0.75, -1.0, 0.75, -0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.popDebugGroup();
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.popDebugGroup()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    const command_buffer100 = command_encoder100.finish();
    device10.pushErrorScope("validation");
    render_bundle_encoder100.popDebugGroup();
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
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
    render_bundle_encoder101.setPipeline(render_pipeline100);
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    device10.pushErrorScope("out-of-memory");
    
    const array5 = new Float32Array([-1.0, 0.5, -0.5, -0.5, 0.5, 0.75, 1.0, 0.25, -1.0, 0.75, 0.75, 0.75, 1.0, 1.0, -0.25, 0.75, 0.5, -0.5, -0.5, -0.75, -0.25, -0.25, 0.5, 1.0, 0.25, -0.5, 0.25, -1.0, -0.5, -0.75, 0.0, -0.75, 0.5, -1.0, -0.75, 0.75, 0.25, -1.0, 0.25, 0.5, -1.0, 1.0, 0.0, -0.5, -1.0, 0.5, -0.75, 0.0, 0.5, 0.5, 0.5, 0.75, -0.75, 0.5, 0.25, -0.25, -0.5, 0.25, -0.75, 1.0, 0.25, -0.5, 0.5, -0.5, -0.75, 0.25, -0.75, -0.5, -0.5, 0.75, -0.25, -0.75, 0.5, 1.0, 0.5, 0.25, 0.75, -0.5, 0.5, -0.5, 0.75, 0.75, 0.25, -0.25, -0.5, -0.5, 0.5, -0.25, 1.0, -0.75, -0.75, -0.25, -1.0, 0.0, -1.0, 0.5, 1.0, 0.5, -0.5, 0.5, ]);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_bundle_encoder102.setPipeline(render_pipeline102);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline102);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
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
    
    device10.queue.submit([command_buffer100, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    query101.destroy()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("validation");
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query100.destroy()
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    query100.destroy()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer102 = command_encoder102.finish();
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_bundle_encoder102.popDebugGroup();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const array6 = new Float32Array([-1.0, 0.25, -0.25, 0.5, 1.0, 0.5, -0.5, 0.5, 0.0, -0.5, -0.5, -0.25, 0.5, 0.75, -0.75, -0.5, -0.5, 0.0, 1.0, 1.0, 0.75, 1.0, 0.5, -1.0, -0.75, -1.0, 0.5, 0.25, -0.5, -1.0, -0.75, 0.25, -1.0, 0.75, -0.25, 0.5, -0.5, -0.25, 0.5, 0.75, -0.25, 0.5, -1.0, -0.75, -0.5, 0.5, 0.0, -1.0, -1.0, -1.0, 0.0, -1.0, 1.0, 0.75, 0.75, -0.5, -0.75, 0.0, -0.25, 0.25, 1.0, 0.75, -0.25, 0.25, -0.5, -0.5, 0.25, -0.75, 0.25, 0.75, -0.25, 0.0, -0.5, -0.75, 0.25, -0.25, -0.75, 0.75, 1.0, 0.0, -0.75, 1.0, 0.0, -0.5, 0.0, 0.5, -0.25, 0.5, 0.5, -0.5, 1.0, -0.5, 0.5, 0.5, 0.75, 0.25, 0.75, -0.25, -0.25, -1.0, ]);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query100.destroy()
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    device10.pushErrorScope("internal");
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    const array7 = new Float32Array([-0.5, 0.5, 0.75, -0.5, -0.5, -0.75, 0.5, 0.5, -1.0, 0.0, 0.5, -0.25, -1.0, 0.75, -1.0, 0.25, 0.0, 0.0, 0.25, 1.0, -0.75, 0.5, -0.25, 0.25, -1.0, 1.0, -1.0, -0.5, -0.25, 0.5, -0.5, -0.25, 1.0, -0.75, -0.75, 0.25, 1.0, -0.75, 0.5, -1.0, -0.75, 0.75, -0.5, 0.25, 0.75, 1.0, -0.75, -0.25, -0.5, 0.0, 0.5, -1.0, -0.5, -0.5, -1.0, -0.75, -0.5, 1.0, -1.0, 0.5, 0.5, 0.5, 0.25, -0.5, -1.0, -1.0, -0.25, 1.0, 0.25, -0.5, -0.5, -0.25, 0.75, 0.75, 1.0, -1.0, -0.5, 0.25, 0.25, -1.0, 0.25, 0.75, 0.75, 0.25, 0.25, 0.25, -0.25, -1.0, -0.5, -1.0, 0.5, -1.0, -0.75, -0.75, 1.0, -1.0, -1.0, 0.75, 0.75, 1.0, ]);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    const command_buffer301 = command_encoder301.finish();
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer103 = command_encoder103.finish();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const array8 = new Float32Array([-0.25, 0.5, -0.25, 0.0, 0.25, 0.25, 0.75, -0.75, 0.5, -0.75, -0.5, 0.5, 1.0, 0.5, 0.75, -0.25, 0.5, 0.5, 0.75, 0.5, 1.0, -1.0, 0.0, 0.0, 0.0, 0.5, -0.25, 0.75, 0.25, -0.5, 0.25, 0.25, -0.5, 0.0, 0.75, -1.0, -1.0, 0.75, -0.5, 0.25, 0.5, 0.75, 0.75, -0.25, 0.75, 0.25, 0.75, -0.75, 0.75, -0.25, 0.5, -0.25, 0.25, -1.0, -1.0, -0.5, 0.25, 0.75, -0.5, 1.0, 0.0, 0.25, -0.75, 0.0, 0.0, -0.75, -0.25, -0.5, 0.5, 0.75, 0.5, -0.75, -1.0, -0.5, 0.0, 0.0, 1.0, -0.25, -1.0, 0.0, 0.5, -0.25, -0.25, -1.0, 0.75, 1.0, 1.0, -0.75, 0.5, 0.5, -0.5, 0.5, 0.5, -0.5, 0.0, 0.0, -0.25, -1.0, -0.5, -0.25, ]);
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder3000.popDebugGroup()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    query301.destroy()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder104.clearBuffer(buffer109);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    query102.destroy()
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder302.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer109,
        0,
        400
    );
    command_encoder104.clearBuffer(buffer109);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer109,
        0,
        400
    );
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    device10.queue.writeBuffer(buffer109, 0, array6, 0, array6.length);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const array9 = new Float32Array([-0.75, 0.75, -0.5, 0.75, 0.5, 0.25, -0.75, -0.25, -0.25, -0.25, 0.25, -0.75, 0.25, -0.5, -0.5, 1.0, 1.0, -0.5, -0.75, 0.0, 0.5, 0.0, 0.5, -1.0, -0.5, 1.0, -0.5, 0.75, 0.0, -0.5, 0.75, 0.75, -1.0, 0.75, -0.5, -1.0, -0.25, -1.0, 1.0, 0.0, 1.0, -1.0, 0.25, 0.5, -0.5, 0.25, 0.75, 0.75, 0.5, -1.0, 0.25, -0.75, 0.75, 0.25, -0.25, 0.0, -0.25, -0.25, -0.25, -0.5, 0.25, -0.5, -0.75, -0.5, -1.0, -0.25, 0.75, 0.5, 0.75, 0.75, 1.0, -0.75, 0.0, 0.75, 0.25, 0.25, 0.75, -0.25, -0.5, 0.25, -0.75, -0.25, -1.0, 0.0, 0.5, -0.75, 0.0, 1.0, 1.0, 1.0, 0.0, 0.5, -1.0, -1.0, -1.0, -0.25, 0.25, 0.25, 0.75, 0.25, ]);
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    command_encoder302.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    command_encoder303.clearBuffer(buffer300);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    command_encoder304.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device10.queue.writeBuffer(buffer109, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    
    query101.destroy()
    const command_buffer104 = command_encoder104.finish();
    device10.queue.writeBuffer(buffer109, 0, array7, 0, array7.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer109, 0, array6, 0, array6.length);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    device10.queue.writeBuffer(buffer109, 0, array7, 0, array7.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    device10.pushErrorScope("validation");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    command_encoder304.popDebugGroup()
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    render_bundle_encoder301.setPipeline(render_pipeline301);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const array10 = new Float32Array([-0.25, 0.75, 0.0, 0.0, -0.5, -1.0, 0.75, 1.0, -0.75, -0.25, -0.75, -0.25, -1.0, -0.5, 0.25, 0.5, -0.75, -0.5, -0.75, -1.0, 0.0, 0.75, 0.75, 1.0, 0.5, 0.5, 1.0, 0.0, 0.0, -0.25, 0.25, 1.0, -0.5, 0.25, 0.25, -0.25, -0.5, 0.25, -0.25, -1.0, -0.5, 0.0, 0.75, -0.75, 0.25, -0.25, 0.25, 0.25, 0.75, -0.5, -1.0, -1.0, -0.5, -1.0, 0.0, 0.75, 0.25, -1.0, 0.0, -0.75, -0.25, -1.0, 0.75, 0.25, -0.25, 0.5, 0.25, -0.25, 0.0, 0.75, 0.0, 0.5, 0.75, 0.5, 0.0, -1.0, -0.5, 0.5, 0.75, 0.75, 0.5, -0.25, 0.5, 0.25, -1.0, -0.25, 0.25, -0.25, -0.25, 1.0, 0.75, 0.5, 0.5, -0.75, 1.0, -1.0, 1.0, 0.0, -0.5, -0.25, ]);
    compute_pass_encoder1050.insertDebugMarker("marker")
    query103.destroy()
    
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    command_encoder106.clearBuffer(buffer109);
    render_bundle_encoder101.insertDebugMarker("marker");
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
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    render_bundle_encoder300.setPipeline(render_pipeline302);
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    render_bundle_encoder102.popDebugGroup();
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    command_encoder304.pushDebugGroup("mygroupmarker")
    
    device10.queue.writeBuffer(buffer109, 0, array7, 0, array7.length);
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
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
        vertex: {
            module: shader_module1014,
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
            module: shader_module1014,
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
    
    device10.queue.writeBuffer(buffer1012, 0, array9, 0, array9.length);
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
        vertex: {
            module: shader_module1014,
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
            module: shader_module1014,
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
    compute_pass_encoder3020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    const array11 = new Float32Array([-1.0, 0.75, -0.25, 0.0, -0.25, 0.5, -0.5, -0.75, 0.25, 0.5, 0.0, 0.5, 0.25, -0.5, 0.0, -0.25, 0.5, 0.5, 0.75, -0.5, 0.25, 0.75, -1.0, -0.5, -0.5, 1.0, 0.5, 0.75, 0.25, 0.0, 1.0, 0.75, -0.75, -1.0, 0.0, 0.5, -0.75, 0.75, 0.0, 1.0, -1.0, -1.0, 0.5, 0.75, -1.0, 0.0, 0.75, 0.75, 0.75, -0.25, -1.0, -0.75, 0.0, 1.0, 1.0, -0.5, -0.5, -0.25, 0.75, 0.5, 0.5, 0.75, -0.5, 0.5, -0.75, 1.0, 0.0, 0.75, -1.0, 0.0, 0.75, 0.75, -1.0, 0.0, 0.5, -0.25, 0.0, 0.0, 0.5, -1.0, 0.75, 0.5, 0.75, 1.0, -0.75, 1.0, 0.5, 0.5, -0.25, -0.5, -0.25, 0.75, -1.0, 0.0, -0.25, 0.75, -0.75, 0.5, -0.25, -1.0, ]);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    {
        await buffer109.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer109.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer109.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder301.insertDebugMarker("marker");
    query300.destroy()
    query103.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array12 = new Float32Array([-1.0, 0.0, 0.75, 0.0, 0.5, 0.25, 0.0, 1.0, 0.75, 1.0, -1.0, 0.5, -0.5, 0.5, 0.25, -1.0, 0.0, 0.75, 0.0, -0.5, -0.5, -0.25, 0.25, 1.0, -0.25, 0.5, 1.0, 0.25, 0.25, 0.0, -1.0, 1.0, -0.5, 0.75, 1.0, 0.5, -0.75, -0.25, -0.25, 0.0, -1.0, -1.0, -0.5, -0.25, 0.25, 0.0, -1.0, 1.0, 0.25, -0.75, 0.25, 1.0, -1.0, 0.75, -0.25, -0.25, -1.0, 1.0, 0.0, -0.5, 1.0, 0.0, 1.0, -0.5, -0.5, -0.5, -1.0, -1.0, 0.75, 0.25, -0.25, -0.25, 0.75, 0.0, -0.5, -0.75, 0.75, 1.0, -1.0, 0.0, -0.25, -0.5, -0.75, -0.75, 0.25, -0.25, 0.0, 0.75, -0.75, 0.0, 0.5, 1.0, -0.5, -1.0, -0.25, -0.25, -0.75, 0.0, 0.5, -0.25, ]);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query100.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
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
    
    device10.queue.writeBuffer(buffer109, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    device10.queue.writeBuffer(buffer109, 0, array12, 0, array12.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    compute_pass_encoder3030.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer1012, 0, array8, 0, array8.length);
    
    device10.queue.writeBuffer(buffer109, 0, array7, 0, array7.length);
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
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
    compute_pass_encoder3020.popDebugGroup()
    query300.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    query300.destroy()
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.writeBuffer(buffer109, 0, array11, 0, array11.length);
    
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    command_encoder106.clearBuffer(buffer1012);
    query100.destroy()
    const command_buffer106 = command_encoder106.finish();
    query102.destroy()
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
        vertex: {
            module: shader_module1011,
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
            module: shader_module1011,
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
    const render_pipeline1022 = device10.createRenderPipeline({
        label: "render_pipeline1022",
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
    const render_pipeline1023 = device10.createRenderPipeline({
        label: "render_pipeline1023",
        vertex: {
            module: shader_module1011,
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
            module: shader_module1011,
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
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer109, 0, array6, 0, array6.length);
    command_encoder304.clearBuffer(buffer300);
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    render_bundle_encoder301.popDebugGroup();
    device10.queue.writeBuffer(buffer1012, 0, array9, 0, array9.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer109, 0, array10, 0, array10.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const render_pipeline1024 = device10.createRenderPipeline({
        label: "render_pipeline1024",
        vertex: {
            module: shader_module1013,
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
            module: shader_module1013,
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
    command_encoder304.clearBuffer(buffer300);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer109, 0, array9, 0, array9.length);
    render_bundle_encoder101.insertDebugMarker("marker");
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
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer1012, 0, array6, 0, array6.length);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    query103.destroy()
    compute_pass_encoder3030.insertDebugMarker("marker")
    const render_pipeline1025 = device10.createRenderPipeline({
        label: "render_pipeline1025",
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
    device10.queue.writeBuffer(buffer1012, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    
    device10.queue.writeBuffer(buffer109, 0, array7, 0, array7.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    var shader_module1015_code = "";
    try {
        shader_module1015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1015 = await device10.createShaderModule({ label: "shader_module1015", code: shader_module1015_code })
    
    
    query302.destroy()
    {
        await buffer1012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1012.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    const render_pipeline1026 = device10.createRenderPipeline({
        label: "render_pipeline1026",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    device10.queue.writeBuffer(buffer1012, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    {
        await buffer109.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer109.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer109.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer109, 0, array6, 0, array6.length);
    
    device10.queue.writeBuffer(buffer1012, 0, array12, 0, array12.length);
    const render_pipeline1027 = device10.createRenderPipeline({
        label: "render_pipeline1027",
        vertex: {
            module: shader_module1011,
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
            module: shader_module1011,
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
    
    const render_pipeline1028 = device10.createRenderPipeline({
        label: "render_pipeline1028",
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
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer1012, 0, array8, 0, array8.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer109, 0, array11, 0, array11.length);
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    query103.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    var shader_module1016_code = "";
    try {
        shader_module1016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1016 = await device10.createShaderModule({ label: "shader_module1016", code: shader_module1016_code })
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
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
    
    device10.queue.writeBuffer(buffer1012, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer109, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    query103.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pipeline1029 = device10.createRenderPipeline({
        label: "render_pipeline1029",
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
    render_bundle_encoder301.popDebugGroup();
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    query102.destroy()
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer109, 0, array12, 0, array12.length);
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    query103.destroy()
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
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline1030 = device10.createRenderPipeline({
        label: "render_pipeline1030",
        vertex: {
            module: shader_module1013,
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
            module: shader_module1013,
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
    render_bundle_encoder302.setPipeline(render_pipeline304);
    const render_pipeline1031 = device10.createRenderPipeline({
        label: "render_pipeline1031",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    
    device10.queue.writeBuffer(buffer1012, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer300, 0, array12, 0, array12.length);
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer305 = command_encoder305.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer305, ]);
    device10.queue.submit([command_buffer104, ]);
}