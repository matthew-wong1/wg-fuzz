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
    const array0 = new Float32Array([-1.0, -0.75, 0.5, -0.75, 0.0, 0.5, -0.5, 0.0, 0.75, 0.75, 0.75, -0.75, -1.0, 0.75, 0.5, 0.75, -0.25, 1.0, 0.5, -0.5, -0.75, 0.75, -1.0, 0.75, -0.75, -1.0, -0.25, 0.25, 1.0, 0.25, 0.75, -1.0, -0.25, 0.0, 0.0, -1.0, -0.75, 0.0, 0.5, 0.5, -0.5, -1.0, 0.5, -0.5, 1.0, -0.5, 1.0, 1.0, -0.25, 0.0, -0.75, 0.25, 1.0, 0.75, 1.0, -0.75, 0.5, 1.0, -0.25, -0.5, 1.0, 0.5, -0.5, -1.0, -0.5, -0.75, 1.0, 0.5, 1.0, -1.0, -0.5, -0.5, 0.25, 0.0, 0.25, -0.75, -1.0, -0.75, 0.75, -1.0, -0.5, 0.75, 0.0, 0.75, -0.5, -0.25, 1.0, -1.0, -1.0, -0.5, 0.75, 0.25, -0.25, -0.5, 0.5, 0.75, -0.25, -1.0, 0.5, 0.5, ]);
    const array1 = new Float32Array([0.75, -1.0, 0.25, 0.75, 0.5, 0.0, -0.25, 0.25, 1.0, -0.75, 0.75, -0.25, 0.5, -0.5, -0.75, -1.0, -0.25, 0.75, 0.75, 1.0, -0.5, -0.5, -0.5, 0.75, 0.0, 1.0, -0.5, 0.25, 0.25, -0.25, 1.0, -0.25, 0.0, 0.0, -0.5, 0.25, -1.0, -0.75, -0.5, 0.25, 0.5, -1.0, -0.75, 0.25, -0.75, -0.75, 1.0, -0.75, -0.25, 1.0, 0.5, 1.0, -1.0, 0.75, 0.75, 1.0, 0.0, 0.25, -1.0, 0.5, 0.25, 0.75, 0.25, 0.75, -0.75, 0.25, -1.0, 0.5, -0.5, 0.25, 0.5, 0.75, 1.0, -0.75, 0.5, -0.5, -1.0, -0.25, -1.0, -0.25, 0.5, -1.0, 0.5, 0.25, 0.0, 1.0, 0.75, -0.25, 0.75, -1.0, 0.5, 0.25, 0.5, -0.5, 0.75, -0.75, 0.0, 0.75, -1.0, 0.5, ]);
    const array2 = new Float32Array([1.0, -0.75, -0.75, -0.5, 0.75, 0.75, 0.5, -0.25, -0.75, -0.75, -0.75, -0.25, -1.0, 0.5, 0.75, -1.0, -0.75, 0.5, -0.5, 0.25, 0.0, -0.75, 1.0, -1.0, -0.75, 0.5, -1.0, 0.5, 0.25, 0.75, 0.0, -0.75, 1.0, -0.25, 0.5, 0.5, -0.25, -0.75, 0.25, 0.75, 0.0, 0.25, -0.5, -0.25, 0.25, 1.0, 0.75, -0.25, 0.25, -0.75, 0.25, -0.75, -0.5, 0.25, -1.0, -1.0, -0.75, -0.5, 0.0, 0.75, -0.75, -0.25, 0.75, 0.25, 0.25, 0.25, 0.0, -0.5, 0.5, -0.5, -1.0, 0.25, 1.0, 0.25, 0.75, 0.0, -0.25, 0.75, 0.75, 0.5, 0.25, -0.5, -0.25, 0.5, 1.0, 0.5, -0.25, 1.0, -0.25, 0.0, 0.0, -0.5, -0.25, -0.25, 0.75, -1.0, -0.75, 0.75, 0.5, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.0, -1.0, 0.75, -0.5, 0.25, -0.25, -0.25, 0.25, 0.25, -0.5, 0.25, -0.75, 0.5, -0.5, 0.75, -0.75, 0.75, 1.0, -0.5, 0.5, -1.0, 0.5, 0.5, 0.75, -0.5, -0.5, -1.0, 1.0, 0.75, 0.5, -0.5, 0.75, -0.75, 1.0, -0.5, 0.5, 0.25, 0.75, -0.75, -1.0, -1.0, 0.75, 0.5, 0.75, 0.75, 0.0, -0.25, -0.25, 0.25, -0.25, 0.75, -1.0, 0.75, 0.25, 0.0, 0.75, 0.0, -0.25, 1.0, 0.0, 0.75, 0.25, 0.0, 0.25, 0.5, 0.75, -0.25, -0.5, -0.25, -0.5, -0.75, 1.0, -0.75, 0.75, 0.25, -0.25, 0.0, -0.25, -0.5, 0.0, -0.5, -0.75, -0.5, 0.5, 0.5, 0.5, -1.0, 0.5, 0.25, 0.5, -0.25, 0.75, -1.0, 0.75, 0.75, 0.5, 0.0, -0.75, 1.0, -0.25, ]);
    const array4 = new Float32Array([-1.0, -1.0, 0.75, 1.0, -0.75, -0.75, 0.5, -0.25, 0.5, -0.5, 0.0, -0.75, 0.25, 1.0, 1.0, 0.5, -0.5, -0.25, 0.5, -0.25, -0.25, -0.5, 0.5, -0.25, -0.25, 0.0, -0.75, -0.75, 0.75, 1.0, -0.25, -0.5, -0.25, -0.5, 0.0, 0.5, 0.5, 1.0, 1.0, 0.75, -0.25, -0.75, -0.75, 0.75, 1.0, 0.5, -1.0, -0.5, -0.5, 1.0, 0.5, 0.25, 1.0, 0.0, 0.5, -1.0, -1.0, -1.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.5, 0.75, 0.75, 0.25, 0.25, 0.75, -0.5, 1.0, -1.0, 1.0, -0.75, -0.5, 1.0, -1.0, 1.0, 1.0, -1.0, -0.25, 0.25, 0.25, -1.0, 1.0, 0.75, -0.25, -0.75, 1.0, 0.0, -0.5, -0.25, 0.0, 0.5, -0.25, 1.0, 0.5, -0.75, -1.0, 0.25, ]);
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer000.destroy()
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const array5 = new Float32Array([-0.5, 0.75, 0.75, -0.5, 0.0, 0.75, 0.5, 0.0, 0.5, -0.5, 0.25, 0.25, -0.25, -0.25, 0.75, 1.0, 0.0, 0.25, 1.0, -0.75, -0.25, 0.75, 0.25, 1.0, 0.25, 0.5, -0.25, -0.75, 0.75, 1.0, -0.5, -0.5, -1.0, -0.5, 0.25, 0.5, 0.5, 1.0, -0.25, 1.0, 1.0, -0.75, -0.25, 0.25, -0.75, 0.0, 1.0, 0.5, 0.75, 1.0, 1.0, 0.75, -0.25, -1.0, 0.5, -0.75, -0.5, 0.75, 0.25, 1.0, -0.25, -1.0, 0.25, -0.75, 1.0, -0.75, 0.5, -0.25, -0.75, 0.25, 0.5, 0.25, 1.0, 1.0, 1.0, -0.25, -1.0, 0.5, 0.0, 1.0, 0.0, -0.75, 0.5, 0.5, 0.75, -0.25, -0.75, 1.0, -0.75, 0.0, -1.0, -1.0, -0.25, -0.75, 0.0, 0.0, 0.0, -1.0, 0.5, 1.0, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device10.pushErrorScope("validation");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array6 = new Float32Array([-1.0, 0.25, -1.0, -0.25, -1.0, -0.25, 0.75, 0.5, -0.75, 0.75, 0.5, 1.0, -0.25, 1.0, 0.75, 0.75, 0.0, 0.25, 0.75, 1.0, -0.5, 0.5, 0.0, 0.25, -1.0, -0.5, 0.5, 0.75, -1.0, 0.75, -0.25, 1.0, 0.0, -0.25, -1.0, 0.0, 1.0, 0.75, 0.5, -1.0, -0.75, -0.25, 0.5, 0.25, -0.5, 0.75, -0.25, -0.75, 0.25, 0.75, -0.75, -0.5, 1.0, -1.0, 0.5, 0.5, -0.75, -0.25, 0.5, 1.0, -0.5, -0.5, -0.25, -0.5, 0.0, 0.5, -0.5, 1.0, 1.0, 0.25, 0.0, 0.75, -0.25, 0.25, -1.0, 0.25, 0.75, 0.25, 0.25, 0.25, 0.75, 0.75, -0.5, -0.5, -0.25, -1.0, 1.0, -0.5, 0.5, -0.25, -0.25, -0.5, 0.5, -0.5, 0.25, 1.0, 0.5, -0.5, 1.0, 0.0, ]);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer100.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
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
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder101.setVertexBuffer(0, buffer102);
    buffer102.destroy()
    render_bundle_encoder101.draw(3);
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    buffer101.destroy()
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device20.pushErrorScope("validation");
    texture200.destroy();
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    command_encoder200.clearBuffer(buffer200);
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer200.destroy()
    texture300.destroy();
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture201
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
    texture300.destroy();
    buffer201.destroy()
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    texture101.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder201.insertDebugMarker("mymarker");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    command_encoder200.insertDebugMarker("mymarker");
    buffer202.destroy()
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const array7 = new Float32Array([0.25, -0.5, 0.75, -1.0, 0.0, -0.5, 1.0, 0.0, 1.0, -1.0, -0.25, 0.5, -0.5, 0.0, -0.75, -0.5, 0.25, 1.0, 1.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.25, -0.75, 0.5, -1.0, -1.0, 0.75, 0.25, -0.5, 0.0, -1.0, 0.25, -0.75, 0.5, -1.0, -0.25, 0.5, 0.5, 0.25, -0.75, 0.25, -1.0, 0.0, 0.0, 0.5, 0.5, -0.25, -0.25, -0.5, 0.75, 0.5, 1.0, 0.25, -0.5, -0.5, 0.25, 0.0, 0.75, 0.75, -0.5, 0.75, 0.25, 1.0, 0.25, -1.0, 0.0, -1.0, 0.25, -0.75, 0.0, -1.0, 0.0, -0.75, 0.25, 0.25, 1.0, -0.25, 0.0, -1.0, -0.25, -0.25, 1.0, 1.0, -1.0, -0.5, -1.0, -0.25, -0.75, 0.25, 0.0, -0.5, -0.25, 0.0, -0.5, 0.25, ]);
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    
    
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    command_encoder201.clearBuffer(buffer203);
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    const command_buffer300 = command_encoder300.finish();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture201
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query200.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer205.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
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
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.clearBuffer(buffer202);
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    
    query000.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const array8 = new Float32Array([0.5, 0.5, -0.75, 0.25, 0.25, -1.0, -0.75, 0.75, 1.0, 0.25, 1.0, 1.0, 0.25, 0.25, 0.75, -0.75, 0.0, 0.25, 0.25, 0.25, -0.25, 0.0, 0.25, 0.0, 0.5, -0.75, 0.0, 0.0, 0.25, -0.75, 1.0, 1.0, -0.75, -0.25, 0.0, 0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 0.5, 0.5, 0.25, -1.0, -1.0, 0.75, 0.25, -0.25, 0.75, -0.25, 0.25, 0.75, -0.5, 0.5, -1.0, 0.75, 0.75, 1.0, 0.75, 0.25, -1.0, 0.0, 1.0, 0.5, -1.0, 0.75, -0.5, 0.0, -0.25, 1.0, 0.0, -0.75, -0.25, -0.5, 0.0, 0.0, -0.5, 0.5, 0.25, -1.0, 0.25, 1.0, 0.25, 1.0, -0.75, 0.0, -0.25, 0.25, 0.75, -0.25, -0.75, -0.25, 0.75, 0.25, 0.25, -0.5, -0.25, -1.0, -0.75, ]);
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    command_encoder201.clearBuffer(buffer205);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("validation");
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
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
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    buffer300.destroy()
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    const array9 = new Float32Array([1.0, -0.5, -0.5, -0.75, 0.75, 0.75, -0.25, 0.0, -1.0, 0.5, 0.75, -0.75, 0.0, -0.5, 0.0, 0.75, -0.5, 0.5, -0.5, -0.25, -0.75, 0.0, -0.75, 0.25, 1.0, 0.25, -0.5, -1.0, 0.75, -0.75, -0.25, 0.5, -1.0, -0.5, 1.0, 0.75, 0.75, 0.5, -0.25, -0.75, 0.75, 0.75, 0.25, -1.0, 1.0, 0.0, -1.0, 1.0, -1.0, -1.0, -0.75, -1.0, 1.0, -0.5, 0.5, -0.5, 1.0, 1.0, -1.0, 0.5, 0.75, 1.0, -0.75, 0.75, 0.0, 0.5, 1.0, 0.0, -1.0, -1.0, 1.0, -0.5, 0.5, -0.75, 0.5, -1.0, 0.0, -1.0, -1.0, -1.0, 0.75, 1.0, -1.0, 0.25, -0.75, 0.0, 0.0, 0.25, 0.5, 0.75, -1.0, -0.5, 0.75, 0.5, 0.75, 0.5, -0.25, -0.5, -0.5, -0.5, ]);
    query200.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    const array10 = new Float32Array([-1.0, -1.0, -0.25, -1.0, -0.75, 0.0, -1.0, 1.0, -0.75, -0.75, -0.5, 0.0, 0.25, 0.75, 0.25, 0.75, 1.0, -0.75, 1.0, -1.0, -0.75, -0.75, 0.5, 0.0, 1.0, 0.75, -0.5, 0.75, -0.5, 0.25, -0.75, 0.75, -0.75, -0.75, -0.25, 0.0, 0.0, 1.0, 0.0, 0.25, 0.0, 0.75, 0.0, 0.5, -0.25, 0.0, 0.0, 0.5, 0.75, -0.25, 0.5, 0.25, 0.75, 1.0, 0.75, -0.75, -0.25, -0.25, -0.25, 0.75, 0.75, 0.5, -0.5, 0.75, 0.25, 0.5, 0.0, 0.0, -1.0, 0.5, -0.25, -1.0, 0.5, 0.5, 0.5, 0.5, 1.0, 0.75, -0.75, 0.75, 1.0, 0.75, -0.25, -0.5, -0.5, -0.75, 0.5, -0.25, -0.75, 0.5, -0.5, 0.25, -1.0, 1.0, 0.0, 1.0, -0.75, -1.0, -0.5, 0.75, ]);
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture201
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
    device30.pushErrorScope("internal");
    command_encoder201.copyBufferToBuffer(
        buffer203,
        0,
        buffer203,
        0,
        400
    );
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_buffer201 = command_encoder201.finish();
    query000.destroy()
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array9, 0, array9.length);
    query202.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    device50.pushErrorScope("validation");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    
    query201.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    buffer203.destroy()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    buffer302.destroy()
    query501.destroy()
    
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    query200.destroy()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
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
    device20.pushErrorScope("internal");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query501.destroy()
    
    device50.pushErrorScope("internal");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const array11 = new Float32Array([0.0, 0.0, -1.0, 0.25, -0.75, -0.25, 1.0, 0.5, 0.0, 0.75, -0.25, -1.0, -0.75, -1.0, 0.25, -0.25, -0.25, -0.25, 0.5, -0.25, -1.0, 0.0, 0.75, 0.75, 0.5, -0.5, -0.75, 1.0, -1.0, 0.75, -1.0, -0.5, -0.75, 0.25, 1.0, 0.0, 1.0, -0.75, -1.0, 0.25, 0.5, 0.5, -0.5, 0.25, 1.0, 0.0, 0.25, 0.0, -0.25, 0.75, 0.5, -0.75, 0.75, 0.5, 1.0, -0.5, -0.25, 0.25, -1.0, -0.75, -0.25, 0.25, -0.75, 1.0, 1.0, -1.0, 0.5, 0.75, 0.25, -1.0, -0.75, 0.0, -0.75, -1.0, 0.5, 0.25, 0.25, 0.0, 0.0, -1.0, -0.25, 1.0, 0.75, 1.0, 0.75, 0.5, -0.25, 0.0, -1.0, -0.5, -1.0, 1.0, 1.0, 1.0, 0.75, -0.5, 0.5, -0.25, -0.5, 0.5, ]);
    
    texture300.destroy();
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    render_bundle_encoder202.setPipeline(render_pipeline203);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
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
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer301.destroy()
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    texture201.destroy();
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    command_encoder501.insertDebugMarker("mymarker");
    texture500.destroy();
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    query201.destroy()
    
    query204.destroy()
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
    command_encoder500.insertDebugMarker("mymarker");
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    
    
    
    
    buffer204.destroy()
    query501.destroy()
    
    render_bundle_encoder201.setPipeline(render_pipeline203);
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("out-of-memory");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    const command_buffer501 = command_encoder501.finish();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query203.destroy()
    
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    buffer303.destroy()
    device30.queue.writeBuffer(buffer304, 0, array8, 0, array8.length);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device70.pushErrorScope("internal");
    {
        await buffer306.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer306.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer306.unmap();
        console.log(new Float32Array(data));
    }
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer500.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query202.destroy()
    
    query502.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
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
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_buffer700 = command_encoder700.finish();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
    query500.destroy()
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
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
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture501.destroy();
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    command_encoder302.clearBuffer(buffer306);
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    render_bundle_encoder202.setVertexBuffer(0, buffer201);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer206, 0, array11, 0, array11.length);
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device60.queue.writeTexture({ texture: texture600 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    query501.destroy()
    
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    device30.queue.submit([command_buffer300, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer306.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer306.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer306.unmap();
        console.log(new Float32Array(data));
    }
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
    
    
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query501.destroy()
    device20.pushErrorScope("out-of-memory");
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.pushErrorScope("validation");
    const command_buffer502 = command_encoder502.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer302 = command_encoder302.finish();
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder3010.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer500, command_buffer501, command_buffer502, ]);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    device70.queue.submit([command_buffer701, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    device30.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}