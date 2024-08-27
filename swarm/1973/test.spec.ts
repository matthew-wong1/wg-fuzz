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
    
    
    
    const array0 = new Float32Array([0.0, -0.5, -0.75, 0.75, -0.5, 0.75, 0.25, 0.0, -0.5, 0.0, 0.25, -1.0, -1.0, 0.25, -0.5, 0.0, -0.25, 0.75, -0.25, 0.75, -1.0, -0.25, -0.5, 0.25, -0.75, 0.75, -0.5, 0.25, -0.75, -0.75, 0.75, 1.0, -0.5, 0.25, 0.75, 0.5, 1.0, -0.75, -1.0, -1.0, -1.0, -0.75, 0.5, 0.25, -0.25, -1.0, -1.0, -0.5, 0.75, -0.75, 0.5, 1.0, -1.0, 0.0, -1.0, -0.5, 0.5, -0.25, -0.75, -1.0, 0.5, -0.5, 0.0, 0.5, 0.25, -1.0, -0.25, 1.0, 0.0, -0.25, 1.0, -1.0, 0.25, 0.0, 1.0, 0.5, 0.5, -0.25, 0.5, 1.0, -1.0, 0.75, -0.5, 1.0, -0.5, 0.0, -0.75, -0.75, -0.75, -0.5, -1.0, 0.25, 0.25, 0.75, 0.75, -0.75, -0.25, 0.25, 0.25, -0.5, ]);
    const array1 = new Float32Array([0.25, -0.5, -1.0, -0.5, 0.25, -0.75, 0.75, -1.0, 0.25, 0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -0.5, -0.75, 1.0, -0.75, 0.25, 0.0, -0.5, -0.25, 0.75, -0.25, -1.0, 0.75, 0.0, -0.75, 0.25, 0.25, 0.5, 0.5, 0.5, -0.5, -0.25, 1.0, 0.5, 0.0, 0.25, 0.0, 0.25, -0.75, -0.25, 0.0, 0.25, 0.5, -0.25, 0.0, 0.5, 0.25, -0.5, -0.75, 0.5, 0.5, 0.75, -0.75, 0.25, 0.25, -0.25, 0.0, -0.25, 0.5, 0.0, 1.0, 0.25, 0.0, -1.0, 0.0, 1.0, -0.5, -0.5, -0.75, 0.0, 0.25, 0.5, 0.25, -0.75, 0.0, 1.0, 0.75, 0.75, -1.0, 0.25, 0.5, -1.0, 1.0, -1.0, -0.75, 0.5, -1.0, -0.5, 0.25, 0.75, -0.75, -0.25, -0.5, -0.75, -0.5, 0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.25, -0.5, 1.0, 0.25, 1.0, -0.25, 1.0, -0.5, -0.75, -0.25, -0.5, 0.75, 1.0, 0.0, 0.0, -0.75, 0.5, 0.25, -0.75, 0.5, 0.75, 0.75, 0.0, 0.0, -0.75, 0.25, 1.0, 0.0, 0.25, -0.25, -0.5, -1.0, -0.75, 0.25, 0.5, 0.75, 0.5, -0.75, 0.25, 0.5, 0.75, 1.0, 0.5, 0.75, 0.25, 0.25, 0.75, 0.5, 0.5, -0.75, -0.5, 0.75, 1.0, 1.0, 0.5, 0.25, 0.25, -0.25, 0.25, -1.0, -1.0, 0.5, -1.0, 0.5, 1.0, 0.25, 0.25, -1.0, 0.0, 1.0, 0.5, 1.0, -1.0, 1.0, -0.25, -0.75, -0.75, -0.75, 0.25, -0.25, 0.75, 0.25, -0.25, 0.0, 0.75, -1.0, 0.75, 0.75, -0.75, -0.25, 0.5, 0.25, -0.5, 1.0, -0.5, 0.25, 0.25, -0.75, 0.5, 0.5, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("validation");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query100.destroy()
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query100.destroy()
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device20.destroy();
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device10.pushErrorScope("out-of-memory");
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    query101.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    
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
    query103.destroy()
    
    query104.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device30.pushErrorScope("out-of-memory");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    device30.queue.submit([]);
    render_bundle_encoder101.setPipeline(render_pipeline100);
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
    query103.destroy()
    
    query104.destroy()
    
    device30.destroy();
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    const array3 = new Float32Array([1.0, 0.25, 0.5, -0.25, 0.0, 0.5, 0.25, 0.0, 0.75, 0.75, -1.0, 1.0, 0.25, 0.5, -1.0, 0.0, 1.0, -1.0, 1.0, 0.5, -0.25, -1.0, -0.75, 0.25, 0.5, 0.75, -0.5, -1.0, -1.0, -0.75, -0.25, -0.75, 0.0, 0.25, -0.75, 0.75, 0.25, 1.0, -0.75, 0.25, 0.5, 1.0, -0.25, 0.75, 0.25, -0.25, -1.0, -0.75, -1.0, 0.5, 0.25, 0.75, -0.5, 0.25, 1.0, -0.5, -0.25, 0.75, -0.75, -0.25, -0.5, 0.25, 1.0, 0.5, -0.75, 0.0, 1.0, 0.75, -0.5, -0.75, 0.5, 0.75, -0.75, -0.5, -0.25, 0.75, -0.5, 1.0, 0.75, 1.0, 0.0, 0.75, -0.75, 0.75, -0.75, 1.0, -0.25, -1.0, -1.0, -0.75, -0.25, 0.5, -0.5, -0.75, -1.0, 1.0, -1.0, 0.25, 0.25, -0.5, ]);
    
    
    
    query105.destroy()
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    query104.destroy()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const array4 = new Float32Array([0.0, 0.5, -0.25, -0.25, -0.5, -0.25, 0.25, 1.0, -0.25, -0.5, 0.0, 0.5, -1.0, -1.0, 0.5, 0.5, 0.5, -0.75, 0.5, -0.25, -0.25, -1.0, -0.5, 1.0, -0.75, -0.5, 0.0, 0.5, 0.5, -0.25, -0.5, -0.75, 0.25, 0.0, 0.5, -0.5, 0.0, 0.75, -0.75, 1.0, 0.25, 1.0, 0.25, -0.75, 0.0, 1.0, -0.5, -0.5, 0.25, 0.5, -1.0, 0.25, 0.5, 0.75, -1.0, -0.5, 1.0, 0.25, 0.0, 1.0, 0.25, 0.75, 1.0, -0.75, -0.5, 0.75, -0.75, -0.5, -0.75, 0.25, -0.25, 0.75, -1.0, 1.0, -0.5, -1.0, 0.75, -0.25, 0.0, -0.25, -0.75, 0.0, -0.25, 0.75, -1.0, 1.0, 1.0, -0.75, 0.5, 0.5, -0.75, 1.0, 0.0, 1.0, 1.0, -1.0, -1.0, 0.0, 0.5, 0.75, ]);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query101.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const array5 = new Float32Array([-0.75, -1.0, 0.5, 0.25, 0.0, 0.5, -0.75, 0.0, -0.25, -0.75, 0.25, 0.5, 0.0, 1.0, 0.0, -1.0, 0.0, -1.0, -0.75, 0.75, 0.25, 0.5, -0.75, 0.0, 1.0, -0.5, 0.25, 0.5, 0.25, 1.0, 0.5, -1.0, 1.0, -1.0, 1.0, 0.25, -0.75, -0.75, 0.25, 0.25, -1.0, -1.0, 0.75, 0.75, 0.5, 0.25, 0.25, -0.5, 0.0, 0.75, -1.0, -0.5, -0.5, 0.75, 0.75, -0.5, -0.25, 0.75, 0.75, -0.75, 0.0, -0.25, -0.25, -0.25, -0.75, -1.0, 0.0, 0.5, 0.75, -0.25, -1.0, 1.0, 0.5, 0.25, 0.75, 0.75, -0.25, 0.5, -1.0, 1.0, -0.75, 1.0, -0.75, 0.25, -1.0, -1.0, 0.25, 0.0, -0.25, 0.5, -1.0, -1.0, -0.25, 0.25, -0.75, 1.0, 0.25, 1.0, 0.5, 0.25, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    
    
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query104.destroy()
    
    
    
    
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
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    render_bundle_encoder102.setPipeline(render_pipeline107);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    query101.destroy()
    
    query102.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.setVertexBuffer(0, buffer101);
    query102.destroy()
    
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
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    
    
    device40.destroy();
    query104.destroy()
    query100.destroy()
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    query107.destroy()
    
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder103.setPipeline(render_pipeline106);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.destroy();
    
    
    const array6 = new Float32Array([-0.5, -0.5, -1.0, -1.0, -0.25, 0.5, 0.0, 0.75, 0.0, 0.25, 0.5, 0.5, 1.0, -0.75, 1.0, 0.25, 0.5, 0.5, -0.5, 1.0, 0.0, -1.0, -1.0, 0.5, 1.0, 0.0, 0.0, -0.5, 0.0, -0.25, 0.75, -0.25, 1.0, -0.25, 0.25, 0.75, 0.5, -0.75, 0.75, 0.5, -0.25, -0.5, -0.5, 1.0, -1.0, -0.5, -0.25, 0.25, -0.75, 0.25, -0.75, 0.0, 0.75, 1.0, -0.75, 0.0, 1.0, 0.5, -0.5, 1.0, -0.5, -1.0, -1.0, 1.0, 1.0, -1.0, -1.0, 0.0, 0.75, -0.25, -0.5, -1.0, 0.25, -1.0, 0.5, 1.0, -0.75, -0.75, 0.75, 0.75, 1.0, 0.75, 0.25, -0.25, 1.0, 1.0, 0.25, 0.0, 1.0, 0.75, -0.5, -0.75, -0.5, 0.25, 0.0, -0.25, -0.5, -0.75, -0.75, -1.0, ]);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const array7 = new Float32Array([0.75, -1.0, -0.75, -0.5, 0.25, -0.5, -1.0, -0.25, 0.25, 0.5, -0.5, 1.0, -0.5, -0.25, -0.5, 1.0, 0.0, 0.5, -0.5, 0.5, -1.0, 1.0, 0.5, -1.0, 0.75, -1.0, 1.0, 0.25, -0.5, -0.5, 0.0, 1.0, 0.75, 0.25, 0.75, -0.5, 0.0, -0.5, -0.75, -1.0, -0.75, -0.25, 0.0, -0.25, 1.0, -0.75, -0.5, -1.0, 0.0, 0.25, 1.0, -0.25, -0.5, 1.0, 0.25, 0.5, -0.5, -1.0, 1.0, 0.25, 0.25, -0.75, 1.0, -0.75, 0.25, 0.0, -0.25, -0.5, -0.25, 0.5, 0.0, 1.0, 0.0, -0.75, 0.25, -0.25, 0.25, 0.5, 1.0, -0.5, 0.5, 0.5, 0.25, 0.5, 0.75, 0.75, -0.5, -0.25, 0.5, -0.5, 0.5, 0.0, 0.5, 1.0, 0.0, -0.5, 0.0, 0.0, -0.5, -0.5, ]);
    
    
    
    
    
    
    const array8 = new Float32Array([0.5, -1.0, 1.0, -1.0, 0.5, -0.25, -0.25, 0.75, 0.75, 1.0, 0.5, 0.5, 0.75, 0.5, 0.75, 0.0, -0.5, -0.25, 0.0, -0.75, 1.0, 0.75, -0.25, 0.0, 0.0, 1.0, 1.0, 0.0, -0.75, 0.25, 0.25, -0.5, 1.0, 0.75, 0.5, -0.25, -0.5, -1.0, 0.0, 1.0, 1.0, -1.0, -1.0, -1.0, 0.25, -0.75, 0.0, -0.25, 1.0, 1.0, 0.75, -1.0, 0.0, 0.25, 0.75, 0.0, -1.0, 1.0, 0.5, -0.75, -0.25, -0.5, -0.5, 0.5, -1.0, 0.0, -0.25, -0.75, -0.75, -0.5, 0.0, -1.0, -0.25, -0.5, 1.0, 0.25, 0.5, 0.5, -0.5, 0.75, -0.75, -0.5, 0.25, -0.5, -1.0, 0.5, -0.25, 0.75, -0.75, 0.0, -0.5, -0.25, 0.25, 0.5, 0.5, -1.0, 0.0, -1.0, -0.75, 0.0, ]);
    
    
    const array9 = new Float32Array([-0.75, 0.75, 0.5, 1.0, 0.75, 1.0, 0.0, 0.5, -1.0, -0.75, 0.0, -0.25, 1.0, 1.0, -0.25, -0.5, -0.25, 0.0, 0.75, 0.75, 0.5, -0.75, 0.25, -0.75, -0.75, 0.0, -0.75, 0.0, 0.0, -0.5, -0.75, 0.5, -1.0, 0.75, 0.25, 0.25, 1.0, 0.75, 0.75, -0.25, -1.0, -0.75, -0.25, -0.5, 0.75, 1.0, 0.5, -0.25, 0.5, 1.0, 0.5, -1.0, -1.0, 0.0, 1.0, 0.25, -0.5, 0.0, 1.0, 0.25, 0.25, 0.25, 0.25, -0.5, -1.0, 0.0, 0.25, 0.0, 0.25, 0.75, 1.0, -0.25, 0.25, 0.0, 0.0, 0.75, 0.25, 0.5, 0.0, 0.25, -0.25, 0.5, 0.75, 0.75, -0.75, -1.0, -1.0, 0.25, 0.0, -1.0, -0.25, -0.75, -0.25, -0.75, 0.0, -0.25, -0.25, -0.25, -1.0, 1.0, ]);
    const array10 = new Float32Array([0.25, 1.0, 0.25, 0.0, 1.0, 0.0, 0.5, -0.75, 0.75, -0.75, 0.0, -0.25, -0.75, -1.0, -0.25, -0.25, 0.5, 0.0, -0.5, -0.25, -0.5, -0.5, 0.5, 0.25, -0.25, 0.75, 0.0, 0.0, 0.0, -0.75, -0.75, 0.25, 0.0, 0.0, 0.0, -0.75, 1.0, -0.5, -0.75, 1.0, 1.0, -0.25, -0.75, -1.0, 1.0, -0.75, 0.0, -1.0, -0.75, 0.0, 0.25, -0.25, -1.0, -1.0, -0.75, 0.5, 0.75, 0.25, -0.5, 0.75, -0.25, -0.5, 0.25, 0.0, 0.5, 0.0, 0.75, 0.25, -0.75, 0.75, -0.75, 0.0, -0.25, 0.25, -0.5, -0.5, 0.75, -0.5, 0.5, -1.0, -0.25, 0.5, 0.75, 1.0, 0.5, 1.0, 0.75, -0.5, 0.25, 0.0, -0.25, -0.25, -0.5, 1.0, 0.5, -0.5, -1.0, -1.0, -0.5, 0.25, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device50.destroy();
    const array11 = new Float32Array([0.25, 1.0, 0.0, 0.25, 0.0, -0.5, 0.25, -1.0, -0.25, -0.75, 0.25, 0.5, -0.5, 0.0, 0.75, 0.75, 0.75, 0.25, 0.25, -0.5, -0.75, 0.5, -0.5, 1.0, -0.75, -0.25, 1.0, 0.0, 0.25, -0.5, -0.5, 1.0, -0.5, -0.75, 1.0, 0.5, 1.0, 0.5, 0.0, 0.5, 1.0, 0.25, 0.0, 1.0, -1.0, -0.75, 0.75, 0.75, -0.75, 1.0, 1.0, -0.75, -0.25, -0.5, 0.75, 0.25, 1.0, 1.0, 0.25, -0.5, 0.25, 0.0, 0.25, -0.25, 0.0, -0.75, 0.5, 0.5, 1.0, 0.5, 0.5, 0.25, -0.5, -0.75, 1.0, 1.0, -0.5, 0.25, -0.5, -0.5, -0.75, 1.0, 0.5, 0.25, 1.0, 0.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.25, 0.5, -0.75, 0.0, 0.75, 0.75, 0.25, -0.25, 0.0, ]);
    query105.destroy()
    device10.pushErrorScope("out-of-memory");
    const array12 = new Float32Array([0.25, 0.75, -0.25, 0.5, 0.0, -0.75, 0.75, -0.5, -1.0, -0.5, 1.0, -0.75, -0.5, 0.5, 0.0, 0.25, -1.0, -0.25, 0.5, 0.25, 0.75, -0.5, 0.0, -1.0, 0.25, 0.25, -0.25, 0.5, -0.5, -1.0, -0.5, -0.5, 0.0, -0.25, -0.5, 0.5, 0.5, 0.75, -0.25, -1.0, -0.75, -0.5, 0.0, 1.0, -1.0, 0.25, 0.75, 0.0, -1.0, -0.75, 0.0, 0.75, 0.25, 0.5, 0.0, 0.75, 0.0, 0.75, -0.5, -0.25, -1.0, 0.5, 0.75, -0.75, 0.75, -1.0, 0.0, 0.5, -0.5, 0.75, 0.5, 0.5, 0.5, 0.0, 0.25, 0.0, 0.25, 1.0, -0.75, -1.0, 0.25, -0.25, 1.0, -0.75, 1.0, 0.75, 0.5, 0.75, 1.0, 0.75, 0.75, -0.25, -0.75, -0.25, 0.75, 1.0, 0.5, 0.25, 1.0, -1.0, ]);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    device60.queue.submit([]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.pushErrorScope("validation");
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder200.setPipeline(render_pipeline201);
    
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    
    
    query400.destroy()
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    device10.queue.writeBuffer(buffer100, 0, array12, 0, array12.length);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    query101.destroy()
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array10, 0, array10.length);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture_view6013 = texture601.createView({ label: "texture_view6013" });
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    const texture_view6014 = texture601.createView({ label: "texture_view6014" });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array13 = new Float32Array([-0.25, -1.0, 0.75, 0.25, -0.75, 0.25, 0.0, -0.75, -0.5, 1.0, -0.25, -1.0, 1.0, -0.25, 0.75, 0.25, 1.0, -0.25, -0.5, -0.5, -0.25, -0.25, -1.0, -0.25, 1.0, -1.0, 0.25, 0.25, 0.75, 0.25, -0.25, -0.25, 1.0, -0.75, 1.0, -0.25, -1.0, -0.75, -0.75, 0.0, 0.25, -0.75, -0.5, -0.25, 0.25, 0.5, 0.75, -0.25, -1.0, 1.0, 1.0, 0.75, 1.0, 0.75, -0.75, -1.0, -0.75, 1.0, 0.0, -1.0, -1.0, -0.25, 0.25, -0.5, -0.5, -1.0, 0.25, 0.25, 0.75, -0.5, -0.25, 0.0, 0.75, 0.75, 1.0, 0.75, -0.75, -1.0, 1.0, -0.25, -0.75, 1.0, -0.5, 0.75, -0.25, 0.0, 0.25, -0.75, 0.5, 0.25, 0.75, 1.0, -0.25, -0.75, 0.25, -1.0, -0.25, 0.0, 1.0, -0.25, ]);
    
    
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device60.pushErrorScope("validation");
    device20.pushErrorScope("validation");
    
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    
    
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
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
    
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    device70.pushErrorScope("out-of-memory");
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    
    
    
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.destroy();
    
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    device60.queue.writeBuffer(buffer602, 0, array9, 0, array9.length);
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    
    
    
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view6022 = texture602.createView({ label: "texture_view6022" });
    device60.queue.writeBuffer(buffer600, 0, array13, 0, array13.length);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    const texture_view6031 = texture603.createView({ label: "texture_view6031" });
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
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    device90.destroy();
    render_bundle_encoder100.setVertexBuffer(0, buffer101);
    
    
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array14 = new Float32Array([-0.75, 0.25, 1.0, -1.0, 0.75, 0.25, -0.5, 0.75, 1.0, -0.5, -0.5, -1.0, 1.0, -0.25, -0.5, -0.5, 0.25, 1.0, -0.5, 0.25, 0.5, -0.5, 0.25, -0.5, 1.0, -1.0, 0.0, 0.0, 0.5, 0.75, 0.5, -1.0, 0.0, -0.5, 1.0, 0.5, -0.25, -0.5, -0.75, -0.25, -0.5, -0.5, -1.0, 0.5, 0.0, -0.75, -0.5, -0.5, 0.25, -0.75, -0.25, -0.5, -0.5, -0.75, 0.5, 1.0, -0.5, -1.0, 0.75, 0.75, -0.25, 0.25, 0.0, -0.5, -0.75, -0.5, -1.0, -0.5, 0.75, -0.25, 0.25, 0.75, -1.0, -1.0, 1.0, 0.25, 0.5, -0.25, 1.0, -0.75, 0.5, -1.0, -0.5, -0.75, 0.0, -0.25, -0.5, -0.75, 0.75, -0.25, -0.25, -0.75, 0.25, 0.75, 0.25, 0.25, -1.0, 0.5, 0.25, 1.0, ]);
    
    
    device60.queue.writeBuffer(buffer604, 0, array0, 0, array0.length);
    device90.destroy();
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.queue.writeBuffer(buffer602, 0, array8, 0, array8.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.setPipeline(render_pipeline601);
    
    
    device80.pushErrorScope("out-of-memory");
    const array15 = new Float32Array([0.5, -1.0, -0.75, 0.25, -0.5, -0.5, -1.0, 0.5, 0.25, 1.0, -0.25, 1.0, 0.25, 0.0, -0.25, -0.5, -1.0, -1.0, 0.75, -0.25, -0.5, 0.25, -0.25, -0.75, 0.25, -1.0, 0.75, 0.75, 0.25, 1.0, 0.25, -0.5, -0.75, 0.0, -0.75, -1.0, 0.5, 1.0, -0.25, -0.75, -1.0, -0.25, 0.25, 0.25, 0.75, 0.0, 0.25, -1.0, 0.75, 0.25, -1.0, -0.25, 0.25, 1.0, 1.0, -1.0, 1.0, -0.75, 0.0, 0.75, -0.25, 0.75, 0.5, 0.5, 0.5, 1.0, 0.5, -0.25, 0.25, -1.0, 0.75, -0.5, 0.5, 1.0, -1.0, 0.0, 0.25, -0.5, 1.0, 1.0, 1.0, 1.0, 0.75, 0.75, 0.5, 0.0, 0.75, 0.75, -0.5, 0.75, 0.25, 0.5, 0.5, 0.5, 0.25, -0.25, -0.5, -0.5, -0.25, 0.5, ]);
    const texture_view6032 = texture603.createView({ label: "texture_view6032" });
    
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    
    
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.queue.writeBuffer(buffer604, 0, array12, 0, array12.length);
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder601.pushDebugGroup("group_marker");
    {
        await buffer606.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer606.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer606.unmap();
        console.log(new Float32Array(data));
    }
    
    query600.destroy()
    
    {
        await buffer606.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer606.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer606.unmap();
        console.log(new Float32Array(data));
    }
    device60.queue.writeBuffer(buffer606, 0, array5, 0, array5.length);
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    device60.queue.writeBuffer(buffer606, 0, array12, 0, array12.length);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    
    device60.queue.writeBuffer(buffer606, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer605, 0, array7, 0, array7.length);
    
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
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view6003 = texture600.createView({ label: "texture_view6003" });
    device70.queue.writeBuffer(buffer701, 0, array13, 0, array13.length);
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([]);
}