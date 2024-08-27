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
    
    
    const array0 = new Float32Array([0.5, 1.0, 0.5, -0.75, -1.0, 0.0, 0.5, -0.75, 0.75, -0.75, -0.5, -0.5, -0.75, 0.75, 0.75, -0.5, 0.5, 0.5, 0.75, 1.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.25, 0.25, -1.0, 0.5, -1.0, 0.5, 0.75, 0.0, 0.25, -0.75, 0.5, -0.25, -0.25, 0.25, 1.0, -0.75, 0.75, -1.0, -0.5, 0.5, 0.25, 0.0, -0.5, -0.25, 0.0, -0.5, 0.0, -1.0, -1.0, -0.25, -0.5, 0.5, 0.5, -1.0, -0.25, -1.0, -0.75, 0.0, 0.5, 0.0, 1.0, -1.0, 0.75, 0.5, 0.25, -0.25, -0.5, -0.5, 0.75, -0.5, 0.75, 1.0, -0.5, 0.0, -0.5, -0.25, -1.0, -0.25, -1.0, 0.5, -0.25, 0.25, 1.0, 0.75, 0.75, 0.0, 0.0, -1.0, -0.25, 0.25, 0.5, -0.5, 0.5, 0.25, -0.25, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_buffer000 = command_encoder000.finish();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer000, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([-0.25, -0.75, 0.0, 0.0, 1.0, 1.0, 0.0, 0.5, 0.75, 0.5, 0.5, 0.25, -1.0, -0.75, 0.25, 1.0, -1.0, 0.25, 0.25, -0.25, -0.75, 0.25, -1.0, -0.75, 0.0, 0.75, 0.0, 0.75, -0.25, 1.0, -1.0, -1.0, 0.25, 0.25, 1.0, -0.25, -1.0, -0.75, 1.0, -0.5, -0.75, -0.5, -0.5, 0.25, 1.0, -0.5, 0.25, -1.0, 0.25, -0.75, -0.25, -0.25, -0.25, -0.5, 1.0, -0.25, -0.5, -0.5, 0.5, -0.25, -0.25, 1.0, 0.5, 0.75, 0.5, 0.0, 0.0, 1.0, -1.0, 1.0, 0.25, -0.25, 0.75, 1.0, -0.75, -1.0, 0.25, 0.25, -1.0, -0.5, -0.25, 0.75, 1.0, 0.5, -0.25, 0.25, -0.25, 0.0, -1.0, 0.75, 0.75, -0.75, 0.0, 1.0, -0.75, 0.5, 0.75, 1.0, -0.75, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    query100.destroy()
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device10.destroy();
    device00.destroy();
    
    const array2 = new Float32Array([-0.25, 0.5, -0.5, 0.25, -0.5, -0.25, -1.0, 0.75, 0.25, 0.0, -0.25, 0.25, 1.0, 0.5, -1.0, 0.5, -0.25, -0.75, 0.75, 0.75, 0.75, 0.0, -0.75, 0.0, -0.25, 1.0, 0.0, 1.0, -0.75, -1.0, 0.75, 0.5, -1.0, -0.75, -1.0, 0.0, 0.25, -0.75, 0.25, -0.75, -0.5, 0.75, 0.5, -1.0, 0.75, -1.0, -0.5, -1.0, -0.75, -0.25, 1.0, -1.0, -0.25, -1.0, 0.25, 0.0, -0.25, -0.25, -0.25, 0.5, 0.5, 0.0, 0.75, -0.25, -0.75, -1.0, -0.75, -0.75, -0.25, -0.5, -0.5, -1.0, -0.5, -1.0, -1.0, 0.75, 0.0, -0.5, 0.5, 0.0, 0.75, -0.5, 0.5, 0.0, 0.25, -0.75, -0.25, -0.75, -0.5, -0.75, 0.75, -0.25, -1.0, 0.5, 0.0, 0.0, 0.75, -0.5, 0.5, -0.25, ]);
    const array3 = new Float32Array([-1.0, -0.5, 0.25, 0.75, -1.0, 0.75, 1.0, 0.25, 0.0, 0.25, -0.5, 0.0, 0.5, 1.0, -0.25, 1.0, 0.5, -0.75, -0.75, -0.75, 0.0, 0.75, -1.0, 0.0, 1.0, 0.25, 1.0, 0.0, 0.25, 0.0, -1.0, -0.5, 0.75, 0.25, -1.0, -0.5, 1.0, -0.25, 0.0, -0.25, -0.75, 0.0, -0.25, -0.75, -1.0, 0.0, -0.5, 0.25, -1.0, 1.0, 0.5, -0.25, 0.5, -1.0, 0.5, -0.25, 1.0, 0.75, 1.0, -0.5, -0.75, 0.25, -0.75, 0.75, 1.0, -0.25, -1.0, 0.25, -0.5, 0.5, 0.25, -1.0, 0.25, -0.25, 0.0, 0.5, -0.75, -0.75, 0.0, 0.25, 0.5, -1.0, 1.0, 0.0, 0.0, 0.5, 0.75, -0.25, 1.0, 0.0, 0.5, -1.0, 0.25, -0.75, -0.5, -1.0, 0.75, 0.25, -0.75, -0.25, ]);
    
    
    const array4 = new Float32Array([0.5, 1.0, 0.5, 0.0, -1.0, -1.0, 0.75, -0.25, 0.75, 1.0, -0.5, 0.75, 1.0, 0.25, -0.25, 0.75, 1.0, 0.5, -1.0, -0.5, 1.0, 0.25, 0.75, 0.0, -0.25, 0.5, -0.25, -0.25, 0.0, -0.75, 0.5, -0.75, -0.75, 0.75, -0.5, 0.25, -1.0, 1.0, 0.75, -0.25, 0.75, 0.0, 0.5, 0.75, -0.5, 0.25, -1.0, 0.5, 0.75, -0.75, -0.5, 0.5, 0.0, -1.0, -0.75, -1.0, 1.0, -0.5, 0.75, -1.0, 0.0, 0.25, 0.5, 1.0, 1.0, -0.75, 0.0, 0.25, -0.25, 1.0, 0.0, -0.5, -0.5, -0.25, 0.25, 0.0, 0.0, -1.0, 0.0, -0.75, -0.75, 1.0, 0.75, 1.0, -1.0, -0.75, -0.75, 0.75, 1.0, -0.25, -0.25, 0.0, -0.75, -0.75, 1.0, -0.75, 0.75, -0.5, -0.25, 1.0, ]);
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([0.75, -0.5, -0.25, 0.0, -0.75, -0.25, -1.0, 0.0, 0.75, 1.0, 0.25, 0.5, -0.5, 0.25, 1.0, -1.0, 0.0, 0.0, -1.0, 0.25, -0.25, 1.0, 0.5, 0.0, -0.75, 0.75, 0.25, 0.25, 1.0, -0.75, 1.0, 0.5, -0.25, 0.25, 0.5, -1.0, 0.0, -0.75, 1.0, 0.25, -1.0, -0.25, 0.25, -0.5, 0.75, 0.0, -0.25, 0.5, -0.25, 1.0, 0.75, 0.75, -0.25, 0.0, 0.0, 1.0, 0.75, 0.5, 0.0, 0.5, 1.0, -0.5, 0.5, -0.5, -0.75, 0.25, -0.5, 0.25, 1.0, 0.5, 0.0, -0.75, 0.25, 1.0, 0.75, -0.25, 1.0, 0.5, -0.25, -1.0, 0.25, 0.25, 0.75, 0.5, 0.5, -0.25, 0.25, -0.25, 0.0, -0.5, 0.25, 1.0, -1.0, 0.75, -0.5, -0.75, 0.75, 0.5, -1.0, 0.25, ]);
    const array6 = new Float32Array([0.0, -0.25, -0.75, -1.0, 0.75, 1.0, 0.0, 0.0, 0.0, -0.75, -0.75, -0.5, -0.25, 0.25, 0.25, -1.0, 0.0, 0.0, 0.0, 0.75, 1.0, -0.75, -1.0, 0.75, -0.75, -0.75, -0.75, 0.5, -0.25, 1.0, 0.0, -1.0, 0.0, 0.25, -0.25, 0.5, 1.0, -0.5, 1.0, -0.75, 0.75, -0.75, -0.5, 0.75, 0.5, 0.5, 0.0, 0.25, 1.0, 1.0, -0.5, 0.25, -1.0, -1.0, 0.5, -0.5, 1.0, -1.0, 0.25, 0.0, 0.75, -0.25, -0.25, 0.5, 1.0, -0.25, 0.0, 0.75, 0.5, 0.75, 0.5, 0.5, 0.25, 0.5, -0.75, 0.75, 1.0, 1.0, 0.5, 0.25, 0.0, 1.0, -0.25, 1.0, -0.25, -0.25, -0.5, -1.0, -0.75, 0.0, 0.0, -0.75, 0.5, 0.5, -0.25, -1.0, -1.0, -0.25, -0.5, 0.5, ]);
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("out-of-memory");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    buffer200.destroy()
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    buffer201.destroy()
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    device30.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.destroy();
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    
    const array7 = new Float32Array([-1.0, 1.0, 0.0, -1.0, 0.75, -0.5, 1.0, 0.5, -0.75, 0.25, -1.0, -1.0, 1.0, 0.25, -1.0, -0.75, -0.75, 0.75, 0.75, 0.75, 0.5, 0.0, 0.75, 1.0, -0.25, -1.0, -1.0, -1.0, -1.0, 0.0, -1.0, 0.0, -0.5, 0.5, -1.0, 0.5, 0.5, -0.75, 0.75, -0.25, 0.75, -0.5, 1.0, -1.0, -0.75, -1.0, -0.5, 0.25, 1.0, 0.0, -0.5, 0.25, 0.75, 0.25, 0.25, -0.75, -0.25, 0.25, 0.75, 0.75, 0.5, 0.5, 0.0, -1.0, 0.5, 0.5, -0.75, 0.75, 0.25, -0.75, 0.5, -0.75, -1.0, 0.0, 0.5, 1.0, -0.25, -0.75, -0.5, 1.0, -0.5, 0.75, -0.5, 0.75, 0.25, 1.0, -0.5, 0.75, -0.5, 0.25, 0.0, -0.5, 1.0, -0.75, 1.0, -1.0, 0.75, 0.5, -1.0, -1.0, ]);
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const array8 = new Float32Array([-0.5, -0.25, -1.0, -0.5, 0.25, -0.25, 0.0, 0.5, 0.0, -1.0, 0.5, 0.0, 0.0, 0.0, 0.0, -1.0, 1.0, -1.0, -0.25, -0.25, 0.25, 0.25, 0.5, 0.0, 1.0, -1.0, 1.0, 0.25, -1.0, 0.0, 0.25, 0.75, -0.75, 0.75, -0.25, -0.5, 1.0, 1.0, 0.5, 0.0, -0.5, -1.0, 0.5, -1.0, 0.5, -0.5, -1.0, 0.75, -0.25, 0.5, 0.0, -0.25, -0.75, 0.25, 0.0, 0.5, 1.0, 0.25, 0.5, 0.25, 0.75, -1.0, -0.75, 1.0, 0.5, 1.0, -0.5, -0.75, -1.0, -1.0, -0.25, 0.75, -1.0, 0.5, -0.25, -0.25, -0.5, -0.25, -0.75, 0.0, -0.75, 0.5, 0.0, 0.25, 0.0, 0.0, 1.0, 0.0, -1.0, -0.75, -1.0, 0.5, 0.75, 0.25, -0.5, -0.25, -1.0, -1.0, 1.0, -0.25, ]);
    
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
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
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
    
    device10.destroy();
    
    
    device30.pushErrorScope("out-of-memory");
    query300.destroy()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    buffer400.destroy()
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    
    
    
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device40.pushErrorScope("validation");
    
    
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.25, 0.0, -0.25, -0.5, -0.5, -0.75, 0.75, -0.5, 0.5, -0.25, -1.0, -1.0, 1.0, -1.0, 0.5, -1.0, 0.0, 0.25, 0.75, -0.5, 1.0, -0.75, 0.0, -0.5, -0.75, -0.75, -0.5, -1.0, -0.25, 0.5, 0.5, -1.0, -0.5, 0.5, -0.75, 0.25, -0.75, 1.0, 0.5, 0.75, 0.0, 0.25, -0.75, 0.0, 1.0, 0.5, -0.75, 0.5, -0.25, 0.75, 0.75, 0.25, -0.5, 0.75, 0.75, 1.0, 1.0, -0.5, -0.5, 1.0, -0.75, -0.75, -0.5, 0.75, -0.75, 0.0, -1.0, 0.0, 0.0, -0.75, 1.0, 1.0, 0.75, 0.5, -0.5, 1.0, -0.75, -0.5, 0.75, 0.5, 0.5, -0.5, 0.5, -0.75, 1.0, 0.0, 0.25, 0.5, 1.0, 1.0, 0.25, 1.0, 0.25, -1.0, 0.5, -0.25, -0.5, 1.0, 0.25, -0.5, ]);
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture100 = device10.createTexture({
        label: "texture100",
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    texture400.destroy();
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
    render_bundle_encoder402.setPipeline(render_pipeline401);
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    query401.destroy()
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    query401.destroy()
    const array10 = new Float32Array([1.0, -0.5, 0.0, 0.25, -0.25, 0.25, -0.75, 1.0, 0.25, 0.5, -0.5, 1.0, 0.75, -1.0, 0.25, 0.25, -0.25, -1.0, 0.5, 0.0, -0.5, 0.75, 0.25, -1.0, -0.25, 0.0, -0.25, 0.75, 0.5, 0.0, 1.0, 0.0, 0.0, -1.0, -0.25, -0.5, -1.0, -0.75, 0.25, 1.0, -0.75, -0.75, 0.75, -0.25, 0.5, -0.75, 0.75, -1.0, 0.25, -0.75, -0.75, -1.0, -0.5, 1.0, -0.25, 1.0, 0.75, 1.0, -0.25, 0.5, 0.0, -1.0, -0.25, 0.0, -0.75, 0.0, 1.0, 1.0, 0.0, 0.75, 0.25, 0.75, 1.0, 0.5, 0.5, -0.25, 0.5, 0.75, 0.25, -0.75, -0.5, 0.5, 0.25, -0.75, 0.0, -0.75, 0.25, -0.5, 0.0, 0.0, -1.0, 0.25, 0.25, -0.25, -1.0, 0.5, 0.25, 1.0, 0.75, -0.25, ]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder400.setPipeline(render_pipeline401);
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    device60.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder401.setPipeline(render_pipeline401);
    
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    
    device50.pushErrorScope("out-of-memory");
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    command_encoder401.insertDebugMarker("mymarker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.popDebugGroup();
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    command_encoder401.copyBufferToBuffer(
        buffer403,
        0,
        buffer404,
        0,
        400
    );
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    buffer400.destroy()
    render_bundle_encoder402.setVertexBuffer(0, buffer400);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    command_encoder401.clearBuffer(buffer404);
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    buffer400.destroy()
    
    
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder402.setIndexBuffer(buffer400, "uint16");
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
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

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    render_bundle_encoder402.drawIndirect(buffer400, 0);
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5000.setPipeline(render_pipeline501);
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    command_encoder401.insertDebugMarker("mymarker");
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.copyBufferToBuffer(
        buffer406,
        0,
        buffer403,
        0,
        400
    );
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer401,
        0
    )
    
    
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    buffer500.destroy()
    render_pass_encoder5000.insertDebugMarker("marker");
    
    
    device40.pushErrorScope("out-of-memory");
    command_encoder400.copyBufferToBuffer(
        buffer403,
        0,
        buffer404,
        0,
        400
    );
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
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
    buffer406.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder402.popDebugGroup();
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    command_encoder402.pushDebugGroup("mygroupmarker")
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.popDebugGroup();
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer405,
        0
    )
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder402.clearBuffer(buffer407);
    render_bundle_encoder400.popDebugGroup();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder401.clearBuffer(buffer407);
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    texture500.destroy();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    device40.queue.writeBuffer(buffer407, 0, array3, 0, array3.length);
    command_encoder402.resolveQuerySet(
        query402,
        0,
        32,
        buffer407,
        0
    )
    command_encoder401.copyBufferToBuffer(
        buffer403,
        0,
        buffer407,
        0,
        400
    );
    command_encoder400.copyTextureToBuffer(
        {
            texture: texture401
        },
        {
            buffer: buffer407
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder400.copyBufferToBuffer(
        buffer404,
        0,
        buffer404,
        0,
        400
    );
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
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    command_encoder401.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    compute_pass_encoder4020.setPipeline(compute_pipeline404);
    render_bundle_encoder402.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer407, 0, array7, 0, array7.length);
    command_encoder401.insertDebugMarker("mymarker");
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    command_encoder401.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    command_encoder400.copyTextureToTexture(
        {
            texture: texture400
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    buffer407.destroy()
    
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    command_encoder401.copyTextureToBuffer(
        {
            texture: texture401
        },
        {
            buffer: buffer404
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    
    
    render_bundle_encoder500.setPipeline(render_pipeline503);
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    command_encoder401.clearBuffer(buffer404);
    command_encoder400.copyBufferToBuffer(
        buffer403,
        0,
        buffer407,
        0,
        400
    );
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.insertDebugMarker("marker");
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group402);
    device40.queue.writeBuffer(buffer404, 0, array10, 0, array10.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder4000.setPipeline(render_pipeline400);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
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
    
    
    
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    query401.destroy()
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
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_pass_encoder5000.setBindGroup(0, bind_group500);
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
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
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer406,
        0
    )
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder4010.setPipeline(render_pipeline402);
    
    render_pass_encoder5000.insertDebugMarker("marker");
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
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout403]
    });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
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
    command_encoder401.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    
    device50.queue.submit([]);
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder402.clearBuffer(buffer404);
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    query400.destroy()
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    buffer4010.destroy()
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout403]
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
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
        layout: render_pipeline503.getBindGroupLayout(0),
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

    render_bundle_encoder502.setBindGroup(0, bind_group502);
    device50.pushErrorScope("internal");
    command_encoder403.pushDebugGroup("mygroupmarker")
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout409,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder4020.setPipeline(render_pipeline400);
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group403);
    device40.queue.writeBuffer(buffer404, 0, array8, 0, array8.length);
    
    device40.queue.writeBuffer(buffer404, 0, array7, 0, array7.length);
    query401.destroy()
    
    texture401.destroy();
    render_pass_encoder4000.popDebugGroup();
    
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout409,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder502.setVertexBuffer(0, buffer505);
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query402
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    command_encoder403.resolveQuerySet(
        query402,
        0,
        32,
        buffer402,
        0
    )
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    
    query401.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder502.drawIndirect(buffer506, 0);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const command_buffer501 = command_encoder501.finish();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    device40.queue.writeBuffer(buffer404, 0, array9, 0, array9.length);
    buffer504.destroy()
    device40.queue.writeBuffer(buffer404, 0, array8, 0, array8.length);
    command_encoder403.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4021.setPipeline(render_pipeline401);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4013, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4013, 0);
    command_encoder403.popDebugGroup()
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group404);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.setVertexBuffer(0, buffer402);
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4017,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group405);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4020.setVertexBuffer(0, buffer4012);
    render_pass_encoder4000.setIndexBuffer(buffer4015, "uint16");
    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4019,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group406);
    render_pass_encoder4010.setVertexBuffer(0, buffer409);
    render_pass_encoder4020.drawIndirect(buffer4017, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder4000.draw(3);
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4010.end();
    render_pass_encoder5000.setVertexBuffer(0, buffer500);
    command_encoder401.popDebugGroup()
    device40.queue.submit([]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4020, 0);
    render_pass_encoder4020.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder5000.draw(3);
    render_pass_encoder4021.setVertexBuffer(0, buffer4020);
    render_pass_encoder4021.draw(3);
    render_pass_encoder4021.drawIndirect(buffer4018, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4020.end();
    render_pass_encoder4010.drawIndirect(buffer4016, 0);
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder4020.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder5000.end();
    render_pass_encoder4020.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4000.end();
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    render_pass_encoder4021.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4020.drawIndexedIndirect(buffer4020, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4020, 0);
    command_encoder402.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder5000.draw(3);
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder4020.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4010.end();
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4000.drawIndirect(buffer4013, 0);
    render_pass_encoder4020.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4021.end();
    render_pass_encoder4020.drawIndirect(buffer4013, 0);
    render_pass_encoder4010.drawIndirect(buffer4012, 0);
    render_pass_encoder4020.end();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4000.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4000.setIndexBuffer(buffer4010, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4021.end();
    device50.queue.submit([]);
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group407);
    render_pass_encoder4020.drawIndexed(3);
    compute_pass_encoder4020.end();
}