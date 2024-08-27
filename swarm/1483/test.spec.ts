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
    
    
    
    
    const array0 = new Float32Array([0.0, 0.75, -1.0, -0.75, 0.5, -0.75, 0.75, -0.75, 0.0, -0.5, 1.0, 0.75, 0.5, 1.0, 0.5, -0.25, 0.0, -0.5, 1.0, 1.0, 0.0, 0.5, -0.25, -0.75, -0.25, 1.0, -0.25, 0.0, 1.0, 1.0, -0.25, 0.75, 0.75, 1.0, 0.5, 0.0, -0.25, 0.0, -1.0, 0.75, -0.75, 0.0, 0.75, -0.75, 0.0, 0.5, -1.0, 0.0, -1.0, 0.25, 1.0, -0.25, 1.0, 0.75, 0.75, -0.75, -0.5, -0.5, 0.75, 0.0, -0.5, -1.0, -0.5, 0.75, 0.25, 0.25, -0.25, 0.75, 1.0, 0.0, 0.0, 0.0, 0.0, 0.5, -0.75, 0.0, 0.75, -0.25, -0.25, 0.25, 0.5, 0.75, -0.75, 0.25, -1.0, -0.25, 0.0, 0.25, 0.25, -0.5, -0.25, 1.0, -1.0, 0.25, -1.0, 0.5, 1.0, 0.25, 0.25, -0.25, ]);
    
    const array1 = new Float32Array([-1.0, -1.0, -0.75, -0.75, 0.5, 0.25, 0.0, -0.5, -0.25, -0.25, -0.25, -0.75, -0.5, 0.75, -0.75, -0.5, 0.0, -0.75, -0.5, -1.0, -0.25, -0.75, 0.25, -0.75, 0.25, 0.5, 1.0, -1.0, 0.0, 0.5, -0.25, -0.25, -1.0, -0.25, 0.0, -0.25, 0.75, 1.0, 0.25, -0.75, 1.0, 0.5, 0.25, -0.25, -0.25, -0.5, 0.5, -0.75, 0.75, 0.75, -0.25, -1.0, -1.0, -0.25, -0.75, 0.0, -0.5, 0.25, -0.25, -1.0, -1.0, 0.25, 0.75, 1.0, -1.0, 0.0, 1.0, 1.0, 0.75, -0.25, 0.75, 0.0, 0.5, 0.25, 0.5, 0.0, 1.0, 1.0, 0.25, 0.75, -0.5, -1.0, -0.75, -0.25, -0.75, -0.5, -0.5, 0.75, 0.25, 0.0, -1.0, 0.0, 0.75, -0.75, 0.75, 0.25, -0.25, -1.0, -0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-0.75, -0.5, -0.25, 0.75, 0.0, 0.75, 1.0, 1.0, -1.0, 1.0, 0.25, 0.0, 0.25, 1.0, 1.0, -1.0, -0.25, 1.0, 0.25, -0.25, 0.0, 0.5, -1.0, -0.25, 0.5, -1.0, 0.25, 0.5, 1.0, -0.25, 1.0, -1.0, -1.0, 1.0, -0.25, 0.5, 0.0, 0.75, -0.5, -1.0, 0.25, -0.5, 0.0, 0.0, -0.75, -0.25, -0.75, 0.25, -0.75, 0.5, 1.0, -0.75, 0.25, -0.5, -0.25, 0.75, -0.75, 1.0, -0.75, -0.5, -0.5, -0.25, 1.0, 0.5, -0.75, -0.25, 1.0, -0.25, 0.25, -1.0, 0.25, 0.0, -0.5, -0.5, -0.75, 1.0, -1.0, -0.25, 0.5, 0.75, 0.25, 1.0, 1.0, 0.0, 0.0, 0.5, 0.25, 0.5, 1.0, -0.5, -0.5, 1.0, 1.0, 0.25, -1.0, 0.75, -0.5, -0.5, 0.5, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer100.destroy()
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    device00.pushErrorScope("validation");
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array3 = new Float32Array([-0.25, 0.0, 0.5, 0.25, 0.5, 0.5, 1.0, -0.75, 0.25, -0.5, -0.5, 0.75, 0.75, -1.0, -1.0, 0.25, 0.5, -0.75, -0.5, 0.75, 0.0, 0.5, -1.0, 0.0, -0.75, 0.0, 0.0, -0.75, -0.5, 0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -1.0, 0.5, -1.0, -0.5, -1.0, -0.75, 0.0, -0.25, -0.25, -1.0, -0.75, -0.25, 0.75, 0.0, 0.75, 0.75, 0.75, -1.0, -1.0, -1.0, 0.0, 0.25, -0.25, 0.75, 1.0, 0.75, -0.25, -1.0, 0.5, 0.0, -0.5, 1.0, 0.75, -0.5, -0.75, 0.0, 1.0, 0.0, -1.0, -0.5, 0.75, -0.5, -1.0, 0.25, 0.5, 0.75, -0.5, 0.25, -1.0, 0.0, 0.5, -0.25, 0.5, -0.25, 0.0, -0.75, -0.75, -0.5, -0.5, -0.75, 1.0, 0.0, -0.25, 1.0, 0.25, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    device10.queue.submit([]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array4 = new Float32Array([-0.25, -0.75, -0.25, 0.5, -0.25, 1.0, -0.75, 0.0, 0.25, 0.0, -1.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.25, 0.5, 0.75, -0.5, 0.5, 0.25, 1.0, -0.75, 0.5, -0.25, -0.5, 0.0, 1.0, -0.75, 0.5, 1.0, -0.75, 1.0, 0.5, -0.5, 0.75, -1.0, 0.25, -1.0, 0.0, 0.5, 0.75, -0.25, 0.5, 1.0, 0.0, -0.25, 1.0, -0.25, -1.0, 1.0, 0.25, -0.25, -1.0, 0.0, 0.75, -0.75, 0.25, 1.0, 1.0, 0.0, -0.25, 0.75, 0.0, -0.75, 1.0, 0.75, 0.5, -0.25, 1.0, 0.75, 0.5, -0.75, 0.75, -0.5, 0.0, 1.0, -0.25, -1.0, 0.25, 0.75, 0.25, -0.5, -1.0, -0.5, -0.75, 0.75, 0.25, -0.75, 0.75, 1.0, 0.25, 0.75, 0.5, -1.0, 0.75, 0.0, -0.25, -0.5, ]);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture101.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    command_encoder100.copyTextureToTexture(
        {
            texture: texture103
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
    
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const command_buffer100 = command_encoder100.finish();
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture103.destroy();
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    
    device10.pushErrorScope("out-of-memory");
    buffer102.destroy()
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    texture100.destroy();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.queue.submit([command_buffer100, ]);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    texture102.destroy();
    
    buffer104.destroy()
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer104,
        0,
        400
    );
    
    buffer103.destroy()
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer102 = command_encoder102.finish();
    buffer101.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.pushErrorScope("out-of-memory");
    
    buffer000.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.submit([command_buffer102, ]);
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    const array5 = new Float32Array([0.0, 0.25, -0.75, -0.5, -0.5, 0.0, 1.0, 0.25, 0.0, 0.5, -1.0, 0.5, 0.0, -0.25, 0.25, -0.5, 0.25, -1.0, 0.0, 0.75, 1.0, 1.0, -1.0, -0.75, 1.0, 0.25, 0.75, 0.5, -0.75, 0.5, -1.0, -0.75, -0.25, -0.75, -1.0, -1.0, -1.0, -1.0, 0.75, -1.0, 0.5, -0.5, 0.25, 0.0, 0.0, -0.25, 0.0, 0.0, -0.5, 1.0, -0.25, 0.5, 1.0, -1.0, -0.5, 1.0, 0.25, 0.75, 0.25, -1.0, -0.5, 0.5, 0.5, -0.5, -0.25, 1.0, 1.0, -0.5, 0.25, -0.75, 0.25, -0.75, 0.25, 0.25, -0.25, -0.75, -1.0, -1.0, 1.0, 0.0, -0.25, -0.25, -0.75, 0.25, 0.5, 0.5, -1.0, 1.0, -1.0, 0.5, -0.75, 0.75, -1.0, 0.0, 0.0, 0.5, 1.0, -0.25, -0.25, 0.25, ]);
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.clearBuffer(buffer100);
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder100.popDebugGroup();
    command_encoder104.insertDebugMarker("mymarker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder105.copyBufferToBuffer(
        buffer104,
        0,
        buffer102,
        0,
        400
    );
    render_pass_encoder1010.pushDebugGroup("group_marker");
    texture101.destroy();
    command_encoder105.insertDebugMarker("mymarker");
    command_encoder105.clearBuffer(buffer105);
    
    buffer104.destroy()
    render_bundle_encoder101.popDebugGroup();
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    buffer105.destroy()
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("validation");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array6 = new Float32Array([-1.0, 1.0, -0.25, 0.75, 0.0, -0.5, 0.5, -0.75, 0.75, 0.75, 0.25, -1.0, -0.25, -0.75, 0.25, -0.5, 0.5, -0.75, 1.0, -1.0, -0.25, 0.25, 0.5, -1.0, 1.0, 1.0, 0.75, 0.0, 0.0, -1.0, 1.0, -0.25, 0.75, -0.25, 0.0, -0.75, -1.0, -0.25, 0.25, -1.0, -0.25, -0.25, -1.0, 0.0, -0.75, 0.75, 0.0, 0.0, 1.0, -0.5, -0.25, 0.0, 1.0, 1.0, -0.25, -1.0, 0.25, 0.75, 0.75, 0.75, 0.0, -0.25, 0.75, -1.0, 0.25, -0.5, 0.75, 0.25, 0.25, 0.5, 1.0, -1.0, 0.75, 0.75, -0.5, -0.25, -1.0, -1.0, -0.75, -0.25, 1.0, -0.75, 0.75, -0.25, 0.0, -1.0, 0.25, -0.75, -1.0, 0.25, -0.75, 0.5, -0.5, -0.5, 0.0, -0.5, -0.75, -0.5, 0.75, 0.0, ]);
    render_pass_encoder1060.pushDebugGroup("group_marker");
    buffer102.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder103.insertDebugMarker("marker");
    const array7 = new Float32Array([0.5, 0.25, -0.75, -0.75, -0.5, 0.25, 0.0, -1.0, -0.75, 0.0, -1.0, 0.0, -1.0, 1.0, -1.0, 0.75, -1.0, 1.0, 0.25, -1.0, 0.75, 0.25, -1.0, -0.25, -0.5, -0.75, 0.25, 0.75, 0.0, 0.0, 1.0, -0.75, -1.0, -0.25, 0.0, 0.0, -0.5, 0.25, -0.75, 0.75, 0.5, 1.0, 0.5, -1.0, 1.0, -1.0, -0.5, -1.0, 0.0, -0.5, -1.0, 0.75, 0.75, -0.25, -1.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.25, 0.5, -1.0, 0.5, 0.0, 0.5, -0.5, -1.0, -0.25, -0.75, 0.25, 1.0, 0.75, 0.5, 0.5, -0.25, 0.0, -0.75, 0.5, -1.0, -0.75, -0.5, -1.0, 0.0, 1.0, -0.75, -0.75, 0.5, -0.75, -0.75, 0.5, -0.5, 0.0, -0.5, -1.0, 1.0, 0.75, -0.5, 1.0, 0.75, ]);
    
    render_bundle_encoder102.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const array8 = new Float32Array([0.0, -1.0, 1.0, -0.5, -0.5, -1.0, 0.25, -0.25, -0.5, 0.0, -0.5, 1.0, 0.75, 0.25, 0.25, -0.75, 0.75, -0.5, 0.5, 0.5, 0.25, 0.25, 0.25, 0.0, -0.75, -0.75, 0.75, -0.5, 0.75, 0.5, -0.25, -0.5, -0.5, 1.0, 0.75, 0.5, 0.75, -0.5, 0.5, 1.0, 0.75, 0.5, 1.0, -1.0, -0.5, -0.5, 1.0, 0.75, 0.25, 0.75, 0.75, -1.0, -0.25, 0.5, 0.0, 1.0, 0.0, 0.5, -0.75, 0.0, -1.0, 0.0, -0.25, 0.25, 0.75, -1.0, 1.0, 0.25, -0.75, -1.0, 0.75, -1.0, 0.0, -0.75, -0.25, -0.75, 1.0, 0.25, -0.5, -0.25, 0.25, -0.75, 0.0, -0.5, -0.25, 0.0, 0.25, 0.75, 0.5, 0.25, 0.75, -0.5, 0.5, 0.75, -1.0, -1.0, 0.5, 0.0, 0.25, 0.25, ]);
    device20.destroy();
    
    render_bundle_encoder103.insertDebugMarker("marker");
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder1060.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder103.pushDebugGroup("group_marker");
    const array9 = new Float32Array([-0.25, 0.0, 0.75, -0.75, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, -1.0, -1.0, -1.0, -0.5, 0.25, -0.75, 0.5, -0.75, 1.0, 0.0, 0.25, -0.75, -1.0, 0.0, -0.5, 0.25, -0.5, 0.5, 0.5, 1.0, -1.0, 0.0, 1.0, 0.25, 0.25, 0.5, 0.25, 0.0, 0.0, -0.75, 0.25, 0.75, -1.0, 0.75, 1.0, 0.75, 1.0, -0.25, 0.0, 0.25, 0.5, -0.75, 0.25, 1.0, 0.25, 0.25, 0.5, -0.75, -0.5, -1.0, 0.75, -0.5, -0.5, 1.0, 0.0, -0.75, 0.0, 0.0, -0.75, -0.5, -1.0, 0.75, -0.25, -0.25, 0.25, -1.0, 0.25, 1.0, -0.5, 0.0, 0.5, -1.0, 0.0, 1.0, -0.75, 0.75, -0.25, -0.25, 0.25, 0.5, 0.75, 0.5, 0.0, 0.75, 0.5, 0.0, 1.0, -0.75, ]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.insertDebugMarker("marker");
    
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_pass_encoder1050.insertDebugMarker("marker");
    const render_bundle_encoder104 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder104",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder103.popDebugGroup();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder103.insertDebugMarker("marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder1011.insertDebugMarker("marker");
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.insertDebugMarker("marker");
    
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder105.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1031.insertDebugMarker("marker");
    texture105.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder103.popDebugGroup();
    render_pass_encoder1080.insertDebugMarker("marker");
    render_pass_encoder1070.insertDebugMarker("marker");
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder101.popDebugGroup();
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.pushErrorScope("internal");
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture500.destroy();
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1070.pushDebugGroup("group_marker");
    
    const render_pass_encoder1090 = command_encoder109.beginRenderPass({
        label: "render_pass_encoder1090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.pushErrorScope("validation");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const command_buffer600 = command_encoder600.finish();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder501.insertDebugMarker("mymarker");
    device70.pushErrorScope("internal");
    
    buffer104.destroy()
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder300.insertDebugMarker("mymarker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1090.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.popDebugGroup();
    buffer105.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture104.destroy();
    command_encoder001.insertDebugMarker("mymarker");
    
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder500.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder1010.copyTextureToTexture(
        {
            texture: texture103
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder500.insertDebugMarker("mymarker");
    buffer107.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pass_encoder10100 = command_encoder1010.beginRenderPass({
        label: "render_pass_encoder10100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder10100.pushDebugGroup("group_marker");
    const command_buffer300 = command_encoder300.finish();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    render_pass_encoder1012.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    render_pass_encoder1040.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_bundle_encoder103.insertDebugMarker("marker");
    device30.queue.submit([command_buffer300, ]);
    const render_pass_encoder1071 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1061,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_buffer501 = command_encoder501.finish();
    
    
    render_pass_encoder1080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device10.queue.writeTexture({ texture: texture106 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder103.pushDebugGroup("group_marker");
    device40.queue.submit([]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device10.queue.writeTexture({ texture: texture106 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pass_encoder1013 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1013",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_bundle_encoder101.popDebugGroup();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    command_encoder503.insertDebugMarker("mymarker");
    command_encoder105.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    texture106.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    render_pass_encoder1061.pushDebugGroup("group_marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1080.insertDebugMarker("marker");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    command_encoder109.clearBuffer(buffer101);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.pushErrorScope("out-of-memory");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer100.destroy()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device40.pushErrorScope("validation");
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer300.destroy()
    render_pass_encoder1061.insertDebugMarker("marker");
    render_pass_encoder1080.insertDebugMarker("marker");
    render_pass_encoder1013.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer101.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder1011 = device10.createCommandEncoder({ label: "command_encoder1011" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    command_encoder601.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder10100.insertDebugMarker("marker");
    render_pass_encoder1080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer503 = command_encoder503.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer501, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer109 = command_encoder109.finish();
    const command_buffer502 = command_encoder502.finish();
    const command_buffer1011 = command_encoder1011.finish();
    device60.queue.submit([command_buffer600, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer601, ]);
    const command_buffer700 = command_encoder700.finish();
    const command_buffer301 = command_encoder301.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer109, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    device10.queue.submit([command_buffer1011, ]);
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    const command_buffer401 = command_encoder401.finish();
    device50.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer105 = command_encoder105.finish();
    device70.queue.submit([command_buffer700, ]);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    const command_buffer108 = command_encoder108.finish();
    device10.queue.submit([command_buffer105, command_buffer108, ]);
    device60.queue.submit([command_buffer600, ]);
    device10.queue.submit([command_buffer1011, ]);
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([command_buffer502, ]);
    device10.queue.submit([command_buffer100, ]);
    const command_buffer001 = command_encoder001.finish();
    const command_buffer106 = command_encoder106.finish();
    device60.queue.submit([command_buffer601, ]);
}