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
    const array0 = new Float32Array([0.5, 0.75, -0.25, 1.0, 0.25, -0.25, -0.75, 1.0, -0.5, 0.0, -0.25, 0.25, 0.5, 0.0, -0.75, 1.0, -0.5, 1.0, 1.0, 0.25, -1.0, 1.0, 0.5, -0.25, -0.75, -0.5, -1.0, -1.0, 1.0, 1.0, -1.0, 1.0, -0.5, 0.5, 0.5, 0.0, 0.25, -1.0, -0.75, 0.25, 1.0, 0.5, -1.0, 0.5, -0.5, 0.5, 0.75, -0.25, -0.5, 0.5, -1.0, 0.0, -1.0, 0.5, -0.25, -0.75, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, -0.75, -1.0, -0.75, 0.75, 1.0, 0.75, -0.75, 1.0, -1.0, 1.0, 0.0, -0.25, 0.0, -0.75, -0.25, 0.25, 1.0, 1.0, 1.0, 0.25, -1.0, 1.0, 0.5, -1.0, 0.75, -0.5, 0.25, 0.0, -0.75, 1.0, 0.5, 0.5, 0.5, -0.5, 0.25, 0.75, -0.5, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device00.pushErrorScope("internal");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array1 = new Float32Array([0.75, -0.75, -0.75, 1.0, 0.25, -0.25, 0.25, 0.5, -0.75, -0.5, -0.5, 0.5, -0.75, 0.0, -0.25, -0.75, 0.25, 0.5, -0.75, 1.0, 0.25, -0.5, 0.0, 0.5, -0.75, 1.0, 1.0, -0.75, 0.75, -0.75, 0.5, -0.5, -0.75, 0.5, 0.5, 0.25, -0.25, -0.5, 1.0, 0.0, 0.5, 0.0, 1.0, -0.25, 0.75, 0.25, -0.75, 1.0, 0.5, 0.5, 0.0, 0.5, -0.5, -1.0, -1.0, 0.0, 0.75, -0.75, 0.25, -0.75, -0.25, 0.0, 0.25, -1.0, 0.5, -0.75, -0.5, 1.0, 1.0, 0.75, 0.0, 0.75, -0.75, -0.5, -0.75, 0.25, -1.0, 1.0, -0.75, 1.0, -0.75, 0.25, 0.5, 0.0, 0.25, -0.75, 0.0, -0.25, 0.25, 0.75, -0.75, 0.5, 0.0, 0.75, 0.5, -1.0, 0.25, -0.25, -0.5, -1.0, ]);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([-0.5, -0.5, -0.75, 0.25, 0.5, 0.0, -0.25, 1.0, 0.25, 0.25, 0.0, -0.5, 0.75, 0.75, -0.5, 1.0, -0.25, 0.75, 0.75, -0.5, 0.5, 0.0, 1.0, -0.75, 0.75, -0.5, -0.5, 0.75, 0.25, -0.25, 0.25, -0.75, 0.5, -0.75, -0.25, -0.75, 0.75, -1.0, -1.0, 0.0, -0.25, 0.5, 0.75, -0.25, -0.5, -0.25, -0.5, -0.5, 0.0, -0.5, 0.25, 0.0, 1.0, 0.0, -1.0, -0.75, 0.5, -1.0, 0.0, -1.0, -0.25, -0.5, 1.0, 0.0, 0.75, 0.5, -0.5, 0.0, 0.0, -1.0, 0.25, 0.5, -0.75, 0.0, 1.0, -0.75, 0.75, 0.75, 1.0, 1.0, 1.0, 0.0, 0.25, 0.5, 0.5, 0.5, 0.5, -0.5, 0.75, -1.0, 0.5, -0.25, 0.5, 0.75, -0.75, 0.0, 0.75, -0.25, -1.0, 0.25, ]);
    
    render_bundle_encoder000.popDebugGroup();
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    
    query001.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array3 = new Float32Array([-1.0, -0.5, 0.25, -1.0, -0.75, -0.25, 0.5, -0.75, -0.75, 0.0, 0.75, -0.5, 0.0, 0.75, 0.0, 0.5, -0.25, 0.25, 0.75, -0.5, 0.75, 1.0, 0.25, 0.25, -0.25, 0.25, -0.25, 0.5, -0.25, -1.0, 0.75, -0.75, 0.5, 1.0, -0.5, 1.0, -0.25, 1.0, 0.5, -0.75, -0.5, 1.0, 0.5, -1.0, 0.75, -0.25, -1.0, -0.75, 1.0, 0.5, -0.25, 0.75, 0.75, -0.75, 0.75, -0.75, -1.0, 0.75, 1.0, 1.0, 0.25, 0.0, -0.5, -0.25, 1.0, -0.75, 0.75, 0.0, 0.25, -0.25, -0.75, 1.0, -0.5, -0.5, 0.25, -0.5, -0.25, 0.25, 1.0, 0.5, 0.75, -0.75, 0.5, -0.5, 0.25, 0.0, 0.0, 0.25, 0.0, 1.0, 0.75, -0.75, -0.5, 0.0, 0.25, 1.0, -1.0, 0.75, 0.75, 0.75, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    query002.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture001.destroy();
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer000.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture002.destroy();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    query000.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    query000.destroy()
    buffer000.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    buffer005.destroy()
    buffer003.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    
    
    const array4 = new Float32Array([-0.25, -0.25, 0.75, -0.5, -0.75, 0.75, -0.25, -0.75, 0.25, -1.0, 0.0, -0.25, 0.25, 0.0, -1.0, 0.0, -1.0, -0.5, 0.0, 1.0, -0.5, -0.75, 0.25, -0.25, 1.0, 1.0, -0.75, -0.5, 1.0, 1.0, -1.0, -0.25, 0.5, -1.0, 0.25, 0.75, 0.0, -1.0, 0.0, -0.75, -0.25, 1.0, 0.5, -0.25, 1.0, -1.0, 0.0, 1.0, -1.0, 1.0, -0.75, 1.0, 0.5, 1.0, -0.75, 0.0, 0.0, 0.0, 0.75, -0.5, -1.0, 0.25, 1.0, 1.0, 0.0, 0.25, 1.0, -0.25, 0.0, -0.5, -0.75, 0.25, 0.75, -1.0, -0.5, 1.0, 0.25, 0.5, -1.0, 0.75, -0.75, 0.75, -0.75, -1.0, 1.0, -1.0, 1.0, 0.5, -0.5, -0.25, -1.0, 0.0, -0.5, -0.75, -0.75, 0.25, -1.0, 0.25, -0.25, -0.5, ]);
    buffer002.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer007.destroy()
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.destroy();
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    render_bundle_encoder002.setVertexBuffer(0, buffer005);
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    query001.destroy()
    
    render_bundle_encoder002.drawIndirect(buffer001, 0);
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    device00.destroy();
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query001.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([-1.0, 0.5, -1.0, -0.5, -1.0, 1.0, -0.25, -0.75, 0.0, 1.0, -0.25, 0.75, 1.0, 0.25, 0.5, -0.25, 0.25, -0.5, 0.25, -1.0, -0.5, 0.25, -1.0, -0.5, -1.0, -0.25, -0.25, -1.0, 0.5, -0.25, 1.0, 0.5, 0.25, 0.0, 0.5, 0.0, -0.75, -0.25, 1.0, -1.0, -0.25, -0.75, -1.0, -0.25, -0.5, 0.0, 0.75, 0.75, 0.5, -1.0, 0.75, 1.0, -0.5, -0.25, 1.0, 0.0, 0.0, -0.5, -0.25, 0.75, -0.5, 0.0, -1.0, -1.0, 0.0, 0.0, 0.0, 0.25, 0.75, -0.5, 0.75, 0.25, 1.0, 0.25, -0.5, -0.75, -0.25, -1.0, 0.25, 0.5, 1.0, 0.0, -1.0, -0.5, 0.5, 0.0, -0.5, 1.0, -0.75, -1.0, 0.75, 0.5, -0.5, -0.75, 0.75, 0.25, 0.25, 0.25, -0.75, -0.75, ]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    device70.pushErrorScope("out-of-memory");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const array6 = new Float32Array([1.0, 0.5, -1.0, 0.25, 0.25, -1.0, -0.5, -1.0, -0.25, 0.25, 0.0, 0.5, -0.25, 0.75, 0.75, -0.75, 0.0, -0.5, 0.75, 1.0, -0.25, 0.75, 0.75, 0.25, 0.75, -1.0, 0.75, 0.0, 0.25, 0.75, -0.25, -0.25, -1.0, -0.75, -0.5, 0.75, 1.0, 0.0, 1.0, -0.5, -1.0, 0.5, 0.5, -0.5, 0.75, 0.75, -0.25, -0.75, -0.5, -0.25, 0.0, -0.25, 0.0, 0.5, -0.5, 1.0, -1.0, 0.5, 1.0, -0.75, 0.0, 1.0, -0.25, -1.0, -1.0, 0.75, -0.75, -1.0, 1.0, 0.0, -0.25, -0.5, 0.75, -1.0, -0.5, 0.25, -0.75, -0.5, 1.0, -0.75, 1.0, 0.0, 0.25, 0.75, 0.25, -0.75, 0.5, -0.5, 1.0, -1.0, 0.25, -0.5, 0.0, 1.0, 0.25, -0.5, -1.0, 0.0, 1.0, -1.0, ]);
    texture700.destroy();
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("validation");
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.copyBufferToBuffer(
        buffer003,
        0,
        buffer000,
        0,
        400
    );
    
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    
    query700.destroy()
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder700.clearBuffer(buffer700);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder700.popDebugGroup();
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query700.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    {
        await buffer700.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer700.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer700.unmap();
        console.log(new Float32Array(data));
    }
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device70.queue.writeTexture({ texture: texture702 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    texture703.destroy();
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.queue.submit([]);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    device70.queue.writeTexture({ texture: texture701 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query702.destroy()
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device70.pushErrorScope("validation");
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    texture702.destroy();
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    
    
    device50.pushErrorScope("internal");
    
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeTexture({ texture: texture701 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query500.destroy()
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
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
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

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    
    
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    device30.pushErrorScope("internal");
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    
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
    
    
    render_bundle_encoder500.setVertexBuffer(0, buffer502);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer700.destroy()
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device70.queue.writeTexture({ texture: texture701 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const texture_view7040 = texture704.createView({ label: "texture_view7040" });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
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
    command_encoder500.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_buffer600 = command_encoder600.finish();
    
    render_bundle_encoder602.setPipeline(render_pipeline600);
    command_encoder500.clearBuffer(buffer500);
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query500
    });
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    texture500.destroy();
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    command_encoder601.popDebugGroup()
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query702.destroy()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device80.pushErrorScope("validation");
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder700.copyTextureToTexture(
        {
            texture: texture700
        },
        {
            texture: texture703
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder602.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    compute_pass_encoder7000.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    render_pass_encoder5000.pushDebugGroup("group_marker");
    
    
    
    compute_pass_encoder3001.insertDebugMarker("marker")
    buffer502.destroy()
    command_encoder601.insertDebugMarker("mymarker");
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: query703
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder700.popDebugGroup();
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.popDebugGroup();
    
    query700.destroy()
    
    command_encoder800.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture500.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("validation");
    render_pass_encoder5000.popDebugGroup();
    
    
    buffer701.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const array7 = new Float32Array([-0.5, 0.0, 0.75, 0.75, 1.0, -1.0, -0.25, -1.0, 0.0, -0.25, 0.0, -1.0, -0.75, 0.25, -0.25, 0.5, -1.0, 0.0, -0.75, 0.25, 1.0, -0.5, 1.0, 1.0, -1.0, 0.5, -0.75, -0.25, -0.25, -0.25, -0.75, -0.5, 0.25, 0.5, 0.5, -0.75, -0.25, 0.5, 0.25, -0.25, 0.75, -0.5, 0.75, 0.0, -0.75, 0.0, -1.0, -0.75, 0.75, 1.0, 0.0, -0.25, 0.75, -0.25, -0.5, 0.25, -1.0, -0.5, 0.5, -0.25, -1.0, -0.5, 0.0, -0.5, 0.0, 0.75, -0.25, 0.5, 0.25, 0.5, 1.0, 0.75, -0.75, 1.0, -0.25, 1.0, -0.5, 1.0, 0.75, -0.75, 0.5, 0.0, 0.5, 1.0, -1.0, 0.5, -1.0, 0.5, -0.75, 0.5, -0.75, -0.5, -0.5, -1.0, -0.5, 0.75, -0.25, -1.0, -0.25, -0.5, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device70.pushErrorScope("validation");
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
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    render_bundle_encoder500.drawIndirect(buffer502, 0);
    query500.destroy()
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device70.queue.writeBuffer(buffer701, 0, array5, 0, array5.length);
    
    command_encoder000.copyBufferToBuffer(
        buffer005,
        0,
        buffer004,
        0,
        400
    );
    texture502.destroy();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.insertDebugMarker("marker");
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
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    buffer500.destroy()
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    render_pass_encoder7010.setStencilReference(1);
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module705,
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
            module: shader_module705,
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
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module705,
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
            module: shader_module705,
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder700.setPipeline(render_pipeline701);
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    command_encoder800.pushDebugGroup("mygroupmarker")
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query703.destroy()
    command_encoder800.insertDebugMarker("mymarker");
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder7010.setPipeline(render_pipeline701);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    query800.destroy()
    render_pass_encoder5000.setPipeline(render_pipeline501);
    const command_buffer602 = command_encoder602.finish();
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    render_pass_encoder7010.setBindGroup(0, bind_group700);
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder5000.popDebugGroup();
    device30.queue.submit([]);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder7010.setVertexBuffer(0, buffer703);
    device60.queue.submit([]);
    render_pass_encoder7010.drawIndirect(buffer700, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder7010.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder7010.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5000.popDebugGroup();
    device50.queue.submit([]);
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
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_pass_encoder5000.setBindGroup(0, bind_group501);
    const command_buffer701 = command_encoder701.finish();
    const command_buffer300 = command_encoder300.finish();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder5000.setVertexBuffer(0, buffer500);
    render_pass_encoder5000.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder7010.drawIndirect(buffer703, 0);
    device30.queue.submit([]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder5000.draw(3);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder5000.end();
    device80.queue.submit([]);
    compute_pass_encoder7000.popDebugGroup()
    command_encoder800.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device80.queue.submit([]);
}