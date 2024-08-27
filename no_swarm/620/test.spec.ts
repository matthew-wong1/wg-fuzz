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
    
    const array0 = new Float32Array([-1.0, 0.5, 0.25, -0.25, 0.25, 0.25, 0.75, 1.0, -0.5, 0.0, 0.75, 0.5, 0.75, 1.0, 0.25, 1.0, -0.25, -0.75, 1.0, -0.75, 0.5, 0.5, 0.25, -0.5, -1.0, -0.25, -0.25, 0.5, -0.75, -1.0, -0.25, 1.0, -0.5, 1.0, 0.75, -1.0, 0.25, 0.75, 0.25, 0.0, -1.0, -0.25, -0.25, 0.75, 1.0, 0.25, 1.0, 0.5, 0.5, 0.75, 0.5, 0.75, -0.75, -0.5, -0.5, 0.25, -1.0, -1.0, 0.5, -0.5, 1.0, 0.5, 0.5, -1.0, -0.25, 0.5, 0.25, 0.25, -0.5, 0.75, -0.25, 0.0, 0.5, -0.25, 0.75, -0.5, 0.75, -0.25, 0.5, 0.25, -1.0, -0.5, -1.0, 0.0, 0.75, 1.0, -1.0, -0.25, 0.75, -1.0, 0.25, 1.0, -0.75, 1.0, -0.5, 0.5, 1.0, -0.25, -0.75, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    
    texture100.destroy();
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    
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
    device10.pushErrorScope("internal");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([1.0, -0.75, 0.5, -0.5, 0.75, -0.75, 1.0, -0.25, 0.25, -0.25, 0.75, -0.75, 0.75, -0.25, 0.25, -0.5, 0.75, 0.5, -1.0, -0.25, -1.0, 0.25, 0.0, -1.0, 0.25, 0.25, -0.75, 0.25, 0.0, -0.25, 0.5, 0.25, 1.0, 0.25, -1.0, -0.5, 1.0, 0.25, 0.75, -0.5, -0.75, -0.75, -1.0, 0.25, 0.0, 0.5, -0.25, -0.25, -1.0, -0.25, -0.5, 0.75, 0.75, -0.5, -0.25, -0.75, -0.75, 0.0, 0.5, -1.0, 0.0, 1.0, -0.25, -0.25, 0.0, 0.5, 0.0, -0.75, -0.75, 0.5, -0.5, 0.75, -0.75, -0.25, 0.75, 0.0, -0.25, 0.25, -1.0, -0.25, 0.5, 0.0, 0.0, 0.0, -0.25, 0.0, -0.75, 1.0, -1.0, 0.75, -1.0, -0.75, -0.25, -0.75, -0.25, -0.5, 0.75, -0.25, -1.0, 0.75, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer100, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    const array2 = new Float32Array([0.25, -0.75, 0.25, -0.5, 0.5, -0.5, -1.0, -0.5, -1.0, 1.0, -0.75, -0.75, 0.5, 1.0, -0.25, -0.25, -0.75, 0.5, -1.0, -0.5, -0.5, 0.5, -0.5, -0.75, -0.75, 0.25, 0.75, 0.75, 1.0, -0.75, -0.75, -0.5, 0.0, -0.5, 0.0, -0.5, 0.75, 1.0, 0.75, 0.0, -0.25, 0.25, 0.0, 0.0, -1.0, 0.25, -0.75, -0.75, 0.5, 0.0, 0.0, 1.0, -0.5, -0.75, -0.75, 0.5, -0.75, 0.0, 0.75, 0.5, 0.25, 0.0, -0.25, 0.0, 0.5, -0.25, 0.5, 1.0, 0.75, -1.0, 0.5, -0.75, 0.25, -0.75, 1.0, -1.0, 0.0, -0.25, 0.5, -0.25, -0.75, 0.0, 0.0, 0.5, -0.75, 1.0, 1.0, -1.0, 0.0, -0.5, 0.25, 0.75, -0.25, -0.5, 1.0, 0.0, -0.25, -0.5, 0.5, -0.75, ]);
    const array3 = new Float32Array([0.5, 0.0, 0.0, -1.0, 0.0, 0.0, -1.0, 1.0, -1.0, -0.75, -1.0, -0.75, -0.25, -0.25, -1.0, -0.75, 0.0, 0.25, 0.25, -1.0, 0.25, 0.25, -0.5, -0.5, 0.5, 1.0, -1.0, -0.25, 0.75, -0.5, 0.0, -0.75, -0.5, -0.75, 0.25, -0.75, -0.75, 0.0, 0.0, -0.5, 1.0, 0.5, 0.5, -1.0, -1.0, 1.0, 0.0, -0.5, -0.5, -1.0, -1.0, 1.0, -0.75, -1.0, 1.0, 0.0, -0.25, 0.0, 1.0, 0.0, 1.0, -1.0, -0.25, 1.0, -1.0, 0.0, 0.25, 1.0, -1.0, -0.25, -0.5, -0.75, -1.0, 0.0, 0.25, -0.5, -0.75, 1.0, -0.25, 0.25, -1.0, 0.0, -0.75, 0.0, 0.25, 0.75, 0.25, 0.0, 0.25, -1.0, -1.0, -0.75, -0.25, 0.0, -0.5, -0.75, 0.75, 0.5, 0.25, 0.0, ]);
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.75, 0.0, 1.0, -0.75, -1.0, 0.75, 0.25, -0.75, -0.25, 0.0, -0.5, -0.25, 0.0, 0.0, 1.0, -0.25, 0.25, 1.0, 0.75, 0.25, 0.25, 1.0, 0.0, 0.0, -0.5, -1.0, -0.75, 0.25, -0.5, 0.75, -0.5, -0.75, 0.0, -1.0, 0.0, -0.25, -0.75, 0.5, -1.0, 0.5, -1.0, 0.75, -1.0, 0.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.0, -0.75, 1.0, 1.0, 0.75, -1.0, -0.25, 1.0, 0.25, -1.0, 1.0, -0.75, -0.5, 0.5, -0.25, -0.5, -0.25, 0.75, -0.75, 0.5, -1.0, 0.75, -1.0, 0.5, 0.75, 1.0, -1.0, 0.75, -0.75, 0.75, 0.0, 0.25, -1.0, -0.5, 1.0, -0.25, 0.25, 1.0, -0.75, 0.75, 1.0, 0.25, 0.25, -1.0, -1.0, -0.75, -0.75, 0.5, -1.0, 0.75, -0.25, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array5 = new Float32Array([-0.75, 1.0, 0.5, -0.5, 1.0, 0.5, -0.75, 0.25, 0.0, 0.5, 1.0, 0.5, -0.5, 0.25, 0.0, 0.75, 0.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.25, 0.25, -0.5, 0.0, -0.25, -0.75, 0.25, -0.25, 0.0, 0.5, 0.0, 0.0, 1.0, 0.75, 0.5, -0.5, 1.0, -0.25, -0.25, 0.25, 0.0, -0.5, 0.5, 1.0, 0.0, -0.25, 0.75, 1.0, 0.0, 0.25, -0.75, -1.0, -0.5, -0.5, -0.75, 1.0, 0.25, 0.25, -1.0, -0.75, -0.5, -0.75, 0.75, 0.5, -0.5, 0.0, 0.0, -0.25, -0.75, 0.25, 0.75, 0.25, 0.75, 0.25, -0.5, -0.25, 0.75, -0.25, 0.5, -0.75, 0.75, 0.0, 0.5, -0.5, 0.25, -0.25, -0.5, 0.75, 1.0, -1.0, -0.75, 0.25, -1.0, -0.25, 0.25, -0.25, -0.75, 1.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.destroy();
    const array6 = new Float32Array([1.0, -0.25, -0.5, 0.0, 0.25, 1.0, -0.75, -1.0, 0.0, 1.0, 1.0, 0.75, 0.5, 0.75, -1.0, -0.5, 0.25, 0.25, -0.75, 0.25, 0.0, 0.0, 0.25, 0.75, 0.0, 0.75, 0.25, 0.5, -0.5, -1.0, 0.25, 0.25, -0.25, 0.0, 0.75, 0.25, 0.5, 0.0, -1.0, 0.75, -1.0, 1.0, 0.25, 0.5, 1.0, 0.5, 0.0, -0.5, 0.5, -0.75, -0.75, -0.75, 0.75, -0.5, -0.5, 0.75, -0.75, -0.25, 0.5, -1.0, 1.0, 0.0, 1.0, 0.0, 1.0, 0.25, -0.25, 0.25, 0.0, -0.75, -1.0, -1.0, 0.0, 1.0, 0.0, 0.0, 0.5, -1.0, -0.25, -0.5, -0.25, 0.5, 1.0, 0.5, -0.25, 1.0, -0.25, -1.0, 1.0, -1.0, 0.5, 0.0, -1.0, 0.5, -0.75, -0.25, -0.75, -0.25, 0.5, 0.5, ]);
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array7 = new Float32Array([0.0, 0.75, -0.5, -0.25, 0.25, -0.5, -0.25, -0.5, -0.75, 0.25, 1.0, -1.0, -0.75, -0.5, 0.75, -0.25, 0.75, -0.5, 0.5, 0.0, -0.5, -0.75, -0.25, -0.75, 0.25, 0.25, 0.5, -0.5, -1.0, 0.25, 0.75, 0.5, 0.25, 1.0, 0.25, -0.5, 1.0, -1.0, 0.25, -0.75, -1.0, -0.5, 0.5, 0.0, 0.75, -0.75, 0.75, 0.25, 0.5, -1.0, 0.25, -0.5, 1.0, -0.5, -0.5, -1.0, 1.0, 0.5, 0.0, 0.25, 0.75, 0.25, 0.25, 1.0, -0.75, 0.75, -0.5, -1.0, 0.25, -1.0, -0.5, 1.0, 0.0, -0.5, 0.5, 1.0, -0.5, -1.0, 1.0, 0.75, -0.25, 0.25, -1.0, -0.5, 1.0, 0.25, -0.75, 1.0, -0.25, -1.0, 0.25, -1.0, -1.0, 0.25, 1.0, 0.0, -1.0, -1.0, -1.0, -1.0, ]);
    
    const array8 = new Float32Array([-0.75, -1.0, -0.25, -0.25, -0.5, -0.75, -0.75, 0.0, 0.75, 0.25, -0.5, 0.5, -0.75, -0.5, 0.0, -0.5, -1.0, 0.75, -1.0, 0.25, 0.25, 0.25, 1.0, -0.5, 0.5, 1.0, -1.0, 0.0, -0.75, -1.0, -0.5, 0.75, 0.75, 0.5, 0.5, 0.75, 0.75, 0.5, 0.75, -0.75, 1.0, -0.25, 1.0, -1.0, 0.75, 0.0, -0.5, 0.25, 0.0, 0.25, -0.5, -0.5, -1.0, 0.25, 0.25, 0.75, 0.75, 0.25, -0.5, 0.75, -0.5, -1.0, -1.0, 0.5, 0.75, -1.0, 0.0, 0.75, 0.5, 1.0, -0.5, 1.0, 0.75, 0.0, -0.5, 0.0, -0.25, -0.5, -1.0, 0.75, 0.5, 0.5, 0.25, 0.5, -0.5, 0.0, 0.75, 0.5, 0.0, -0.25, -1.0, 1.0, -0.75, -0.5, 1.0, 0.5, 0.0, -1.0, 1.0, 0.5, ]);
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder500.insertDebugMarker("mymarker");
    device50.pushErrorScope("out-of-memory");
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer500 = command_encoder500.finish();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.queue.submit([command_buffer500, ]);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    query501.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query500.destroy()
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    query501.destroy()
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    query500.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
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
    device40.pushErrorScope("internal");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const array9 = new Float32Array([0.5, 0.75, 0.75, 0.0, -0.5, 1.0, 0.25, 0.0, 1.0, 0.25, 1.0, 1.0, 0.25, -0.75, 0.5, -0.5, 0.5, 0.5, 0.75, -0.75, -1.0, 1.0, -0.75, 1.0, 0.5, -0.75, 0.75, -1.0, 0.0, -0.25, -0.5, 1.0, -0.25, -0.75, 0.75, 0.0, -0.75, 0.75, 0.0, 0.25, -1.0, 0.75, -0.5, -0.75, 0.5, 0.25, -0.25, 0.75, -0.5, 0.25, 0.5, -1.0, 0.0, -0.5, 0.0, -0.25, -0.25, -0.25, 0.75, 0.25, 1.0, 0.0, -1.0, 0.25, -0.25, 1.0, 0.5, 1.0, -0.75, 0.5, -0.25, 0.0, 0.0, -0.75, -1.0, -0.25, -0.25, 0.0, -0.5, 1.0, -0.5, 0.0, -0.25, 0.75, 0.5, 0.5, -1.0, 1.0, 0.75, -0.5, 0.0, -0.25, 0.25, -0.5, 0.5, 0.5, -0.5, -0.5, 0.25, 0.0, ]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    query500.destroy()
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_buffer501 = command_encoder501.finish();
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    query400.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    query502.destroy()
    query700.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device110.pushErrorScope("internal");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_bundle_encoder501.popDebugGroup();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    query501.destroy()
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    texture500.destroy();
    query502.destroy()
    device70.pushErrorScope("validation");
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    query500.destroy()
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    render_bundle_encoder500.popDebugGroup();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
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
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
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
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    buffer501.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device40.destroy();
    texture700.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder502.clearBuffer(buffer500);
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder500.setPipeline(render_pipeline501);
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    command_encoder503.clearBuffer(buffer500);
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
    device110.pushErrorScope("internal");
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query501.destroy()
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    device60.destroy();
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    query700.destroy()
    query501.destroy()
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    texture1101.destroy();
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    device70.destroy();
    
    query503.destroy()
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder1102.insertDebugMarker("marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    
    
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    render_bundle_encoder500.popDebugGroup();
    
    
    const pipeline_layout1102 = device110.createPipelineLayout({ 
        label: "pipeline_layout1102",
        bindGroupLayouts: [bind_group_layout1101]
    });
    
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    const pipeline_layout1103 = device110.createPipelineLayout({ 
        label: "pipeline_layout1103",
        bindGroupLayouts: [bind_group_layout1100]
    });
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    buffer1100.destroy()
    
    query1100.destroy()
    render_bundle_encoder1100.popDebugGroup();
    
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    query503.destroy()
    const bind_group_layout1102 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1102",
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
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    
    
    query1100.destroy()
    compute_pass_encoder5030.insertDebugMarker("marker")
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const pipeline_layout1104 = device110.createPipelineLayout({ 
        label: "pipeline_layout1104",
        bindGroupLayouts: [bind_group_layout1100]
    });
    command_encoder1100.pushDebugGroup("mygroupmarker")
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    render_bundle_encoder500.popDebugGroup();
    query501.destroy()
    command_encoder1100.popDebugGroup()
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    command_encoder1100.insertDebugMarker("mymarker");
    
    texture501.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    device80.pushErrorScope("internal");
    const render_pass_encoder11000 = command_encoder1100.beginRenderPass({
        label: "render_pass_encoder11000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view11000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    buffer503.destroy()
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
    
    query501.destroy()
    texture1100.destroy();
    render_bundle_encoder1102.insertDebugMarker("marker");
    const array10 = new Float32Array([0.0, -1.0, 0.25, 1.0, 0.75, 0.0, 0.5, -0.25, -1.0, 0.75, 0.25, 0.25, -0.5, 0.75, -0.75, -1.0, 1.0, 0.5, 0.5, 1.0, -0.25, 1.0, 0.0, 0.5, 1.0, 0.25, -0.5, 1.0, 1.0, -1.0, 0.5, 0.0, 0.75, -0.25, -0.75, -0.5, 0.0, -0.75, -0.5, -0.75, -0.5, -0.75, 1.0, -1.0, 0.0, -1.0, 0.5, 0.25, 0.75, -1.0, 0.0, 0.75, 0.0, -0.25, 0.25, -1.0, 1.0, 0.5, 1.0, -0.25, 0.5, -0.25, -0.25, 0.5, 0.75, -0.5, 0.25, -1.0, 0.75, -0.75, 1.0, 0.0, -0.5, -0.25, -0.75, 0.75, -0.5, -0.75, 1.0, 0.0, 0.5, 0.75, -1.0, -0.5, 0.75, 0.5, 0.25, -0.75, -0.75, -1.0, 0.75, -1.0, -1.0, 1.0, 0.25, 0.75, 0.0, -0.5, 0.25, -1.0, ]);
    
    const pipeline_layout1105 = device110.createPipelineLayout({ 
        label: "pipeline_layout1105",
        bindGroupLayouts: [bind_group_layout1101]
    });
    device50.pushErrorScope("validation");
    
    render_bundle_encoder1102.setPipeline(render_pipeline1100);
    const bind_group_layout1103 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1103",
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
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
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
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder501.setBindGroup(0, bind_group502);
    
    
    
    
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    
    query1100.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder11010 = command_encoder1101.beginRenderPass({
        label: "render_pass_encoder11010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view11000,
            },
        ],
        occlusionQuerySet: query1102
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    render_pass_encoder11010.pushDebugGroup("group_marker");
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    render_pass_encoder11000.setScissorRect(0, 0, texture1100.width / 2, texture1100.height / 2);
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query503
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5040.setPipeline(render_pipeline504);
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    buffer502.destroy()
    command_encoder1000.pushDebugGroup("mygroupmarker")
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1106 = device110.createPipelineLayout({ 
        label: "pipeline_layout1106",
        bindGroupLayouts: [bind_group_layout1103]
    });
    
    
    command_encoder1002.pushDebugGroup("mygroupmarker")
    const sampler1103 = device110.createSampler( { label: "sampler1103" } );
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    const pipeline_layout1107 = device110.createPipelineLayout({ 
        label: "pipeline_layout1107",
        bindGroupLayouts: [bind_group_layout1102]
    });
    
    render_pass_encoder11000.executeBundles([])
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    render_pass_encoder11000.pushDebugGroup("group_marker");
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5030.insertDebugMarker("marker")
    render_pass_encoder11010.setScissorRect(0, 0, texture1100.width / 2, texture1100.height / 2);
    
    compute_pass_encoder5020.setPipeline(compute_pipeline500);
    query500.destroy()
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1100 = device110.createBindGroup({
        label: "bind_group1100",
        layout: render_pipeline1100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1102,
                },
            },
        ],
    });

    render_bundle_encoder1102.setBindGroup(0, bind_group1100);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    device100.pushErrorScope("validation");
    
    command_encoder1000.popDebugGroup()
    
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    query501.destroy()
    const command_buffer1001 = command_encoder1001.finish();
    
    render_pass_encoder11000.setScissorRect(0, 0, texture1100.width / 2, texture1100.height / 2);
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder1000.insertDebugMarker("mymarker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder1003 = device100.createCommandEncoder({ label: "command_encoder1003" });
    
    
    buffer506.destroy()
    
    const command_encoder1102 = device110.createCommandEncoder({ label: "command_encoder1102" });
    
    query504.destroy()
    const command_encoder1004 = device100.createCommandEncoder({ label: "command_encoder1004" });
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query1102.destroy()
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    const query1103 = device110.createQuerySet({
        label: "query1103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder11010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder11020 = command_encoder1102.beginRenderPass({
        label: "render_pass_encoder11020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view11000,
            },
        ],
        occlusionQuerySet: query1101
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder11000.popDebugGroup();
    const command_buffer1003 = command_encoder1003.finish();
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group503);
    compute_pass_encoder5030.setPipeline(compute_pipeline500);
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    compute_pass_encoder5030.setBindGroup(0, bind_group504);
    render_pass_encoder11000.setPipeline(render_pipeline1100);
    render_pass_encoder11020.setPipeline(render_pipeline1100);
    device100.queue.submit([command_buffer1003, ]);
    const command_buffer1004 = command_encoder1004.finish();
    const buffer1103 = device110.createBuffer({
        label: "buffer1103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1104 = device110.createBuffer({
        label: "buffer1104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1101 = device110.createBindGroup({
        label: "bind_group1101",
        layout: render_pipeline1100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1104,
                },
            },
        ],
    });

    render_pass_encoder11000.setBindGroup(0, bind_group1101);
    const uint32_5030 = new Uint32Array(3);

    uint32_5030[0] = 100;
    uint32_5030[1] = 1;
    uint32_5030[2] = 1;

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5011, 0, uint32_5030, 0, uint32_5030.length);

    compute_pass_encoder5030.dispatchWorkgroupsIndirect(buffer5011, 0);
    render_pass_encoder11010.setPipeline(render_pipeline1100);
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group505);
    compute_pass_encoder5020.dispatchWorkgroups(100);
    render_pass_encoder11010.popDebugGroup();
    compute_pass_encoder5030.popDebugGroup()
    compute_pass_encoder5020.end();
    compute_pass_encoder5030.end();
    const command_buffer1000 = command_encoder1000.finish();
    command_encoder1002.popDebugGroup()
    const buffer1105 = device110.createBuffer({
        label: "buffer1105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1106 = device110.createBuffer({
        label: "buffer1106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1102 = device110.createBindGroup({
        label: "bind_group1102",
        layout: render_pipeline1100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1106,
                },
            },
        ],
    });

    render_pass_encoder11020.setBindGroup(0, bind_group1102);
    device100.queue.submit([command_buffer1004, ]);
    const command_buffer1002 = command_encoder1002.finish();
    const command_buffer503 = command_encoder503.finish();
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer501, command_buffer502, command_buffer503, ]);
    const buffer1107 = device110.createBuffer({
        label: "buffer1107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1108 = device110.createBuffer({
        label: "buffer1108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1103 = device110.createBindGroup({
        label: "bind_group1103",
        layout: render_pipeline1100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1108,
                },
            },
        ],
    });

    render_pass_encoder11010.setBindGroup(0, bind_group1103);
    device100.queue.submit([command_buffer1001, ]);
    device100.queue.submit([command_buffer1000, ]);
    device100.queue.submit([command_buffer1002, ]);
}