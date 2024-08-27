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
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    texture000.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    const array0 = new Float32Array([1.0, -0.25, 1.0, -1.0, -1.0, 0.0, -0.25, -1.0, -0.5, -0.25, -0.5, 1.0, -0.25, 0.25, 0.25, 0.25, -1.0, -0.75, 0.0, -0.5, -1.0, 0.5, 1.0, 1.0, 0.25, 0.5, 0.25, 0.25, 0.5, 0.0, 0.5, 1.0, 0.5, -0.5, 0.25, -0.5, 1.0, 0.25, -0.75, -0.25, -0.25, -0.25, -0.25, -0.5, 1.0, 1.0, 0.75, 1.0, -0.75, 0.5, 0.75, -0.75, -0.25, 0.75, -0.5, -0.5, -0.5, -0.25, -1.0, -0.25, 0.0, 0.75, -0.5, -1.0, -1.0, 1.0, -0.5, -0.75, 0.75, 0.75, 0.75, -0.25, -0.5, -0.25, 1.0, 0.5, -1.0, -0.25, -0.75, 0.75, -0.5, 0.5, 0.0, 0.5, -0.5, 0.75, 0.75, -0.75, 0.25, -0.75, -1.0, -0.75, -0.75, 1.0, -0.5, -0.25, -0.75, -1.0, 0.75, -1.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const command_buffer000 = command_encoder000.finish();
    const array1 = new Float32Array([0.25, 0.75, 0.75, -0.75, -0.25, -0.5, -0.5, 0.0, 0.75, -1.0, -0.75, 0.75, 0.5, 0.25, -1.0, -1.0, 1.0, -1.0, -0.25, -1.0, 0.5, 0.5, 0.25, 0.5, 0.5, 0.75, -0.5, -0.25, 0.25, 1.0, -1.0, 0.5, 0.5, 1.0, 1.0, -1.0, 0.25, 0.75, -0.75, 1.0, 1.0, 1.0, 1.0, -0.25, -0.25, 0.75, -0.25, 0.75, -0.75, 0.25, 1.0, -1.0, -0.25, -0.25, 0.25, -0.75, 0.75, -1.0, 0.5, -1.0, 1.0, -1.0, -0.25, -0.25, -0.25, -0.25, -0.75, 0.75, -0.5, -0.25, 1.0, 0.25, -0.5, -0.5, -0.25, 0.5, 0.75, 0.0, -0.75, -0.5, 0.5, 0.0, -0.25, 0.75, -0.75, -0.75, 0.5, 0.5, 0.75, -0.75, 0.75, -0.75, -0.75, 0.75, 1.0, -0.75, 0.75, -0.25, 0.5, -0.75, ]);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.pushErrorScope("out-of-memory");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.5, 0.75, -0.5, 0.75, -0.75, -0.5, -0.75, 0.0, 0.5, -0.75, -0.25, -0.75, -0.25, 0.5, -0.5, 0.75, 0.25, 0.0, 1.0, -0.5, 0.25, -0.25, 0.25, 0.5, -1.0, 0.5, 0.25, -0.25, 0.75, 0.25, -0.75, 1.0, 0.0, -0.25, -0.25, -1.0, 0.5, 0.5, -0.5, -0.25, -0.75, -0.75, 1.0, 0.0, -0.5, 0.5, -0.5, -1.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.25, -0.25, 0.0, -1.0, 0.25, -0.25, -0.25, -0.25, 0.0, -0.75, 0.5, -0.5, -0.75, 0.75, -0.75, 0.0, -1.0, -0.75, 0.5, -0.75, 0.5, 0.25, -0.5, -1.0, 0.5, -1.0, -0.5, 0.0, -0.25, 0.25, -0.75, -0.5, -1.0, -0.75, -0.5, 0.5, 0.5, 0.0, 1.0, 0.75, -1.0, 0.75, 0.25, 0.75, 1.0, -1.0, 0.0, ]);
    
    texture100.destroy();
    
    
    
    query000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const array3 = new Float32Array([0.0, -0.5, 0.75, 0.75, 0.25, 0.0, -0.25, -0.25, 0.25, -0.75, -1.0, -0.25, 0.0, 0.25, -0.25, -0.75, -0.25, 0.75, 0.5, -0.25, 0.5, -0.75, 0.75, 0.5, -0.5, 1.0, 0.25, 0.0, 0.0, 0.25, -1.0, 0.75, 0.25, 0.0, 0.0, -0.25, 0.25, -0.5, 0.5, -1.0, -0.5, -0.5, 1.0, -0.5, 0.75, 0.25, -0.5, 0.5, -0.75, -0.75, 0.25, 0.25, 0.75, -0.25, -0.5, -0.75, -1.0, -0.75, -0.25, 0.75, 0.25, 0.5, 0.5, 0.25, -0.5, -1.0, 0.5, 0.75, 0.25, -0.5, 1.0, -0.75, 1.0, 0.25, -0.75, -0.25, 0.5, 1.0, 0.0, -0.75, 0.5, 0.0, 0.25, 0.25, 0.0, -0.75, -0.75, -0.75, -1.0, -0.25, 0.5, -1.0, -1.0, 0.75, 0.25, -1.0, -0.25, -0.75, -0.25, 0.5, ]);
    
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer001 = command_encoder001.finish();
    
    
    texture102.destroy();
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    query100.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    query000.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
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
    
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    texture103.destroy();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    texture001.destroy();
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const array4 = new Float32Array([-0.5, 1.0, 0.75, 0.75, -0.75, -0.25, 1.0, 0.25, -0.5, -0.75, -0.25, -1.0, 0.5, 0.75, -0.25, -0.25, 0.5, 1.0, -0.5, -0.5, -0.5, 0.0, -0.5, 0.25, 0.75, -0.75, -0.75, -0.25, -1.0, 0.5, -0.25, 0.25, 1.0, 0.5, -1.0, -0.25, -0.5, -1.0, -0.75, 0.5, 0.0, 0.25, -0.5, -0.25, -0.25, -0.25, 1.0, -0.75, 0.75, 1.0, -0.75, 0.5, 1.0, 0.5, -0.25, -0.5, 0.75, -1.0, -1.0, 0.75, -0.5, -1.0, -0.5, -0.75, 0.0, -0.5, 0.75, -0.5, -0.75, -1.0, -1.0, -1.0, 0.0, 0.25, 0.25, 1.0, 1.0, -0.75, 0.75, 0.75, 1.0, 0.25, 0.5, -0.25, -0.5, 0.75, 0.5, 0.0, 0.75, -0.25, 0.0, 0.75, 0.0, 0.25, -1.0, -1.0, -0.75, 0.5, 0.75, -0.25, ]);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query000
    });
    
    device20.destroy();
    
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query102
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    render_pass_encoder0021.setStencilReference(1);
    
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture101.destroy();
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    query101.destroy()
    texture003.destroy();
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.insertDebugMarker("marker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_pass_encoder0021.insertDebugMarker("marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.queue.submit([command_buffer001, ]);
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    
    render_pass_encoder0021.executeBundles([])
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0020.popDebugGroup()
    
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    render_pass_encoder0040.setStencilReference(1);
    query102.destroy()
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1000.setStencilReference(1);
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder0020.setStencilReference(1);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0031.executeBundles([])
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    render_pass_encoder0030.executeBundles([])
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_pass_encoder0040.executeBundles([render_bundle_encoder002, ])
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    query102.destroy()
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    render_pass_encoder0030.executeBundles([])
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query000.destroy()
    render_pass_encoder0041.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder1000.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
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
    render_pass_encoder0030.setStencilReference(1);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder1000.popDebugGroup();
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    render_pass_encoder1000.endOcclusionQuery()
    
    
    
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0041.setStencilReference(1);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_pass_encoder0051.executeBundles([])
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setStencilReference(1);
    
    compute_pass_encoder0020.popDebugGroup()
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    query102.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_pass_encoder0041.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture101.destroy();
    render_pass_encoder0041.setPipeline(render_pipeline001);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setStencilReference(1);
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    render_pass_encoder0051.setPipeline(render_pipeline001);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder0031.setPipeline(render_pipeline000);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    texture005.destroy();
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder1010.endOcclusionQuery()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    texture002.destroy();
    render_pass_encoder0050.executeBundles([])
    
    
    
    
    
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    texture004.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
    });
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder0061.executeBundles([])
    query100.destroy()
    render_pass_encoder0061.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_pass_encoder0031.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder0020.popDebugGroup()
    
    render_pass_encoder1010.setStencilReference(1);
    query001.destroy()
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder401.clearBuffer(buffer400);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const command_buffer400 = command_encoder400.finish();
    
    render_pass_encoder0050.setPipeline(render_pipeline001);
    render_pass_encoder0050.insertDebugMarker("marker");
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
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
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_pass_encoder0021.setPipeline(render_pipeline000);
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0061.setStencilReference(1);
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0030.setPipeline(render_pipeline000);
    
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query001.destroy()
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    command_encoder401.clearBuffer(buffer400);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    render_pass_encoder0060.insertDebugMarker("marker");
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder0020.setStencilReference(1);
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
    
    render_pass_encoder1000.setStencilReference(1);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    query000.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder1001.popDebugGroup();
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    render_pass_encoder1010.setPipeline(render_pipeline101);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_pass_encoder0040.setPipeline(render_pipeline002);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.insertDebugMarker("marker");
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0021.setStencilReference(1);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    texture301.destroy();
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setStencilReference(1);
    device30.pushErrorScope("internal");
    command_encoder401.pushDebugGroup("mygroupmarker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    texture006.destroy();
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer100 = command_encoder100.finish();
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    render_pass_encoder0051.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0060.setPipeline(render_pipeline000);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    render_pass_encoder0060.setStencilReference(1);
    query100.destroy()
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
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
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
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
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    
    command_encoder002.clearBuffer(buffer0013);
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0051.insertDebugMarker("marker");
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    
    
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
    compute_pass_encoder3000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.setPipeline(render_pipeline100);
    render_pass_encoder0032.setPipeline(render_pipeline001);
    render_pass_encoder0060.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0061.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder3000.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0032.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0060.endOcclusionQuery()
    device00.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
}