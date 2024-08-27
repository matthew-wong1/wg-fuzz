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
    
    const array0 = new Float32Array([-0.75, -0.75, 0.75, 0.25, -0.75, 0.5, 0.25, 0.75, -0.5, -0.75, -0.25, -1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, -0.25, -1.0, 0.0, 0.75, 0.5, -0.75, 1.0, 0.75, -0.75, 0.5, 0.0, -0.75, 0.5, 1.0, 0.75, 0.5, -1.0, 0.5, -0.25, -0.75, -0.75, 0.75, 0.0, -0.5, 0.25, 0.25, 0.0, 0.75, -1.0, 0.25, 1.0, -0.75, 0.0, -0.75, -1.0, 1.0, -0.75, 0.0, -0.5, 0.0, 0.5, 0.5, 0.25, 0.5, -0.5, 1.0, 0.25, -0.25, 0.25, 0.0, 0.0, 0.5, 1.0, -0.25, 0.25, 0.5, 0.5, -0.25, 0.75, 0.75, -0.25, 0.0, -1.0, 0.5, 0.5, 0.75, -1.0, -0.75, 0.0, 1.0, 0.0, -0.5, -1.0, -0.5, -0.25, 0.75, 0.5, -0.5, -0.5, -0.5, 0.75, 0.5, ]);
    
    const array1 = new Float32Array([-0.25, -0.5, 0.0, -0.25, -1.0, -0.5, -1.0, -0.5, 0.75, 0.0, -0.25, -1.0, 0.75, 1.0, 0.5, 0.5, -0.75, -0.5, -0.75, 0.75, 0.0, -0.5, -0.75, 0.5, -0.5, 1.0, -1.0, -1.0, 0.25, -0.25, 0.5, -0.5, 0.25, 0.0, 0.0, -0.75, -0.25, 0.75, -1.0, 1.0, 0.0, 0.25, 1.0, 0.25, 0.75, -0.5, 0.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.75, 0.25, -1.0, -0.75, -0.25, -0.75, 0.25, 0.25, -0.25, 0.25, 0.0, -1.0, 0.0, 0.25, 0.25, 0.5, 0.5, 1.0, 0.75, 0.75, 0.0, -0.75, -0.5, 1.0, -0.75, 0.75, -0.75, 0.25, -0.5, 0.75, 0.25, 0.25, 0.25, -0.75, 0.75, 0.5, -1.0, 0.25, 1.0, -0.25, 1.0, 0.0, -0.75, 0.25, 0.5, -1.0, -0.5, 0.75, ]);
    
    const array2 = new Float32Array([0.25, 0.0, -0.25, -0.25, -0.75, 0.75, -0.5, 0.0, 0.5, 0.0, 0.25, 0.5, -0.5, -1.0, 0.0, 0.5, -0.5, -0.75, 0.25, 0.0, 0.75, 0.25, -0.75, -0.5, 0.0, -1.0, -0.5, -0.25, -0.5, 1.0, -0.75, -0.5, 0.75, 1.0, 0.25, -1.0, 0.5, 0.25, -1.0, 0.5, -0.5, -0.75, -0.75, 0.5, -0.5, 1.0, 0.5, -0.5, 0.5, -1.0, -0.25, 1.0, 0.25, 1.0, 1.0, 0.5, -1.0, -0.25, -0.75, 1.0, -0.25, -0.5, 0.25, -0.75, -1.0, 0.75, -0.25, 0.5, 1.0, 0.0, -0.5, 0.25, 0.0, 0.5, -0.25, 0.75, -0.75, 0.5, 0.5, -1.0, 1.0, -0.25, 0.75, 1.0, -0.25, 0.25, -0.25, -0.25, 0.5, -0.75, 0.25, 1.0, 0.25, -0.75, 0.0, 1.0, 0.25, -0.25, -1.0, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.25, -0.5, -0.25, 0.25, -0.5, 0.0, -0.75, 0.0, 0.0, -1.0, -0.75, -0.25, 0.75, -0.5, 0.0, -0.75, 0.75, -1.0, 1.0, 0.5, 0.25, 0.75, 1.0, -0.5, -0.25, 0.0, -0.75, 1.0, 0.5, 0.75, 0.25, -0.75, -1.0, 0.5, 0.25, -0.75, 0.25, 0.0, -0.75, -0.75, -0.75, -1.0, 0.25, -1.0, -0.5, -0.5, 0.25, -0.5, -1.0, -0.5, -1.0, -0.5, 0.5, 1.0, 0.0, -1.0, -0.25, 0.5, 0.5, -0.75, -0.75, 1.0, 0.5, -0.25, -0.5, -0.25, -0.25, 1.0, 0.5, 0.75, -0.75, 1.0, 0.75, -0.5, 1.0, -1.0, -0.75, 0.75, -1.0, -1.0, 0.5, 1.0, -0.25, 0.0, 0.25, 0.5, -0.25, -0.5, 0.75, 0.25, 0.5, 0.25, -0.25, -0.25, -0.5, 0.25, 0.5, -0.25, 0.0, -0.25, ]);
    const array4 = new Float32Array([0.75, -0.25, 0.5, 1.0, 1.0, 0.25, -1.0, 0.5, -0.25, -0.25, -0.25, 0.0, 0.75, 0.0, -0.5, 0.75, 0.0, 1.0, -0.25, -0.75, -0.75, -0.75, -0.75, 0.0, -0.25, -0.25, 1.0, 0.5, -1.0, -1.0, 0.0, 0.75, -0.25, 0.5, -0.5, 0.0, 0.25, 0.0, -0.5, -0.5, 0.0, 0.0, 0.25, 0.75, -0.75, 0.25, -0.5, -0.5, -0.5, -0.5, 0.5, 0.75, 0.75, 0.75, -0.25, 0.25, 0.25, 1.0, 0.0, -0.75, -0.5, -0.75, 0.0, -0.75, 0.5, 0.25, 0.5, 0.0, -0.25, -0.75, 0.25, 0.75, 0.75, 0.75, 0.25, 0.0, 0.75, -0.75, -0.25, -0.75, 0.75, -0.75, 0.0, -0.25, 0.5, -0.75, -1.0, -0.25, 0.0, 0.25, -0.75, 0.75, 0.5, 0.75, -0.75, -1.0, 0.0, 1.0, 1.0, -0.75, ]);
    
    
    const array5 = new Float32Array([-1.0, 0.0, 0.25, 1.0, -0.25, 1.0, 0.75, 0.0, -0.5, 0.75, 0.5, 0.0, 0.5, 0.25, -0.25, 0.25, 0.75, 0.25, 0.0, -0.5, 0.75, -0.5, -0.5, 0.25, 0.5, 0.75, 0.25, 0.5, 0.5, -0.25, 0.0, 1.0, -1.0, -1.0, -0.25, -0.5, -0.75, -0.75, 0.25, -0.5, -0.5, 0.5, 0.75, 0.25, 0.25, -0.25, 0.5, 0.5, 1.0, -0.75, -0.5, -1.0, -0.5, 0.75, 0.5, 1.0, 1.0, 0.25, 0.75, -0.5, -0.5, -0.25, -1.0, 0.5, 0.75, 0.5, 0.75, -0.5, 0.0, -1.0, -0.5, -0.75, -0.5, -1.0, 0.5, 0.25, -0.5, 0.0, -0.5, -1.0, 0.0, 0.75, -0.25, -0.5, 0.75, 0.25, 0.5, 0.25, -0.5, 1.0, 0.0, 0.5, 1.0, -0.5, 0.5, 1.0, 0.5, -0.75, 0.0, 1.0, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array6 = new Float32Array([0.5, -0.25, -0.25, 0.25, 0.5, -1.0, -0.25, -0.25, 0.5, 0.5, -1.0, -0.75, 1.0, -0.5, 0.25, -0.25, -0.5, -0.5, -0.25, -1.0, 0.75, 0.25, -0.75, 0.0, 1.0, -0.25, -1.0, -0.5, 0.5, -0.75, 0.5, 0.25, -0.5, -0.75, 0.75, 0.0, -1.0, -0.75, 0.25, -0.5, -0.75, -0.75, 0.75, 0.75, 1.0, 0.25, 0.75, 0.25, 0.25, -1.0, -1.0, -0.25, -0.25, 0.5, -0.5, 0.25, 1.0, 0.0, -0.5, -0.75, 0.75, 0.75, 0.25, 0.5, -1.0, 0.75, 0.0, 0.5, -0.25, -0.5, -1.0, 1.0, 1.0, 0.5, -0.25, -0.75, -0.5, -0.25, 0.75, -1.0, -0.5, -0.25, -0.5, 1.0, 0.5, 1.0, 0.25, 1.0, 1.0, -0.25, 1.0, -1.0, 0.75, 1.0, 0.0, -0.25, -0.75, 1.0, 0.25, 0.75, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder100.insertDebugMarker("mymarker");
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("validation");
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    texture000.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer100.destroy()
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder000.popDebugGroup()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    texture200.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.clearBuffer(buffer002);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    device20.destroy();
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    command_encoder002.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query101.destroy()
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    command_encoder002.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.clearBuffer(buffer000);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.copyBufferToBuffer(
        buffer100,
        0,
        buffer102,
        0,
        400
    );
    
    
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    buffer001.destroy()
    query101.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer101 = command_encoder101.finish();
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    texture100.destroy();
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    compute_pass_encoder0001.insertDebugMarker("marker")
    query100.destroy()
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder002.clearBuffer(buffer000);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer102.destroy()
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.clearBuffer(buffer000);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    render_pass_encoder1000.setStencilReference(1);
    buffer101.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer002 = command_encoder002.finish();
    command_encoder001.clearBuffer(buffer000);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    buffer000.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    render_pass_encoder1020.setStencilReference(1);
    command_encoder003.insertDebugMarker("mymarker");
    
    query104.destroy()
    texture101.destroy();
    query000.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.executeBundles([])
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    
    command_encoder001.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder1020.executeBundles([])
    
    
    
    texture001.destroy();
    command_encoder001.insertDebugMarker("mymarker");
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder1021.insertDebugMarker("marker");
    query101.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.popDebugGroup();
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1021.setStencilReference(1);
    command_encoder003.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0051,
            },
        ],
        occlusionQuerySet: query000
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder1021.executeBundles([render_bundle_encoder100, ])
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.popDebugGroup();
    texture004.destroy();
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer003.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder104.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1021.executeBundles([])
    
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.destroy();
    query102.destroy()
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.executeBundles([render_bundle_encoder100, ])
    
    
    const command_buffer105 = command_encoder105.finish();
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query105
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    texture102.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query104.destroy()
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1022.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1022.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.popDebugGroup();
    query103.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_pass_encoder1031.executeBundles([])
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.setStencilReference(1);
    
    render_pass_encoder1021.popDebugGroup();
    
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1022.setStencilReference(1);
    render_pass_encoder1030.setPipeline(render_pipeline101);
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1022.beginOcclusionQuery(0)
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    render_pass_encoder1021.setPipeline(render_pipeline101);
    render_pass_encoder1020.executeBundles([])
    
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder1031.executeBundles([render_bundle_encoder100, render_bundle_encoder101, ])
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query102.destroy()
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1000.popDebugGroup();
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    
    
    query100.destroy()
    
    
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1022.insertDebugMarker("marker");
    render_pass_encoder1022.popDebugGroup();
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer105.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query100.destroy()
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1022.setPipeline(render_pipeline101);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group101);
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1020.setPipeline(render_pipeline100);
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
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1021.setVertexBuffer(0, buffer102);
    render_pass_encoder1022.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1031.setPipeline(render_pipeline102);
    buffer108.destroy()
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1000.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer105, ]);
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    
    query106.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer104.destroy()
    buffer107.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1000.setPipeline(render_pipeline101);
    render_pass_encoder1022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    device10.queue.writeBuffer(buffer1010, 0, array5, 0, array5.length);
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
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1022.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.clearBuffer(buffer103);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder003.copyTextureToTexture(
        {
            texture: texture005
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
    query104.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query107.destroy()
    device50.destroy();
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.pushErrorScope("out-of-memory");
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group104);
    
    command_encoder103.resolveQuerySet(
        query109,
        0,
        32,
        buffer1014,
        0
    )
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeBuffer(buffer1011, 0, array1, 0, array1.length);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer106, 0, array6, 0, array6.length);
    device50.destroy();
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.setVertexBuffer(0, buffer109);
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder1020.endOcclusionQuery()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.draw(3);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1021.draw(3);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group105);
    render_pass_encoder1020.end();
    render_pass_encoder1000.setVertexBuffer(0, buffer102);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1031.setVertexBuffer(0, buffer104);
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexed(3);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1022.setBindGroup(0, bind_group106);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1022.endOcclusionQuery()
    command_encoder100.popDebugGroup()
    render_pass_encoder1022.setVertexBuffer(0, buffer102);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1022.drawIndirect(buffer1017, 0);
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1022.end();
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1020.end();
    render_pass_encoder1031.drawIndirect(buffer1016, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer108, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer103, ]);
    device10.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1000.end();
    render_pass_encoder1030.popDebugGroup();
}