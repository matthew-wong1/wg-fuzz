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
    
    
    const array0 = new Float32Array([-1.0, 1.0, 0.5, 1.0, -0.25, 0.0, -0.25, 0.5, 0.5, 0.5, 0.0, 0.25, -1.0, 0.75, 0.0, -0.75, -0.5, 0.75, 0.0, -1.0, -0.25, 0.0, 0.0, 0.75, -0.25, -0.25, 1.0, 0.5, -0.75, 0.0, 0.5, 0.75, 0.25, -0.75, 0.0, 0.75, -0.25, 1.0, -0.25, -0.75, -1.0, -1.0, 0.75, 0.5, -1.0, 1.0, 1.0, 0.0, 1.0, -0.75, -1.0, 1.0, 0.0, 0.5, 0.25, 0.75, 0.75, 0.25, 0.75, 0.25, -0.75, -1.0, -0.75, 0.5, -0.75, 0.5, 0.0, -1.0, 0.0, 0.25, -0.25, -0.25, 0.0, 0.75, 1.0, 0.75, 0.0, 0.75, 0.5, 0.0, 0.25, -0.75, -0.25, -1.0, -1.0, -0.25, -0.5, -0.75, 0.0, 0.0, 0.25, -0.75, 0.5, 0.75, -0.25, 0.0, 0.5, 0.0, 1.0, 0.25, ]);
    
    const array1 = new Float32Array([-1.0, 0.0, 0.0, -0.75, -0.25, 0.75, -0.75, -0.75, -0.5, 0.5, 0.75, -0.75, 1.0, 0.75, 0.75, -0.25, 0.0, -0.5, -0.75, -0.75, 0.75, 0.5, 0.5, -1.0, -0.5, -0.25, 0.0, 0.75, 0.5, 0.0, 0.5, 0.5, 1.0, 0.0, 0.25, 0.0, -0.5, -1.0, 1.0, 0.75, 1.0, 0.0, -0.75, 0.0, -0.25, 0.75, -1.0, 0.25, 0.75, -0.25, -0.75, -1.0, 0.0, 0.25, 0.25, -1.0, 0.25, 1.0, 0.5, 0.75, 0.75, 0.0, -0.75, -1.0, 0.0, -0.5, 1.0, 1.0, 0.5, -0.25, 1.0, 1.0, 0.0, 0.0, -0.75, -1.0, 0.5, -0.25, -0.5, -0.25, -0.75, 0.25, -0.25, 0.25, -0.5, 0.0, -0.75, 1.0, 0.5, 1.0, -0.25, -0.75, -1.0, -1.0, -0.5, 1.0, 1.0, 0.0, 0.75, -1.0, ]);
    const array2 = new Float32Array([0.75, 0.75, 1.0, 0.75, -1.0, 0.5, 0.75, 1.0, -0.5, -1.0, -0.25, 0.25, -0.5, 0.0, -1.0, -0.25, -0.5, 1.0, -0.5, 0.25, -0.5, 0.5, -0.5, 0.5, 1.0, 0.25, -0.25, -0.5, -0.5, -0.5, 0.25, -0.5, 0.25, -1.0, -0.25, -0.25, 0.0, 1.0, 0.75, -0.5, -0.25, -0.25, 0.75, 0.0, -0.5, -0.25, -0.75, 0.25, -0.75, -1.0, -0.25, -0.25, 0.0, 0.5, -1.0, 0.0, 0.5, 1.0, 1.0, 0.0, 0.25, -1.0, -0.75, 0.0, -0.5, 0.0, 0.0, -0.25, -1.0, 0.0, -0.25, 0.0, -0.75, -1.0, 0.25, 0.75, 0.75, -1.0, 1.0, -1.0, -1.0, 0.5, -0.25, -1.0, -0.75, 0.5, -0.25, 0.75, 0.5, -1.0, -0.25, 0.5, -1.0, -0.25, 0.25, 1.0, 0.0, -0.25, 0.0, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer000.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture000.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("internal");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("out-of-memory");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array3 = new Float32Array([0.25, 0.5, 0.25, 0.0, -0.5, -0.25, -0.75, 1.0, -0.75, 0.25, -0.75, -0.25, -1.0, -0.75, 0.75, -0.75, -0.75, 0.25, 1.0, 0.0, -0.75, -1.0, 0.5, 0.75, -1.0, -1.0, 0.0, 0.25, 0.0, 0.5, 0.0, 0.25, 0.75, 0.0, 0.75, -1.0, 0.0, -1.0, 0.5, -1.0, 1.0, 0.25, 0.25, 0.0, -0.5, -0.25, 1.0, -0.25, 0.75, -0.75, 0.5, -0.25, -0.25, 0.25, -1.0, 0.5, -1.0, 1.0, -0.5, -1.0, -0.5, 0.0, 0.25, -0.5, -0.75, 1.0, -0.75, 0.25, -0.75, -0.25, 0.5, -0.75, 0.5, -0.25, -0.75, 0.5, 0.25, -1.0, 1.0, 0.0, 0.5, -0.25, 0.75, -0.5, -0.75, 0.75, 0.0, 0.0, -0.75, 0.25, 0.5, -0.75, -0.25, 1.0, 1.0, 1.0, 0.25, -0.25, 0.75, 0.25, ]);
    
    texture200.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query300.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    texture301.destroy();
    
    texture201.destroy();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device40.destroy();
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    texture300.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_bundle_encoder201.popDebugGroup();
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    query200.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device30.pushErrorScope("out-of-memory");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer301.destroy()
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query000.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    query200.destroy()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    query300.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer200.destroy()
    
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder2000.executeBundles([])
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.popDebugGroup();
    render_pass_encoder2000.executeBundles([render_bundle_encoder201, ])
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    texture302.destroy();
    
    command_encoder200.clearBuffer(buffer203);
    
    command_encoder200.clearBuffer(buffer200);
    
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
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
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture203
        },
        {
            buffer: buffer203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.popDebugGroup();
    
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    command_encoder500.insertDebugMarker("mymarker");
    
    texture203.destroy();
    command_encoder300.popDebugGroup()
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    
    render_pass_encoder2001.insertDebugMarker("marker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query201.destroy()
    const command_buffer300 = command_encoder300.finish();
    
    query201.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const command_buffer302 = command_encoder302.finish();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder3010.executeBundles([])
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    query501.destroy()
    
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    query200.destroy()
    buffer302.destroy()
    texture500.destroy();
    
    render_pass_encoder3010.setStencilReference(1);
    
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    render_pass_encoder2010.setStencilReference(1);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    render_pass_encoder3010.setStencilReference(1);
    render_bundle_encoder502.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query203
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer206.destroy()
    render_pass_encoder2001.setPipeline(render_pipeline202);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder3010.pushDebugGroup("group_marker");
    buffer205.destroy()
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    buffer204.destroy()
    buffer501.destroy()
    render_pass_encoder3030.executeBundles([])
    
    render_bundle_encoder201.setPipeline(render_pipeline202);
    
    render_pass_encoder2001.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    render_pass_encoder2011.pushDebugGroup("group_marker");
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query501.destroy()
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.setPipeline(render_pipeline202);
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3030.setPipeline(render_pipeline300);
    query500.destroy()
    buffer203.destroy()
    
    buffer302.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.insertDebugMarker("marker");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
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
    const array4 = new Float32Array([-0.25, -0.5, 0.5, -0.75, -0.25, 0.5, 0.0, -1.0, 0.0, 1.0, -0.75, -1.0, -0.25, 0.0, -0.5, 0.5, 0.5, 1.0, 0.25, -0.25, -0.25, -0.25, 1.0, 0.75, 0.25, -0.25, 1.0, -1.0, 0.75, -1.0, 0.25, 0.75, -1.0, -0.75, 0.25, 1.0, -1.0, 0.25, -0.75, -0.25, 0.25, 0.5, -1.0, 0.5, 0.25, 1.0, 0.75, 0.25, -0.75, 0.75, -0.5, 0.75, -0.25, 0.25, 0.75, 0.75, -1.0, 1.0, -0.75, 0.75, 0.25, -0.75, 0.0, 1.0, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -0.25, -0.25, 0.0, 1.0, -0.75, 1.0, 1.0, 0.5, 0.5, 0.25, -0.5, 0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 1.0, 0.0, -0.5, 1.0, 1.0, -0.5, -0.75, 1.0, 0.25, 0.25, 0.0, 0.75, 1.0, ]);
    render_pass_encoder3010.executeBundles([])
    
    texture204.destroy();
    
    const command_buffer500 = command_encoder500.finish();
    query202.destroy()
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    query200.destroy()
    
    
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    buffer501.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    
    
    buffer202.destroy()
    query300.destroy()
    
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3010.setStencilReference(1);
    
    const array5 = new Float32Array([0.0, -0.5, 1.0, 0.0, 0.5, -0.25, 0.75, -0.25, 1.0, -0.75, 0.25, -0.5, 0.25, -0.5, -0.5, 0.25, -1.0, -0.5, 1.0, -0.25, -0.25, 0.25, 1.0, -1.0, 0.5, 1.0, 0.25, 0.25, -0.75, -1.0, 0.25, -1.0, 0.75, 0.25, -1.0, 0.25, 0.5, -1.0, -0.5, 0.5, -1.0, -1.0, 0.0, -0.5, 0.5, 0.25, -0.5, -1.0, -0.75, 0.0, -0.25, -0.75, 0.25, 0.0, -0.75, 0.5, -0.25, -0.5, 0.25, -1.0, 1.0, -1.0, 0.5, -1.0, 1.0, 0.5, 0.75, 0.75, -0.75, -0.25, 0.0, -0.5, 0.0, -0.5, 0.25, 0.75, -0.25, -0.25, 0.25, -1.0, 0.25, 0.75, 0.5, 0.75, -0.5, -0.5, -0.75, -0.25, 0.5, 0.5, -0.75, 1.0, -0.75, -1.0, -0.5, 0.5, -1.0, -0.25, 0.0, -0.25, ]);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
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
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query202
    });
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2041,
            },
        ],
        occlusionQuerySet: query201
    });
    command_encoder301.insertDebugMarker("mymarker");
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
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
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    buffer500.destroy()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer209);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group203);
    query201.destroy()
    device20.queue.writeBuffer(buffer208, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer208.destroy()
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    buffer207.destroy()
    render_pass_encoder2011.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group300);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder2020.setPipeline(render_pipeline202);
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
    
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder2021.setPipeline(render_pipeline205);
    device60.destroy();
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    query300.destroy()
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.setStencilReference(1);
    query200.destroy()
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    buffer2011.destroy()
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.pushDebugGroup("group_marker");
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query502.destroy()
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    query500.destroy()
    render_bundle_encoder500.popDebugGroup();
    buffer2012.destroy()
    render_pass_encoder2011.beginOcclusionQuery(0)
    render_pass_encoder2020.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_bundle_encoder200.setIndexBuffer(buffer203, "uint16");
    texture500.destroy();
    render_pass_encoder2011.setVertexBuffer(0, buffer206);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    render_bundle_encoder200.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2000.setVertexBuffer(0, buffer204);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder3010.setPipeline(render_pipeline304);
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group205);
    const command_buffer304 = command_encoder304.finish();
    const command_buffer502 = command_encoder502.finish();
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group206);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setVertexBuffer(0, buffer209);
    device50.queue.submit([command_buffer500, ]);
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group207);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2020.setVertexBuffer(0, buffer2015);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2001.setVertexBuffer(0, buffer209);
    render_pass_encoder2001.drawIndirect(buffer2016, 0);
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder2020.end();
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder2021.setVertexBuffer(0, buffer2014);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2021.end();
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2000.end();
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder2021.end();
    render_pass_encoder3030.setVertexBuffer(0, buffer307);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder3030.drawIndirect(buffer304, 0);
    render_pass_encoder2021.end();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder5010.popDebugGroup();
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2001.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder3030.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder3030.end();
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2021.draw(3);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndirect(buffer2018, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    render_pass_encoder3030.drawIndirect(buffer304, 0);
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder3010.end();
    const command_buffer301 = command_encoder301.finish();
    device50.queue.submit([command_buffer501, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2001.drawIndirect(buffer2016, 0);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2011.popDebugGroup();
    device50.queue.submit([command_buffer503, ]);
    device30.queue.submit([command_buffer301, ]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2021.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2011.drawIndexed(3);
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder2010.end();
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder3030.drawIndirect(buffer305, 0);
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder3030.draw(3);
    device30.queue.submit([command_buffer302, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder3010.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2021.drawIndirect(buffer208, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder3010.end();
    device30.queue.submit([command_buffer303, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    device50.queue.submit([command_buffer501, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2011.draw(3);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer207, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder3030.drawIndirect(buffer306, 0);
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    device60.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    render_pass_encoder2021.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    device20.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer303, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2011.end();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder2021.end();
    render_pass_encoder2021.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
}