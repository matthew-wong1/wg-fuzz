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
    const array0 = new Float32Array([0.75, 0.0, 0.5, 0.25, -1.0, 0.0, -0.75, 0.75, 0.75, 0.5, 0.5, -0.75, 0.0, 0.25, 0.75, -0.75, -0.25, 0.0, 0.0, -0.25, -0.75, -0.5, 0.5, 0.5, -0.5, 0.75, 0.75, -0.5, 1.0, 0.5, 0.25, 1.0, -0.5, -0.5, -0.75, -0.25, -0.25, -1.0, 0.5, -0.75, 0.5, 0.0, 0.25, 0.0, 1.0, 0.25, -0.25, 0.25, 0.75, -0.25, -0.25, -0.25, 0.75, -0.75, -1.0, -1.0, 1.0, 1.0, 1.0, 0.0, 0.0, -0.75, 1.0, 0.0, 1.0, -0.75, 0.0, 1.0, -0.5, -0.5, 0.25, -0.5, 0.75, 0.25, 0.5, 0.0, 0.5, -0.75, -0.25, -0.5, -1.0, 0.75, 0.0, -0.5, 0.0, -0.5, 1.0, 1.0, -0.25, 1.0, -0.5, 0.5, 1.0, 0.25, 0.75, 0.75, 0.5, -0.25, -0.75, -0.25, ]);
    
    
    
    
    const array1 = new Float32Array([-0.5, 0.0, -0.5, 0.75, 0.5, 0.75, 0.0, 1.0, 1.0, 1.0, 0.0, 0.25, 0.75, 0.5, 1.0, 1.0, -1.0, -1.0, 0.5, -0.25, 0.0, 0.0, -1.0, 0.0, -0.75, 0.25, 0.5, 0.75, 0.0, -0.75, -1.0, -0.75, 0.75, -0.25, 0.0, -0.25, 1.0, 0.0, -0.25, -0.5, 0.5, 0.25, 1.0, 0.5, 0.75, 0.75, 0.75, 0.75, -0.5, 0.0, 0.5, -1.0, 0.75, 0.75, -0.75, -0.25, -0.25, -0.25, 1.0, -0.25, -0.5, -1.0, 0.0, -0.25, -0.5, -0.5, -1.0, 0.0, -1.0, 0.25, -0.75, 1.0, -0.75, 0.75, -0.25, 0.25, -0.5, 1.0, 0.75, -0.25, -0.5, -1.0, 0.5, 0.25, -0.75, 0.5, -0.75, -1.0, 0.5, 1.0, -0.5, -0.25, -0.75, 0.5, -0.25, -0.25, 0.25, 0.75, 1.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.5, -0.75, 1.0, -0.25, 0.5, 0.5, 0.75, 0.0, 0.25, -1.0, 0.25, 0.75, 0.5, 1.0, -0.75, 0.75, 0.75, -1.0, 1.0, 0.75, 1.0, 0.75, -1.0, 0.75, -0.75, -1.0, 0.25, 0.25, -0.25, 0.5, -1.0, 0.25, 0.75, 0.0, -0.75, 0.25, 0.0, 0.75, 0.75, -0.5, -1.0, -1.0, -0.75, 0.5, -0.75, 1.0, -1.0, -0.5, 0.25, 1.0, -0.25, -0.75, 0.5, 0.75, -0.5, -1.0, -1.0, -1.0, 0.5, -0.25, 0.0, -0.5, -0.5, -0.5, 0.0, 0.5, 0.5, 0.0, 0.75, -1.0, -1.0, 0.0, -0.25, -1.0, -0.25, -0.25, 0.25, 1.0, 0.0, 0.5, 1.0, 0.25, 0.25, 0.0, 0.25, -0.75, 0.25, 0.0, 0.0, -0.5, -1.0, 0.25, -0.75, -0.5, 0.25, 0.25, 0.75, 1.0, 0.75, -0.5, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([0.25, 1.0, 0.5, 0.25, 0.5, 0.5, -0.5, 0.5, 0.0, -0.25, -1.0, -0.25, 0.75, 0.5, -0.5, 0.75, 1.0, 0.75, 1.0, 0.75, 0.5, 0.75, 0.5, 0.25, 1.0, -0.25, 1.0, -0.5, -1.0, 0.5, -0.5, -1.0, 0.0, 0.0, -1.0, -0.75, 1.0, -1.0, 0.75, 0.5, 0.5, -1.0, -0.5, 1.0, 0.25, 1.0, -0.75, -0.25, -1.0, -0.25, -1.0, 0.75, 0.5, -1.0, 0.25, 0.25, 0.25, -0.75, -0.75, -0.5, 0.0, 0.0, -1.0, 0.25, -1.0, -0.5, 0.0, 1.0, -0.5, -0.75, 0.25, 0.25, -0.5, 1.0, 0.75, 0.0, -0.75, 0.5, 0.75, 1.0, 0.75, -0.25, -0.5, -0.25, 1.0, -1.0, -0.25, -0.5, 0.75, 0.25, -0.75, 0.25, 0.5, 0.5, 0.75, 0.75, 0.5, 1.0, 1.0, 0.25, ]);
    
    
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture200.destroy();
    device10.pushErrorScope("out-of-memory");
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
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
    texture201.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device00.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    texture100.destroy();
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-1.0, 0.25, -0.25, 0.5, 0.25, 0.5, 1.0, -0.25, 0.5, -0.25, 0.75, 0.0, 0.25, 0.0, 1.0, -0.25, 0.0, 1.0, -0.25, 0.0, 0.25, 1.0, 0.0, 0.5, -0.5, 0.5, 0.75, -0.75, -0.75, -0.25, 1.0, 0.25, -1.0, 0.5, -0.25, 1.0, 1.0, -0.25, -0.5, 0.75, 0.25, -1.0, 1.0, -1.0, 1.0, 0.5, 0.75, 0.75, 1.0, -0.75, 0.0, 1.0, 0.75, 0.25, -1.0, -0.5, 0.5, 0.25, -1.0, -1.0, -0.5, 0.75, -0.25, -1.0, 0.0, -0.25, 1.0, 0.0, -1.0, 0.75, -0.25, 1.0, -0.75, -1.0, 0.75, 0.5, 0.75, -0.25, 0.0, 0.25, -0.75, 0.0, -1.0, 0.75, -0.5, -0.25, 0.25, 1.0, 1.0, -0.5, 1.0, -1.0, -0.75, -0.75, 0.0, -0.5, -0.25, 0.5, -0.5, 0.25, ]);
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
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
    const array5 = new Float32Array([0.0, 0.0, 0.5, -1.0, -0.25, -0.25, 0.75, 1.0, -0.25, 1.0, 1.0, -1.0, 0.0, -0.25, 0.75, 0.0, -0.75, -0.5, 0.0, -0.5, 0.25, 0.75, 0.25, -0.5, 0.75, 0.5, 0.5, 1.0, -0.25, 0.0, -1.0, -1.0, 0.75, -0.75, -0.75, 0.75, 0.0, -0.75, -0.5, -0.75, 0.0, -0.25, 0.0, 1.0, 0.5, -0.25, -0.75, -0.25, -0.5, 0.75, 0.25, -0.5, -0.5, 0.75, 0.25, 1.0, -0.5, -0.75, -0.5, 0.25, -1.0, -0.5, 0.0, 0.0, 0.75, -1.0, -0.75, 0.0, -0.75, -0.25, 0.75, 0.25, -0.75, -0.75, 0.25, 1.0, 0.25, 0.0, 0.5, 0.75, 0.25, -1.0, 1.0, 1.0, -1.0, -0.5, 1.0, 0.75, -1.0, -0.25, 0.0, -0.25, 0.0, 0.25, 0.5, -0.75, 0.25, 1.0, 0.5, -0.75, ]);
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
    
    device10.pushErrorScope("internal");
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.setPipeline(render_pipeline101);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
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
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    texture102.destroy();
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    device10.destroy();
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    
    
    
    
    device50.pushErrorScope("validation");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture500.destroy();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    
    const array6 = new Float32Array([0.25, 0.5, 0.75, 0.5, -1.0, -0.5, -1.0, 1.0, -0.5, 0.0, 1.0, 0.5, -1.0, -1.0, -0.5, 0.5, -0.75, 0.0, 0.5, 1.0, -0.25, -0.25, -0.75, -1.0, 0.25, 0.5, 1.0, -0.75, 0.0, 0.75, 0.0, -0.75, 0.25, 1.0, 0.75, 0.5, 0.75, 1.0, 0.25, -0.25, 0.5, 0.75, 1.0, -0.5, -0.5, -1.0, 0.5, 1.0, 0.25, -1.0, 0.0, -0.5, 0.25, -0.25, 0.25, 0.75, -0.25, -0.75, -0.5, 0.5, 0.25, -1.0, 1.0, -0.25, 0.25, 0.75, 0.75, -0.25, 0.75, 0.5, -0.5, -0.5, 1.0, -0.25, 0.75, 0.5, 0.5, 0.25, -1.0, 0.25, -1.0, 0.25, 0.0, 0.25, -1.0, 0.25, 0.0, 1.0, 0.0, 0.75, -0.5, -0.5, 0.25, -0.75, 1.0, 0.75, -0.5, -0.5, 1.0, 0.5, ]);
    
    
    texture501.destroy();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    
    
    
    const array7 = new Float32Array([1.0, 0.25, 0.0, 0.75, -0.25, 0.0, 1.0, 0.25, 0.25, 0.0, -0.75, 0.75, 0.25, -0.75, 0.5, -0.25, -0.75, -0.25, -0.75, 0.25, -0.75, 0.75, -1.0, 1.0, -0.25, 0.5, -1.0, -0.5, -0.75, 0.0, 0.0, -0.75, 0.75, -0.25, 0.25, 0.75, 0.75, -0.75, 0.75, 1.0, 0.25, 0.5, 1.0, -0.5, -1.0, -0.25, -1.0, -0.25, 1.0, 0.75, 1.0, -0.5, 0.0, 0.5, 0.75, -0.5, 0.5, 0.5, 0.5, 0.25, 0.5, 0.5, -1.0, -0.75, -0.25, -1.0, 0.25, -0.75, 1.0, 0.5, -0.5, -0.25, -0.5, 0.5, 0.75, -0.75, 0.5, 0.75, -0.75, 0.75, -0.5, 0.75, 0.0, -1.0, 0.25, 0.0, 1.0, 0.25, 0.75, 1.0, 0.75, -0.25, -1.0, -1.0, 1.0, 0.75, -0.5, -0.25, 0.75, 0.25, ]);
    
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
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
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const array8 = new Float32Array([-0.25, -0.75, -0.5, 0.75, 0.0, -0.5, -0.75, -0.75, -0.25, -0.5, 0.25, -0.5, -1.0, 0.75, -0.25, 1.0, 0.75, 0.0, -0.75, 0.75, 0.5, -0.25, 0.0, 0.25, -1.0, 1.0, 0.75, 0.0, 0.25, -0.5, -0.25, -0.75, -0.75, 0.0, -1.0, 1.0, -1.0, 0.75, 0.5, 0.75, -0.75, 0.5, -0.25, -0.5, -0.25, 0.0, 0.25, 0.5, 0.25, 0.25, 0.25, -1.0, 1.0, 0.0, 0.25, 0.0, 1.0, 0.75, -0.75, 0.75, -0.25, 1.0, 0.25, 0.25, 1.0, 0.25, 1.0, -0.5, -0.5, 0.75, -0.75, 0.75, 0.0, 1.0, 0.5, -1.0, -1.0, -0.25, 0.75, 1.0, 0.5, -1.0, -0.25, 0.5, -0.75, 0.0, 0.5, 0.25, -0.75, -1.0, 0.75, 0.25, 0.25, -0.25, -1.0, -0.5, 1.0, 0.5, 1.0, -1.0, ]);
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
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
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.destroy();
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.pushErrorScope("out-of-memory");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
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
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.destroy();
    device60.destroy();
    
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.destroy();
    
    
    const array9 = new Float32Array([-0.25, -0.5, 0.5, 0.5, -0.5, -0.5, 0.5, 0.25, 0.5, 0.25, 1.0, 0.75, 0.75, -0.25, -0.75, 0.25, -0.25, 0.0, -0.5, -1.0, -0.5, 0.0, -0.5, 0.25, -0.5, 0.75, 1.0, 0.5, -0.25, -0.5, -1.0, -0.25, 0.75, 1.0, -0.5, -0.5, -1.0, 0.5, 0.5, -0.75, 1.0, 0.5, 0.5, -0.5, -1.0, 0.75, 0.25, 1.0, 0.25, 0.25, 0.25, 0.5, -0.5, -1.0, 0.75, -0.25, -1.0, -0.75, -0.25, 0.75, -0.5, -0.5, 0.75, -0.25, -0.75, -0.75, -0.5, -0.25, -0.25, 0.0, 0.0, 0.75, -0.5, 0.5, 0.5, -0.25, -1.0, -1.0, 1.0, 0.5, 1.0, -0.5, 1.0, -1.0, 0.25, 0.25, -0.5, -0.25, -0.5, 0.25, 0.0, -0.75, 1.0, -0.75, 0.75, -0.5, -0.5, -1.0, -0.25, -0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array10 = new Float32Array([-0.75, 1.0, 0.0, -0.5, 1.0, -1.0, 0.75, -0.25, 0.25, -0.75, 0.5, 0.0, 0.25, -0.5, -0.75, -0.25, -0.25, -0.5, 0.5, -0.75, -0.5, 1.0, 0.25, -0.75, 0.0, 0.75, -0.25, -0.75, 0.75, 0.5, 0.0, -1.0, -0.5, 1.0, 0.75, 0.0, -0.25, 0.5, -0.25, 0.75, 0.5, -1.0, 0.0, -1.0, -1.0, 0.0, 0.75, -1.0, 0.0, -0.75, 0.5, 0.25, 0.25, -0.75, 0.5, 0.5, -0.25, 0.75, -0.25, 1.0, -0.25, 0.25, 0.0, 0.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.5, 0.5, -0.75, 0.5, -0.75, -0.5, 0.75, 0.5, -0.5, -0.5, 0.25, 1.0, 0.5, 0.75, -0.5, 1.0, 0.75, 0.75, -0.5, -0.5, -0.75, 0.25, -1.0, -0.75, 1.0, -0.25, -0.75, 0.0, -0.75, 0.0, 0.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array11 = new Float32Array([0.25, 0.25, -1.0, 0.5, 0.25, 0.75, 0.0, 1.0, 1.0, 0.5, -0.5, 0.25, -0.25, 0.75, 1.0, -0.5, 0.5, -1.0, -0.75, -0.75, 0.75, -0.25, -0.25, 0.75, -0.5, 0.75, 0.0, -0.5, -1.0, 0.25, 0.25, 0.75, 0.75, -0.5, -1.0, 1.0, -1.0, -1.0, -0.5, -1.0, 0.25, 0.5, 0.5, -0.25, 0.75, 0.5, 0.0, 0.75, 0.75, -0.25, 0.25, 1.0, 1.0, 0.75, -1.0, -0.75, 1.0, 0.5, -0.25, -1.0, 0.5, 0.25, 0.75, -0.25, -0.75, -0.25, -1.0, -1.0, 0.0, 1.0, 0.5, -0.5, 0.0, 0.25, -1.0, 1.0, -0.5, -0.5, -0.75, 0.25, -0.5, -0.5, -0.25, 0.0, 0.0, 0.5, -0.5, -0.25, -0.75, -0.5, 0.5, 0.25, 0.0, 0.0, 0.75, 0.5, -0.5, 0.75, -0.25, -0.75, ]);
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const array12 = new Float32Array([-0.75, 0.75, -1.0, 0.75, 0.5, -0.5, 0.25, 0.0, -0.25, -0.25, 0.75, 0.5, -0.25, 0.0, -1.0, 0.5, -0.75, -1.0, 0.25, 0.0, 0.75, 0.75, -1.0, -0.5, 0.25, 0.25, -0.25, -0.75, 0.0, 0.0, 1.0, -0.25, -0.5, -0.25, 0.25, 0.0, -0.25, -0.25, -0.75, 0.75, -1.0, 0.5, 0.25, 0.5, 1.0, 0.75, 0.5, 0.0, 0.5, 0.5, -0.25, 0.0, -1.0, 0.0, 0.75, 0.0, -0.75, 0.0, -0.25, 0.25, 1.0, 0.5, 0.0, 0.5, 0.75, 0.25, -0.25, 0.0, -1.0, 1.0, 0.5, -0.5, 0.5, 0.75, -0.75, -0.5, 1.0, 1.0, -0.5, 1.0, -0.75, 0.25, -0.25, -1.0, -0.75, -0.5, 0.5, -0.25, 0.75, 0.75, 0.5, -0.5, -1.0, -0.5, 0.25, -0.5, -1.0, 0.75, 0.25, -0.25, ]);
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const array13 = new Float32Array([0.75, 0.5, -0.75, 0.25, 0.25, 0.5, 0.5, -0.75, 0.5, 1.0, 0.75, -1.0, 0.75, 0.5, 0.25, 0.5, 1.0, -0.5, -0.5, -0.75, 0.0, -0.75, 1.0, -1.0, -1.0, -0.75, 0.75, -0.25, -1.0, -1.0, 0.5, 0.5, 0.5, 1.0, 0.25, -0.5, -0.5, -1.0, 1.0, 0.0, -1.0, -0.75, -0.25, 0.5, -0.5, 0.5, 0.0, 0.5, 0.25, 0.75, -0.5, -0.25, -0.5, 0.75, 1.0, 0.25, -0.25, 0.0, 0.5, -1.0, -0.5, -0.25, 0.5, 0.75, -0.25, -1.0, -1.0, 0.0, -0.5, 0.5, -0.75, -0.25, 0.25, -0.5, 0.0, 0.0, -0.5, -0.25, 0.75, -0.75, -1.0, -0.5, 0.75, 0.5, -0.25, -1.0, 0.5, 0.25, -1.0, -0.5, -0.75, 0.5, -1.0, -0.5, 0.0, -0.5, -0.25, 0.25, -0.75, -0.5, ]);
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    device90.destroy();
    
    
    const array14 = new Float32Array([0.5, 0.75, -0.5, -0.75, 0.0, 0.5, 1.0, 1.0, -1.0, -0.25, 0.75, -0.75, 0.25, 0.75, -1.0, -0.5, 0.25, 0.0, 0.5, -1.0, 0.25, 0.75, 0.0, -1.0, -0.25, 0.25, 0.0, 0.75, -0.5, 0.5, -0.25, 1.0, 0.25, -0.25, 0.75, -1.0, -0.75, -0.5, 0.75, 0.5, -1.0, -0.25, -1.0, 0.25, 0.5, 0.25, -0.75, 0.0, -0.25, 0.0, -0.75, 0.25, 0.25, 0.5, 0.25, 0.25, 0.0, -0.25, -0.25, 0.25, 0.25, 1.0, -0.75, 0.75, 0.5, -1.0, 0.25, -1.0, 0.75, -0.5, 1.0, 0.25, 0.0, -0.75, -0.25, 0.5, 0.5, -1.0, -0.75, -0.75, 0.5, 0.25, -0.5, 0.5, -0.25, 0.75, -0.5, 0.0, -0.25, 0.25, 0.25, 0.0, -0.25, -0.75, 0.0, 1.0, 0.25, 0.25, 0.0, 1.0, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device80.pushErrorScope("out-of-memory");
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    device80.queue.writeTexture({ texture: texture800 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture802.destroy();
    
    const array15 = new Float32Array([-0.75, -0.5, -0.5, 0.75, -1.0, -1.0, -0.25, 0.25, -0.25, -0.5, -0.25, 0.5, -1.0, 0.75, -0.5, -1.0, -0.25, -1.0, 0.75, -1.0, 0.25, 1.0, 0.5, 0.5, -0.25, -0.75, -0.5, 0.25, 0.25, -1.0, -0.5, 0.0, -0.75, 0.5, -0.25, -1.0, 0.25, 0.75, -1.0, 0.75, -0.5, 0.0, -0.75, 0.25, 1.0, 0.75, 1.0, 0.5, -0.75, -1.0, -1.0, 0.5, 1.0, 0.25, 0.5, -1.0, -0.5, -0.25, 0.75, 0.5, 0.75, -0.75, -0.75, 0.0, 0.0, -0.5, -0.75, 1.0, 1.0, -0.75, -0.75, 0.25, -1.0, 0.5, -0.5, -0.5, -0.25, -0.25, 1.0, -0.75, -0.75, -0.75, -0.75, 1.0, -0.5, 1.0, -0.5, 1.0, 0.0, -0.75, -0.25, -0.25, 0.5, -0.25, 0.5, 0.0, -0.25, -0.5, -0.5, -0.75, ]);
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    device100.pushErrorScope("validation");
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture803 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device80.queue.writeTexture({ texture: texture803 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture803 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const array16 = new Float32Array([-0.5, -0.75, -0.75, -0.5, -0.75, 0.75, -0.25, -0.75, 0.75, 1.0, 0.0, 0.5, -0.5, 0.75, 0.75, -1.0, -0.5, -0.75, 0.5, 0.75, -0.75, 0.0, -0.75, -0.25, -1.0, 0.25, 0.5, -1.0, 0.25, -1.0, -0.25, -0.75, 0.25, 1.0, -1.0, 0.25, 0.75, 0.5, -1.0, 0.0, 0.75, 0.75, 0.25, -0.25, -0.25, -0.5, -0.75, 1.0, -0.25, 0.5, 0.25, 0.75, -0.75, -1.0, -0.75, -0.25, -1.0, -0.75, -0.5, 1.0, -0.5, 0.5, 0.75, -0.25, 0.25, -0.25, 1.0, 1.0, -1.0, -0.5, 1.0, 0.5, 0.75, 1.0, 1.0, 1.0, 0.75, 0.5, -0.5, 0.25, 0.75, -1.0, -1.0, 0.25, -0.75, -0.5, -1.0, -0.75, -0.25, 1.0, -0.75, -0.25, -0.75, 0.5, -1.0, -0.5, -1.0, -1.0, 0.25, 1.0, ]);
    
    texture1000.destroy();
    device80.queue.writeTexture({ texture: texture803 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    device80.queue.writeTexture({ texture: texture803 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array17 = new Float32Array([-0.5, 0.0, 0.5, -0.5, 0.25, -0.75, 0.5, -0.25, 0.0, -0.5, 0.25, 0.75, 0.5, 0.75, -0.5, 0.75, 0.25, 1.0, -0.75, -0.5, 0.75, -1.0, 0.75, 0.75, -0.75, 0.5, 0.75, -0.25, 0.75, -0.75, -0.75, -0.25, -1.0, 0.0, -1.0, -0.75, 0.75, -0.5, 0.75, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, -1.0, 0.5, -1.0, 0.0, -0.25, 0.5, -0.5, -0.5, -0.75, -0.25, 0.25, 0.5, 1.0, -0.25, 1.0, -0.5, -0.25, 0.0, 0.5, -0.75, 0.5, 0.25, -0.25, 1.0, 0.25, 0.25, 1.0, 0.75, 0.25, 1.0, 0.25, 0.5, -0.5, -0.75, -0.75, -0.75, 0.0, 0.25, -0.75, -0.5, -1.0, 1.0, -0.25, -1.0, -0.75, 0.25, -0.75, 0.0, 0.5, -1.0, 0.25, 0.5, -0.25, -0.25, 0.5, ]);
    device80.queue.writeTexture({ texture: texture800 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture803 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture803 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture803 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeTexture({ texture: texture803 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device80.queue.writeTexture({ texture: texture803 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture803 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device80.queue.writeTexture({ texture: texture800 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture803 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture803 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture803 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture803.destroy();
    render_bundle_encoder800.insertDebugMarker("marker");
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
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    texture804.destroy();
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    texture801.destroy();
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder802.pushDebugGroup("group_marker");
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
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
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    device100.pushErrorScope("internal");
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1001]
    });
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device80.queue.writeTexture({ texture: texture800 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeTexture({ texture: texture800 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1000.setPipeline(render_pipeline1000);
    
    
    const texture805 = device80.createTexture({
        label: "texture805",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.destroy();
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    device80.queue.writeTexture({ texture: texture800 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    texture805.destroy();
    const texture806 = device80.createTexture({
        label: "texture806",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1000 = device100.createBindGroup({
        label: "bind_group1000",
        layout: render_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1001,
                },
            },
        ],
    });

    render_bundle_encoder1000.setBindGroup(0, bind_group1000);
    
    render_bundle_encoder802.setPipeline(render_pipeline800);
    
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer800,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer801,
                },
            },
        ],
    });

    render_bundle_encoder802.setBindGroup(0, bind_group800);
    device80.queue.writeTexture({ texture: texture800 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    const sampler1003 = device100.createSampler( { label: "sampler1003" } );
    
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    render_bundle_encoder800.setPipeline(render_pipeline801);
    
    
    device80.queue.writeTexture({ texture: texture800 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture807 = device80.createTexture({
        label: "texture807",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    device80.queue.writeTexture({ texture: texture800 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1002 = device100.createRenderPipeline({
        label: "render_pipeline1002",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const render_pipeline1003 = device100.createRenderPipeline({
        label: "render_pipeline1003",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    texture807.destroy();
    render_bundle_encoder801.setPipeline(render_pipeline801);
    device80.queue.writeTexture({ texture: texture800 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1001.destroy();
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: render_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer802,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer803,
                },
            },
        ],
    });

    render_bundle_encoder801.setBindGroup(0, bind_group801);
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder801.insertDebugMarker("marker");
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1001]
    });
    device80.queue.writeTexture({ texture: texture800 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder802.insertDebugMarker("marker");
    
    device80.queue.writeTexture({ texture: texture800 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1002]
    });
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    const texture808 = device80.createTexture({
        label: "texture808",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1003 = device100.createPipelineLayout({ 
        label: "pipeline_layout1003",
        bindGroupLayouts: [bind_group_layout1002]
    });
    device80.queue.writeTexture({ texture: texture808 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout1004 = device100.createPipelineLayout({ 
        label: "pipeline_layout1004",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1004,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    device80.queue.writeTexture({ texture: texture808 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1002,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    device80.queue.writeTexture({ texture: texture808 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1002.destroy();
    
    
    
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1004,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeTexture({ texture: texture808 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder802.insertDebugMarker("marker");
    const compute_pipeline1003 = device100.createComputePipeline({
        label: "compute_pipeline1003",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const pipeline_layout1005 = device100.createPipelineLayout({ 
        label: "pipeline_layout1005",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const array18 = new Float32Array([-0.5, -1.0, -0.25, -1.0, 0.25, -0.25, 0.25, -1.0, -0.75, 0.5, -0.25, 0.0, 0.25, 1.0, -0.5, -1.0, 0.25, 1.0, 0.5, -0.25, 1.0, -0.25, 0.25, 0.75, -1.0, 0.25, -0.75, 0.0, 1.0, 0.25, 0.25, -0.25, -0.75, 0.0, -0.75, 1.0, 0.5, 0.75, -1.0, -0.5, -0.75, -1.0, 0.0, -0.75, 0.5, 0.5, 0.5, -0.25, 0.75, 1.0, 0.25, -0.75, -0.25, 0.75, 1.0, 0.25, 0.5, 0.25, 0.0, 0.0, -0.75, -0.75, -1.0, 0.0, 0.0, -0.25, 1.0, 0.25, -0.25, -0.25, 0.75, 0.25, 0.75, -0.75, -0.75, 0.75, 0.5, 1.0, 0.75, -1.0, 0.25, -0.5, -0.5, 1.0, 0.75, 0.5, -0.5, 0.75, -1.0, -1.0, 0.25, 0.5, 0.75, -0.5, 1.0, 0.5, -0.75, 0.75, 1.0, 0.5, ]);
    
    const compute_pipeline1004 = device100.createComputePipeline({
        label: "compute_pipeline1004",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}