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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    const array0 = new Float32Array([0.0, 1.0, -1.0, 0.5, -0.75, 0.5, -0.5, 1.0, -1.0, -1.0, 0.75, 0.25, 0.25, -0.75, -0.5, 0.75, 0.0, 0.5, 0.0, 0.0, -0.75, 0.0, 0.25, -0.75, 0.25, -0.25, 0.75, -0.5, 1.0, -0.5, 1.0, 0.5, 0.75, 0.75, 0.25, 0.0, -0.5, -0.5, 0.0, 0.25, -0.75, -0.75, 0.5, -0.75, 0.25, 0.75, 0.5, -0.75, 0.75, -1.0, 0.0, 0.0, -0.75, 0.5, -1.0, 0.0, 0.5, 1.0, 0.25, -0.75, 0.5, 0.0, -0.25, 0.5, 0.25, 0.5, 1.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.75, 0.75, 0.0, -0.75, -1.0, 0.75, 0.5, -1.0, 0.25, 0.0, -0.25, -1.0, -0.5, -1.0, -0.25, -0.75, -0.25, -0.25, 0.0, 0.0, -1.0, -0.5, 0.75, -1.0, 0.5, 0.0, -0.5, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.25, -0.75, -1.0, 1.0, -0.25, 0.0, -0.5, -0.5, -1.0, 0.5, -0.25, 1.0, -0.5, 0.25, -0.25, -0.25, 0.5, -1.0, 0.75, 0.75, -0.75, 0.0, 0.0, -0.75, 0.75, 1.0, 0.0, 1.0, 0.5, -0.25, 0.25, 0.0, 0.25, 0.5, 0.25, -1.0, -0.75, 0.5, -1.0, 0.75, -0.75, -1.0, -1.0, -0.75, 0.75, -0.5, 0.0, -0.5, 0.5, -0.5, 0.25, -0.25, 0.0, -1.0, 0.5, 0.25, 0.75, 1.0, -0.75, 0.75, 0.5, 0.25, -1.0, -0.5, -0.75, -0.5, 0.0, 0.25, 1.0, -0.5, -0.5, 0.0, -0.25, -0.25, -0.5, -0.25, -0.25, 0.75, 0.0, 0.5, -0.25, 1.0, -0.25, 0.5, 0.25, -1.0, 0.75, -0.5, 0.0, -1.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.75, -0.5, 1.0, -0.25, 1.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array2 = new Float32Array([-1.0, 0.25, -0.75, 0.25, -0.5, -0.5, -1.0, -0.75, -0.5, -0.5, -0.5, -0.75, 0.5, 0.75, 0.25, -0.25, -1.0, 0.25, 1.0, -0.5, 0.25, 0.25, -0.75, -0.5, 0.5, 0.5, -0.75, 0.75, -0.75, -0.75, 0.0, -0.75, -0.5, -0.75, -1.0, 0.5, -1.0, 0.5, -1.0, 1.0, 0.25, -0.25, 0.0, -1.0, 0.5, 0.25, 0.75, -0.5, -0.25, 0.0, -0.25, -1.0, -0.75, -0.75, 1.0, -0.5, 1.0, -1.0, -1.0, -1.0, 0.25, -0.5, 0.0, -0.5, 0.75, -0.5, -0.25, -0.75, -1.0, 1.0, 0.25, -1.0, 0.0, 0.75, 0.0, -1.0, -0.5, -0.25, 0.25, -0.75, -0.25, -1.0, -0.75, 0.25, -0.5, 0.25, 0.5, 0.25, 0.25, 0.25, -0.75, 0.75, -1.0, 1.0, 0.5, -1.0, 0.0, 0.25, -0.5, -0.25, ]);
    const array3 = new Float32Array([-1.0, -0.75, -0.25, -0.5, 0.0, -0.5, 0.75, -1.0, 0.5, -0.5, 0.5, 0.5, 0.25, -1.0, 0.25, -0.25, -0.5, 0.75, 0.0, -1.0, -0.75, -0.5, 1.0, 0.25, 0.5, -0.25, -0.25, -0.25, -0.75, 1.0, 0.25, 0.25, 0.25, 0.25, -0.75, 0.75, 1.0, 0.75, 0.5, 1.0, 0.25, 0.5, -0.25, -0.75, 0.5, 0.0, -1.0, 0.0, 0.25, -0.5, 0.5, -1.0, -0.75, -0.25, 0.25, -0.25, 1.0, 0.25, -1.0, -0.75, 0.75, -1.0, 0.0, -1.0, 1.0, 0.25, 1.0, -1.0, 0.75, -0.5, 0.25, 0.5, 0.75, -1.0, 0.25, 1.0, 0.25, 0.75, -0.75, -0.5, 0.75, -0.75, -0.75, -0.75, 0.5, 0.25, 0.5, 0.5, 0.0, 0.75, -0.5, -0.5, 0.5, 0.0, -0.5, 0.0, 0.25, -1.0, 0.75, 1.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    
    
    query300.destroy()
    const array4 = new Float32Array([0.5, 0.5, 1.0, 0.0, -1.0, -1.0, -0.5, -0.25, 0.75, -0.25, 0.5, 0.75, 0.5, 1.0, -0.5, 0.0, -0.25, 0.25, 0.5, -0.25, -1.0, 0.0, 0.25, -0.5, 0.75, 0.5, 0.75, 1.0, 0.75, 0.75, 1.0, 0.0, 0.5, 0.0, 0.5, -0.25, -0.25, 0.75, -0.25, 0.75, -0.5, 0.75, 1.0, -0.25, -1.0, -0.5, -0.5, 0.25, 0.75, -0.25, 0.5, 0.5, 0.5, -1.0, 0.75, 0.75, -0.5, 0.75, 0.5, -1.0, 0.25, -0.75, -0.5, -0.25, 0.5, -0.25, 0.25, -0.75, -0.75, 1.0, 0.75, -0.75, -1.0, -0.75, 0.75, -0.5, 0.25, -0.5, 0.25, 0.5, 0.0, -0.25, -0.5, 1.0, -0.75, 0.0, -0.75, -0.5, -0.75, 0.0, 0.75, -0.25, 0.75, -0.75, 0.0, -0.75, 0.0, -0.75, -0.5, -0.75, ]);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const array5 = new Float32Array([-0.75, 1.0, 1.0, -0.5, -0.25, -1.0, 0.0, 0.75, 0.5, 0.25, 0.75, -0.25, 1.0, -0.75, 0.0, 1.0, 0.5, -1.0, 1.0, -0.25, 0.0, 0.0, 0.0, -0.25, 0.75, 0.75, 0.5, -1.0, -1.0, -0.75, 0.25, 1.0, 0.0, 0.75, 1.0, 0.0, 1.0, -1.0, -0.5, 0.5, 0.0, 1.0, 0.25, -0.75, -1.0, -0.5, 0.75, 1.0, 0.25, -0.5, -0.25, -1.0, -0.5, 0.75, -0.5, -0.75, 0.5, -1.0, -0.5, 1.0, -0.5, -0.75, -1.0, -0.75, 1.0, 0.25, -0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 0.0, -0.5, 0.5, -0.5, -0.5, 0.25, 0.25, 1.0, 0.75, 0.25, 0.25, 0.75, -1.0, 1.0, -0.5, 0.75, -0.25, 0.5, 0.25, 0.75, 0.25, 0.0, -1.0, -1.0, -0.75, -1.0, -0.25, -0.25, ]);
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
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
    
    device30.destroy();
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query200.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder200.popDebugGroup();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    query201.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("internal");
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    texture200.destroy();
    texture201.destroy();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    buffer201.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    device20.pushErrorScope("internal");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    buffer200.destroy()
    device00.destroy();
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const array6 = new Float32Array([0.75, 0.25, -0.25, -1.0, 0.75, 0.75, -1.0, -0.5, 1.0, 0.25, 0.25, -1.0, -0.5, -0.75, 0.75, 0.5, -1.0, -1.0, 0.25, -0.25, 0.5, -0.5, -0.25, -0.5, 0.5, 0.75, 0.25, -1.0, 0.5, -1.0, 0.5, 0.5, 0.25, 0.25, -0.25, 0.25, -0.25, -0.25, -0.75, 0.75, 0.0, 0.75, -0.75, -0.25, -0.25, 0.0, 1.0, -1.0, 0.25, -0.75, 0.5, 1.0, 0.5, 1.0, 0.5, -0.75, -0.5, 0.5, 1.0, -0.5, -0.5, 0.25, -0.5, -1.0, -0.25, -0.75, 0.0, -0.25, -0.5, 1.0, -0.75, -0.5, -0.5, -0.25, 0.0, 0.75, 0.25, -1.0, -0.75, 1.0, 0.5, 0.75, 0.5, -0.25, -1.0, -0.75, -0.5, 0.75, 0.75, -0.5, 0.75, 0.5, 0.75, 1.0, 0.25, 0.75, 1.0, 0.75, 0.25, -0.25, ]);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query400.destroy()
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    query201.destroy()
    texture203.destroy();
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer203);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    buffer401.destroy()
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_bundle_encoder200.drawIndirect(buffer203, 0);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    
    query200.destroy()
    query201.destroy()
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder200.popDebugGroup();
    
    
    
    device30.destroy();
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_bundle_encoder401.setPipeline(render_pipeline401);
    
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    query200.destroy()
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    buffer402.destroy()
    
    
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
    texture202.destroy();
    render_bundle_encoder400.setPipeline(render_pipeline401);
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    buffer202.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    
    
    query400.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    
    buffer403.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query202.destroy()
    
    query201.destroy()
    
    query200.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    query302.destroy()
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    query200.destroy()
    
    
    query402.destroy()
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    query401.destroy()
    texture200.destroy();
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query201.destroy()
    buffer204.destroy()
    
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_bundle_encoder400.popDebugGroup();
    buffer203.destroy()
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    const sampler208 = device20.createSampler( { label: "sampler208" } );
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    query404.destroy()
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.queue.writeTexture({ texture: texture204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query204.destroy()
    
    
    
    
    query401.destroy()
    render_bundle_encoder402.setPipeline(render_pipeline403);
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    render_bundle_encoder400.setVertexBuffer(0, buffer405);
    query202.destroy()
    device40.destroy();
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    query204.destroy()
    
    render_bundle_encoder200.draw(3);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture205.destroy();
    
    query204.destroy()
    render_bundle_encoder200.finish();
    query202.destroy()
    
    query200.destroy()
    query201.destroy()
    
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    const texture_view2024 = texture202.createView({ label: "texture_view2024" });
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    device20.pushErrorScope("out-of-memory");
    
    
    query201.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const array7 = new Float32Array([-1.0, -1.0, 0.75, -1.0, 1.0, 1.0, 1.0, 1.0, 0.0, -0.5, 0.0, 0.0, -0.25, -0.75, -0.5, -1.0, -0.75, 0.75, 0.25, -1.0, -1.0, 0.5, 1.0, -0.25, -0.75, -1.0, -0.5, 0.5, 0.75, -1.0, 1.0, -0.5, 0.0, -0.5, 1.0, 0.5, -1.0, -0.5, 0.0, 0.0, 0.25, -0.75, -0.5, -0.25, 1.0, -1.0, 0.5, 0.5, -0.25, -0.75, 1.0, -0.5, -1.0, -0.5, 0.75, 1.0, 0.25, -1.0, 0.25, -0.5, -1.0, 1.0, -0.5, -0.25, -1.0, -0.5, 0.0, -0.75, 0.5, 0.75, 0.0, 0.0, 0.25, -0.5, -0.5, -0.5, -0.75, -0.75, 0.75, -0.5, 0.5, 0.5, 0.75, -0.75, 0.0, 0.5, 0.25, -0.75, 0.75, 1.0, 1.0, 0.75, 1.0, 0.25, 1.0, -0.75, -1.0, 0.25, -0.5, -1.0, ]);
    render_bundle_encoder200.popDebugGroup();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query200.destroy()
    
    
    
    query401.destroy()
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    device20.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    
    
    
    
    query402.destroy()
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    
    query200.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    query201.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
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
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    
    
    query402.destroy()
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
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

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    
    query201.destroy()
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.setVertexBuffer(0, buffer202);
    render_bundle_encoder202.draw(3);
    
    query200.destroy()
    query202.destroy()
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    buffer203.destroy()
    texture204.destroy();
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    texture200.destroy();
    
    
    buffer207.destroy()
    render_bundle_encoder202.popDebugGroup();
    
    
    
    
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
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query203.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array8 = new Float32Array([-0.25, -1.0, -0.5, 0.5, -0.25, 0.75, -0.5, 0.5, -0.75, 1.0, 1.0, 0.25, -1.0, 0.25, -0.5, 0.25, -0.25, 0.75, 0.75, -0.25, 1.0, -0.75, 0.25, 0.0, 0.0, 1.0, -0.5, 0.75, 1.0, -0.5, 0.0, -0.5, 0.0, -1.0, 0.5, 0.25, -0.5, -1.0, 0.75, 0.5, 0.25, 1.0, 0.25, 1.0, 0.75, 1.0, 0.75, 1.0, -0.5, -1.0, 0.0, 0.25, -0.5, 0.75, -0.25, -1.0, -0.25, 0.75, -0.5, -0.5, 0.0, 0.25, -0.5, -1.0, 0.0, -0.25, -0.5, 0.25, 0.5, 0.75, 0.75, -0.75, 1.0, 0.75, -0.75, 0.0, 0.75, 0.0, -0.25, -0.75, 0.25, -0.5, -0.25, -0.5, -0.5, -0.5, 1.0, 0.75, -1.0, 0.25, -0.5, -1.0, 0.5, -1.0, -0.25, 0.75, 0.0, -1.0, -0.25, 0.75, ]);
    
    render_bundle_encoder400.draw(3);
    
    
    render_bundle_encoder202.setIndexBuffer(buffer202, "uint16");
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    
    buffer208.destroy()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder202.drawIndexedIndirect(buffer203, 0);
    
    
    
    
    query405.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder201.setVertexBuffer(0, buffer202);
    render_bundle_encoder202.setIndexBuffer(buffer203, "uint16");
    query200.destroy()
    query206.destroy()
    
    buffer405.destroy()
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    buffer202.destroy()
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    
    render_bundle_encoder201.setIndexBuffer(buffer202, "uint16");
    
    render_bundle_encoder201.drawIndexedIndirect(buffer208, 0);
    buffer205.destroy()
    device20.pushErrorScope("validation");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    query202.destroy()
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder202.popDebugGroup();
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    
    
    query201.destroy()
    query203.destroy()
    render_bundle_encoder202.finish();
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query201.destroy()
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    query203.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    query201.destroy()
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}