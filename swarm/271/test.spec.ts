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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.destroy();
    
    const array0 = new Float32Array([-0.75, 1.0, -0.25, -0.5, 0.0, -1.0, -0.25, -0.25, 0.75, 1.0, 1.0, 0.25, 0.75, 0.25, 0.0, 0.0, -0.25, 1.0, -0.5, -0.5, -0.25, 0.25, 0.0, -0.5, -0.25, -0.25, -0.5, 0.5, -0.75, 0.5, 0.75, -0.25, -1.0, 0.25, 0.25, 1.0, -0.5, 0.0, 1.0, 0.75, -0.75, -0.25, 0.25, 0.25, -0.25, -0.75, -0.75, -0.5, 0.25, 0.0, 1.0, -0.25, 0.75, 0.25, 0.5, 1.0, 0.5, -0.5, -0.25, 0.0, 1.0, 0.5, 0.25, -1.0, -1.0, 0.5, 0.5, 0.25, 0.25, 1.0, -0.5, 0.75, -0.25, -1.0, -0.75, -0.25, 1.0, 0.75, -1.0, -0.25, 1.0, -0.5, -1.0, -0.5, 0.5, 0.25, 0.75, 0.75, 0.0, -1.0, 0.0, -0.75, 1.0, 0.0, -0.75, -0.25, 0.75, 0.75, 1.0, 0.25, ]);
    const array1 = new Float32Array([0.25, -1.0, -0.25, -1.0, 1.0, 1.0, -0.75, -1.0, 0.75, 1.0, -1.0, 0.5, 0.0, 0.5, 1.0, 0.0, 1.0, -1.0, 0.25, 0.0, -0.75, -0.75, -0.75, -0.5, 0.75, -1.0, -0.5, -1.0, -0.5, -0.5, -1.0, 0.0, -0.5, 0.25, 1.0, 0.25, 0.5, -0.75, -1.0, -0.75, 0.0, 0.0, 0.25, -1.0, -0.5, -0.25, 0.75, -0.75, -0.5, -0.25, 0.75, -1.0, -0.5, -1.0, 0.75, 1.0, 0.25, -0.75, -0.5, -0.75, -0.25, 0.0, 1.0, 0.25, 0.5, -0.75, -0.75, 0.75, 1.0, -1.0, -1.0, 0.0, 0.5, -0.5, -1.0, 0.0, -0.25, 1.0, 0.75, -0.25, 1.0, 1.0, -0.5, -1.0, -0.5, -0.75, -0.5, -0.75, -0.25, 0.5, 0.5, -0.25, 0.25, -0.75, 0.75, -0.75, -1.0, 0.75, -0.75, 0.5, ]);
    const array2 = new Float32Array([0.0, -0.25, -0.75, -1.0, 0.25, 0.75, 0.5, -0.5, 0.0, 0.75, -0.5, 0.25, 0.25, 0.0, -1.0, 0.0, -1.0, 0.25, -0.75, 0.25, 0.0, 0.75, -1.0, -0.25, -0.75, -0.5, -1.0, 0.0, 0.0, 0.5, -0.25, -1.0, 0.75, -1.0, 0.0, -0.75, -0.75, 1.0, 0.75, -0.75, 0.0, 0.5, 0.75, -0.25, 0.5, 0.0, -1.0, 0.0, -0.25, 0.0, -1.0, 0.5, 0.0, -0.75, -0.5, -0.75, 0.5, 0.75, 1.0, 0.5, 0.75, 0.0, 0.25, -0.25, -0.25, 0.25, 1.0, 0.0, 0.75, -1.0, 0.0, 0.75, -0.75, -0.25, -0.75, -0.25, -0.5, 0.75, 0.25, 1.0, 1.0, 0.5, 0.0, 0.75, 0.75, 0.5, -0.75, -1.0, 0.0, 0.75, -0.75, 0.0, 0.25, -0.25, -0.25, 0.0, -1.0, 0.25, 0.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("validation");
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const array3 = new Float32Array([0.5, 0.5, 0.5, 0.5, 0.0, 1.0, 0.75, 0.25, -0.75, -0.5, 0.5, -0.5, 0.25, 0.5, 1.0, -1.0, 0.25, 0.75, -1.0, 0.25, -0.25, 0.5, 0.25, -0.75, -0.25, 0.75, -0.75, 0.75, -0.25, -1.0, -1.0, 0.75, 0.75, 0.75, 0.25, 0.25, 0.75, -0.25, 1.0, 0.25, -0.5, 0.0, 0.5, -1.0, -0.5, 0.0, -0.75, 0.5, -0.25, -0.5, -0.75, -1.0, 0.5, -0.25, 0.0, -0.25, 1.0, 0.75, 0.25, -0.75, -0.5, -0.75, -0.25, 0.25, -0.75, 0.5, 0.75, 0.5, -1.0, -0.5, -0.25, -1.0, -0.25, -1.0, 1.0, 0.0, -1.0, -0.25, 0.5, 0.25, -1.0, -0.5, 0.5, 0.5, 0.0, -0.75, -0.75, -0.5, 0.75, 1.0, 1.0, -0.5, -1.0, 0.25, -0.5, 0.75, -0.25, 0.0, 0.5, 0.0, ]);
    device10.pushErrorScope("validation");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    texture100.destroy();
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device20.pushErrorScope("internal");
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("out-of-memory");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture102.destroy();
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    texture101.destroy();
    device20.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("internal");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array4 = new Float32Array([-0.75, -0.25, -0.25, 0.25, 0.25, 0.0, 0.0, 0.0, 0.0, 0.25, -0.25, -0.75, -1.0, -1.0, -0.25, 0.0, 0.75, 1.0, 0.5, 1.0, -1.0, -1.0, 0.75, 0.5, -0.25, 0.0, 0.0, 1.0, -0.25, 0.0, -1.0, 0.75, 0.0, -0.75, 0.0, -0.5, 0.75, -0.5, 0.75, 0.0, -0.5, -0.25, 0.25, -1.0, -0.75, -0.5, 0.75, -1.0, -0.5, 0.75, 0.5, 0.25, -1.0, -0.5, -0.25, -0.25, 0.5, -1.0, 1.0, -0.5, 1.0, -0.5, 0.0, -0.75, -0.25, 0.0, -0.25, 0.5, 0.25, -1.0, 0.25, -0.5, -0.75, 0.75, -0.25, -0.75, -0.25, 1.0, 0.25, -1.0, -0.75, -0.5, 0.25, -1.0, -0.25, 0.25, 0.75, -0.25, 1.0, 0.5, -0.75, 0.75, 0.0, 0.75, 0.75, -1.0, -1.0, -1.0, -0.25, -0.25, ]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.destroy();
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    render_bundle_encoder102.setPipeline(render_pipeline101);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    texture103.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.popDebugGroup();
    
    render_bundle_encoder302.popDebugGroup();
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.destroy();
    query100.destroy()
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
        powerPreference: "high-performance"
    });
    
    
    
    
    texture104.destroy();
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    buffer103.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    buffer102.destroy()
    
    device10.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture700.destroy();
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const query700 = device70.createQuerySet({
        label: "query700",
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
    const query800 = device80.createQuerySet({
        label: "query800",
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
    device80.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    const array5 = new Float32Array([-0.25, -0.25, 0.75, 0.5, 0.25, -0.25, -0.75, 1.0, 1.0, -0.5, 0.0, -0.75, 0.75, -0.75, -0.75, 0.75, 0.0, -0.75, -0.75, 0.0, 0.5, 0.0, 0.25, -0.75, 0.75, -0.5, -0.5, 0.25, 1.0, 0.25, 0.0, 0.75, 0.25, 0.5, -1.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.0, -0.75, -0.75, 0.25, -0.75, 0.75, -1.0, -1.0, 0.25, 1.0, -1.0, -1.0, -1.0, 0.25, 0.5, 0.75, 1.0, -0.5, 0.0, 0.5, 0.25, -0.75, 0.0, 0.5, -0.5, -1.0, -0.5, 0.0, -1.0, 0.0, 0.0, -0.5, 1.0, 0.5, 1.0, 0.75, 0.25, -0.25, -0.5, -0.75, 0.75, 0.5, -0.25, -0.25, 0.5, 1.0, -0.75, -0.5, -0.5, 0.5, -0.5, 0.25, 0.75, 0.0, -0.25, 1.0, -0.5, 0.5, -0.5, 0.25, ]);
    device90.pushErrorScope("internal");
    device70.pushErrorScope("validation");
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture702 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    device70.queue.writeTexture({ texture: texture702 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array6 = new Float32Array([1.0, -0.5, -0.5, 0.75, 0.5, 0.25, 0.0, -0.25, 0.25, 0.0, 0.25, 0.75, 1.0, -0.75, -0.75, 0.5, -0.5, 0.0, -0.25, -1.0, 1.0, 0.5, 0.0, -0.75, 0.0, 0.5, -0.75, 0.5, -0.25, -0.5, 0.5, 0.25, 0.0, -0.75, -1.0, -0.25, -1.0, 1.0, 0.5, 0.5, -1.0, -1.0, -0.5, 0.5, -0.25, -0.5, 0.75, -0.25, -0.5, -0.75, 0.5, -0.5, 0.25, 0.25, 1.0, 0.0, 0.75, 0.0, 0.0, 0.25, 0.0, 0.75, 0.75, -0.25, 1.0, 0.0, -0.75, 0.25, 0.25, -1.0, -1.0, 0.25, 0.0, 0.0, -1.0, 0.5, -0.25, -0.5, 0.75, 0.0, 0.0, -0.5, 0.5, 0.25, 0.0, 0.0, -1.0, 0.0, -0.5, -0.75, 0.0, 0.5, 0.25, 0.5, 0.75, 0.5, 0.0, 0.25, -0.25, -0.25, ]);
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query700.destroy()
    device90.pushErrorScope("internal");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
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
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    query600.destroy()
    device70.queue.writeTexture({ texture: texture702 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture902.destroy();
    
    device100.pushErrorScope("validation");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device70.queue.writeTexture({ texture: texture702 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture703.destroy();
    device70.queue.writeTexture({ texture: texture702 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture901.destroy();
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device70.queue.writeTexture({ texture: texture702 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    query600.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device100.destroy();
    device70.queue.writeTexture({ texture: texture702 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    device90.queue.writeTexture({ texture: texture903 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeTexture({ texture: texture903 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const texture705 = device70.createTexture({
        label: "texture705",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    render_bundle_encoder700.setPipeline(render_pipeline701);
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeTexture({ texture: texture702 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture704 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    device70.queue.writeTexture({ texture: texture702 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
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
    device70.queue.writeTexture({ texture: texture702 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture701.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    device90.pushErrorScope("internal");
    texture904.destroy();
    device90.queue.writeTexture({ texture: texture903 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder900.popDebugGroup();
    const texture905 = device90.createTexture({
        label: "texture905",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view9050 = texture905.createView({ label: "texture_view9050" });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    device90.queue.writeTexture({ texture: texture905 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture905.destroy();
    const texture906 = device90.createTexture({
        label: "texture906",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    var shader_module906_code = "";
    try {
        shader_module906_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module906.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module906 = await device90.createShaderModule({ label: "shader_module906", code: shader_module906_code })
    
    
    
    query901.destroy()
    device90.queue.writeTexture({ texture: texture903 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    query901.destroy()
    texture900.destroy();
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module907_code = "";
    try {
        shader_module907_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module907 = await device90.createShaderModule({ label: "shader_module907", code: shader_module907_code })
    var shader_module908_code = "";
    try {
        shader_module908_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module908.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module908 = await device90.createShaderModule({ label: "shader_module908", code: shader_module908_code })
    
    
    device90.queue.writeTexture({ texture: texture903 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module909_code = "";
    try {
        shader_module909_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module909.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module909 = await device90.createShaderModule({ label: "shader_module909", code: shader_module909_code })
    
    
    device90.queue.writeTexture({ texture: texture903 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture903 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture907 = device90.createTexture({
        label: "texture907",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    const array7 = new Float32Array([-0.5, 0.5, -0.25, -0.25, 0.75, -0.5, 0.5, 0.75, -0.75, 0.5, -1.0, 0.5, 1.0, -0.75, -0.5, 0.5, 1.0, 1.0, 0.75, 0.25, 1.0, 0.0, 0.5, -0.75, 1.0, 1.0, 0.25, -0.25, -0.25, -0.75, 0.0, -1.0, -1.0, 0.0, 0.75, -0.25, -0.75, 0.25, 0.0, -0.25, 0.0, -0.5, 1.0, 0.25, -0.25, 1.0, -0.5, -0.5, 0.5, 0.0, -0.75, 0.75, -0.5, -1.0, -0.25, 0.75, 0.25, 1.0, 0.5, 0.25, 1.0, 1.0, 0.0, 0.5, -1.0, -1.0, 0.0, -0.75, 0.25, 1.0, -0.5, 0.75, 0.25, -1.0, 0.0, 0.0, 0.5, 1.0, -0.75, -1.0, -0.25, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, 0.75, -0.25, 0.0, -0.5, -0.75, -1.0, -0.25, -0.5, -1.0, 0.0, 0.25, 0.0, -0.75, ]);
    device90.queue.writeTexture({ texture: texture903 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    device90.queue.writeTexture({ texture: texture903 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder901.pushDebugGroup("group_marker");
    
    const texture908 = device90.createTexture({
        label: "texture908",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view9070 = texture907.createView({ label: "texture_view9070" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    texture903.destroy();
    const texture_view9080 = texture908.createView({ label: "texture_view9080" });
    texture908.destroy();
    
    
    
    
    const texture909 = device90.createTexture({
        label: "texture909",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device110.pushErrorScope("internal");
    
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    query902.destroy()
    
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
    const array8 = new Float32Array([-0.5, -0.25, 0.25, 0.25, -1.0, 0.75, -0.75, -0.5, 0.75, -0.25, 0.25, -0.25, 0.5, 0.25, -0.75, 0.25, -0.25, -0.25, 1.0, -0.75, 0.75, 1.0, 0.25, -1.0, 0.25, 0.0, 0.0, -0.75, 0.25, -0.5, -0.75, -0.25, -1.0, 0.5, 0.25, 0.75, 0.0, 0.25, 0.25, 0.0, -0.5, 0.0, 1.0, 0.0, -0.25, 0.25, -0.75, -1.0, -1.0, -0.75, -0.25, 0.25, -1.0, -0.25, 1.0, 0.0, -0.25, 0.0, 0.25, 0.75, -1.0, 0.75, 0.25, 0.75, -1.0, 0.0, 0.5, 1.0, -1.0, 0.25, -0.25, -0.25, -0.5, 0.25, -0.75, -0.5, 0.25, -0.5, 1.0, 0.75, 0.5, 1.0, 1.0, 0.75, 0.5, -0.75, 0.5, 0.25, -0.25, -1.0, 0.25, 0.0, 0.75, -1.0, 0.75, -1.0, 0.25, 1.0, 0.25, 0.5, ]);
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const texture_view9071 = texture907.createView({ label: "texture_view9071" });
    
    const array9 = new Float32Array([0.0, 0.25, 0.5, 0.75, 0.5, 0.25, 0.0, -0.75, 0.25, -1.0, 0.5, -0.75, 1.0, -1.0, -0.25, -0.25, 0.25, 0.75, 0.25, -0.25, -0.5, -0.25, -0.75, 0.25, -1.0, 1.0, -0.5, 0.25, -1.0, -0.75, 0.25, 0.5, 1.0, 0.0, -0.75, 0.25, -0.5, 0.75, 0.5, -0.75, 0.25, 0.75, 1.0, 0.5, -0.5, 0.25, 0.5, 0.0, -0.75, 0.25, 0.0, -0.75, -0.25, -0.75, 0.75, -1.0, -1.0, 0.5, 0.5, 0.75, 1.0, -1.0, -1.0, -0.75, -0.5, 0.0, 0.0, -0.25, -1.0, -0.75, -0.75, -0.5, -0.5, -0.75, -0.75, 1.0, 0.25, -0.5, 1.0, -1.0, 0.75, 1.0, 0.75, 0.0, -0.25, -0.5, -1.0, 0.75, -0.5, 0.75, 0.75, 0.25, 0.5, -0.5, -0.5, -0.75, 0.5, 0.5, -1.0, 1.0, ]);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder901.setPipeline(render_pipeline900);
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    render_bundle_encoder901.popDebugGroup();
    render_bundle_encoder900.popDebugGroup();
    query902.destroy()
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder902.setPipeline(render_pipeline900);
    const texture_view9072 = texture907.createView({ label: "texture_view9072" });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    device90.pushErrorScope("validation");
    var shader_module9010_code = "";
    try {
        shader_module9010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module9010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module9010 = await device90.createShaderModule({ label: "shader_module9010", code: shader_module9010_code })
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    query901.destroy()
    
    query1100.destroy()
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    texture909.destroy();
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    texture906.destroy();
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer900,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer901,
                },
            },
        ],
    });

    render_bundle_encoder901.setBindGroup(0, bind_group900);
    
    const texture_view9073 = texture907.createView({ label: "texture_view9073" });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const array10 = new Float32Array([0.25, -1.0, 0.75, -0.5, -0.75, -1.0, 0.25, -0.75, 1.0, -0.25, 0.5, 0.75, 0.25, 0.0, -0.5, 0.0, -0.75, -1.0, 0.5, 0.5, 1.0, 0.25, -0.75, 0.25, -0.75, -1.0, -0.25, -1.0, 0.75, 0.25, 0.0, -0.5, -1.0, 0.5, 1.0, -0.25, -1.0, 0.25, 0.0, 0.75, -0.5, 0.25, 0.25, 1.0, -0.75, 0.75, 1.0, -0.5, 1.0, -1.0, 1.0, -0.75, -1.0, 0.0, -1.0, 0.25, 0.5, 0.25, -0.25, 0.25, 0.75, 0.0, -1.0, 0.5, 0.5, -0.5, 0.25, 0.5, 0.75, 0.5, 0.25, -0.75, 0.5, -0.25, -1.0, -0.25, -0.5, -0.25, 0.5, -0.75, -0.75, -0.75, 0.75, -0.5, -0.25, 0.75, 0.75, 0.5, 0.75, -0.75, 0.0, -0.75, 1.0, 0.5, 0.0, 0.5, 0.75, -1.0, 1.0, -0.25, ]);
    render_bundle_encoder900.popDebugGroup();
    
    buffer900.destroy()
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    render_bundle_encoder900.setPipeline(render_pipeline900);
    
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group901 = device90.createBindGroup({
        label: "bind_group901",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer902,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer903,
                },
            },
        ],
    });

    render_bundle_encoder900.setBindGroup(0, bind_group901);
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const bind_group_layout904 = device90.createBindGroupLayout({ 
        label: "bind_group_layout904",
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
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    query1100.destroy()
    
    
    query902.destroy()
    buffer901.destroy()
    const texture_view9074 = texture907.createView({ label: "texture_view9074" });
    var shader_module9011_code = "";
    try {
        shader_module9011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module9011 = await device90.createShaderModule({ label: "shader_module9011", code: shader_module9011_code })
    render_bundle_encoder902.pushDebugGroup("group_marker");
    const bind_group_layout905 = device90.createBindGroupLayout({ 
        label: "bind_group_layout905",
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
    query1101.destroy()
    const texture9010 = device90.createTexture({
        label: "texture9010",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module9011,
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
            module: shader_module9011,
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
    
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    
    query902.destroy()
    
    
    
    const texture9011 = device90.createTexture({
        label: "texture9011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture9011 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture9011 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder902.popDebugGroup();
    
    buffer903.destroy()
    
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    render_bundle_encoder901.pushDebugGroup("group_marker");
    device90.pushErrorScope("out-of-memory");
    const query1103 = device110.createQuerySet({
        label: "query1103",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeTexture({ texture: texture9011 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device90.queue.writeTexture({ texture: texture9011 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture9010.destroy();
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    query1103.destroy()
    
    
    
    render_bundle_encoder1100.setPipeline(render_pipeline1100);
    const sampler904 = device90.createSampler( { label: "sampler904" } );
    
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const sampler905 = device90.createSampler( { label: "sampler905" } );
    render_bundle_encoder900.popDebugGroup();
    
    
    
    device90.queue.writeTexture({ texture: texture9011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture9011 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeTexture({ texture: texture9011 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline904 = device90.createRenderPipeline({
        label: "render_pipeline904",
        vertex: {
            module: shader_module9011,
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
            module: shader_module9011,
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
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    device90.queue.writeTexture({ texture: texture9011 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture9011 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture9011 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    render_bundle_encoder902.pushDebugGroup("group_marker");
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device90.queue.writeTexture({ texture: texture9011 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture9011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder1101.setPipeline(render_pipeline1100);
    const texture_view90110 = texture9011.createView({ label: "texture_view90110" });
    device90.queue.writeTexture({ texture: texture9011 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline905 = device90.createRenderPipeline({
        label: "render_pipeline905",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    
    
    
    
    
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    
    render_bundle_encoder1102.pushDebugGroup("group_marker");
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    device90.queue.writeTexture({ texture: texture9011 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    query1201.destroy()
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}