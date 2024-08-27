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
    const array0 = new Float32Array([0.0, -0.5, -1.0, -0.5, 0.0, -1.0, 0.0, -0.75, -1.0, -0.75, -0.75, -0.25, 0.25, 0.0, -0.5, -0.75, -0.25, 0.75, 0.75, -0.5, 0.0, -1.0, -0.25, 0.5, 0.0, 0.75, -0.75, -0.5, 0.75, -0.5, 0.5, 0.0, -0.25, -0.5, 1.0, -1.0, -0.75, -1.0, -0.25, -0.25, 0.25, 0.75, -0.75, -0.5, 0.75, 0.75, -0.5, 0.5, -0.75, -0.25, 1.0, 0.75, 0.25, 0.0, 0.25, 0.5, -0.25, -1.0, 0.25, -1.0, -1.0, -0.25, 0.5, 0.0, -1.0, 0.75, 0.75, 0.0, 0.75, -1.0, -0.25, -0.75, 0.25, 0.0, -0.5, -0.75, -0.25, 0.0, 0.25, -0.25, -0.75, 0.75, -1.0, 0.25, 0.5, -0.5, 1.0, 1.0, 0.75, 0.25, -1.0, -1.0, -1.0, 1.0, 0.25, 0.25, 0.5, 0.25, -0.75, 0.5, ]);
    
    
    const array1 = new Float32Array([0.75, 1.0, 0.0, -1.0, 0.0, 0.5, 0.25, 0.5, 0.25, 0.0, 1.0, -0.75, 1.0, -0.75, -0.75, -0.75, -0.5, 0.0, 0.25, 0.25, 0.5, 0.75, 0.75, -0.25, -1.0, -0.75, 0.25, 0.0, 1.0, 0.5, 0.0, 0.0, -0.25, 0.0, -0.75, -0.75, 0.0, -0.25, -1.0, -1.0, 0.5, 0.5, -1.0, 0.25, 0.75, 1.0, 1.0, -0.25, 0.0, 0.5, 0.25, -0.5, 0.25, -1.0, 0.25, 0.75, 0.5, -0.5, 0.75, -0.25, -0.25, -1.0, -0.5, 0.25, 0.75, -0.75, -0.75, -0.5, 1.0, -1.0, -0.75, 0.25, 0.75, 0.0, -0.75, -0.75, -0.75, -1.0, 1.0, -1.0, -0.5, 0.75, -1.0, 1.0, 0.25, 0.25, -1.0, -0.25, -1.0, 1.0, -0.75, 0.75, 1.0, 0.25, -0.75, 0.25, 0.5, -0.25, -0.25, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array2 = new Float32Array([-0.25, -0.75, -1.0, -0.5, -1.0, -0.75, -1.0, -1.0, 1.0, -0.75, 0.5, -0.25, -1.0, -0.25, 0.5, 0.5, 1.0, 0.0, -0.25, 0.75, 0.0, -1.0, 0.0, 0.25, 0.25, -0.5, 0.25, 0.75, -0.75, -0.5, 0.25, 1.0, 0.75, -0.75, 0.75, -0.75, 0.25, -1.0, 0.0, 0.0, 0.5, -0.25, 0.25, 0.25, 0.0, 0.25, 1.0, -1.0, 1.0, -0.25, 0.25, 0.75, 0.5, -0.25, -0.5, -0.75, 0.5, 0.25, -1.0, -1.0, -1.0, 1.0, 1.0, -0.75, -0.25, 0.5, -0.75, 0.25, 0.75, 0.75, -0.75, -0.25, 0.75, -0.25, 0.25, 0.0, -1.0, -0.75, -0.25, 0.25, -1.0, 1.0, -0.25, 1.0, 0.75, -0.75, 0.25, 0.0, 0.5, 0.0, 0.0, 0.25, 0.0, -1.0, 0.75, -0.75, 0.0, -0.75, 0.5, -1.0, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    buffer100.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.pushErrorScope("out-of-memory");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_buffer000 = command_encoder000.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    buffer101.destroy()
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    texture100.destroy();
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    query001.destroy()
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer103.destroy()
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    
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
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1000.beginOcclusionQuery(0)
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.insertDebugMarker("marker");
    query101.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.submit([]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    texture100.destroy();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    query002.destroy()
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device00.queue.submit([command_buffer000, ]);
    
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    query000.destroy()
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.endOcclusionQuery()
    
    buffer003.destroy()
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder003.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query000.destroy()
    query101.destroy()
    buffer000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query100.destroy()
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    render_pass_encoder1001.beginOcclusionQuery(0)
    texture102.destroy();
    buffer003.destroy()
    render_pass_encoder1000.endOcclusionQuery()
    
    const array3 = new Float32Array([-0.25, 0.75, -1.0, -0.5, 1.0, 0.5, 1.0, -0.75, 0.25, 0.25, 1.0, 0.0, 1.0, 0.0, 1.0, 0.5, -0.5, -0.5, 0.5, -0.25, 0.25, -0.5, -0.5, 0.0, -0.25, 0.0, 0.25, -0.5, -0.5, 0.5, 0.75, 1.0, -0.5, 0.5, 1.0, 0.75, 0.0, 0.25, 1.0, 0.0, 0.0, -0.25, 0.25, 0.25, 0.75, 0.0, 0.75, -0.5, 1.0, -0.5, -0.5, 0.5, 0.75, 0.5, 1.0, -0.5, -0.75, -0.75, -0.75, 0.25, -0.5, 0.25, 1.0, -1.0, 0.25, 0.25, 0.75, 0.25, -0.25, 0.25, -0.5, -1.0, -1.0, 1.0, 0.0, 0.5, 0.5, -0.25, 0.25, 0.0, 0.75, 0.25, 0.25, 0.25, -0.5, -0.25, 0.0, -0.75, 0.25, -0.25, 0.75, 0.25, -0.25, -1.0, -0.75, 0.75, 1.0, 0.0, -0.75, 0.0, ]);
    
    render_bundle_encoder003.insertDebugMarker("marker");
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query000.destroy()
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query001.destroy()
    query003.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder1001.endOcclusionQuery()
    buffer001.destroy()
    
    device10.pushErrorScope("internal");
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.75, -0.75, -1.0, 0.25, -1.0, 0.0, -0.75, -0.5, 0.75, -1.0, 0.25, -0.25, -0.75, 0.25, -0.25, -0.25, 1.0, -0.5, 1.0, 0.25, -1.0, -0.5, -0.75, -1.0, 0.25, 0.5, -1.0, -0.5, -0.5, -0.5, 0.75, -0.5, 0.5, 1.0, -0.25, -0.25, -0.25, 1.0, -1.0, 0.0, -0.25, 0.75, -0.25, 0.75, 0.25, -0.75, 0.5, 0.0, 0.5, 1.0, 1.0, 0.75, -0.25, -0.75, -0.5, 0.75, -1.0, 0.0, -0.25, -0.75, -0.25, 0.25, -0.75, 1.0, 0.5, -0.25, -0.5, 0.0, -1.0, 0.75, 0.0, 0.25, -0.5, 0.5, -1.0, -1.0, 1.0, 0.75, 1.0, -0.75, 1.0, -0.5, 0.25, 0.0, 0.5, -1.0, 0.5, -0.75, 0.0, 0.5, -0.25, -0.25, 0.0, -1.0, 0.0, 0.5, 0.25, -0.75, -0.75, 0.5, ]);
    query000.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    query002.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder003.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1001.beginOcclusionQuery(0)
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer100
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
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    render_pass_encoder1001.endOcclusionQuery()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    
    
    
    render_pass_encoder1001.popDebugGroup();
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
        occlusionQuerySet: query100
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder003.insertDebugMarker("marker");
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer106.destroy()
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    render_pass_encoder1020.insertDebugMarker("marker");
    const array5 = new Float32Array([0.5, -0.75, -0.75, 0.0, -1.0, -0.25, -0.25, -1.0, -1.0, 0.25, 0.0, 0.5, 0.25, 0.25, -0.25, 1.0, 0.75, 0.75, 0.75, 0.25, -1.0, 0.0, 0.0, -0.5, -0.25, -0.5, 0.75, -0.5, 0.0, 0.5, -0.5, -1.0, -0.25, 1.0, -1.0, -1.0, 1.0, -0.75, 0.0, -1.0, 0.25, 0.25, 1.0, 1.0, -0.25, 0.75, -0.75, 0.0, 0.25, 0.25, 0.75, 0.0, -1.0, 0.5, 0.5, 0.5, -1.0, 0.75, 0.5, -0.75, -0.5, 0.5, 1.0, -1.0, -1.0, -1.0, 1.0, -1.0, -0.5, 0.0, -1.0, 0.25, 0.0, 1.0, -0.25, -0.25, -0.5, 0.75, -1.0, -0.5, 0.0, 0.0, 0.0, -0.5, 0.5, -1.0, 0.25, 0.5, 1.0, -0.5, 1.0, 0.5, 0.25, -0.5, -0.5, -1.0, 0.5, 0.25, 0.5, 1.0, ]);
    
    
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setStencilReference(1);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture105
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array6 = new Float32Array([-0.25, -0.5, -0.25, 0.5, -0.75, 0.25, 0.0, -1.0, 0.0, 1.0, -1.0, 0.5, 1.0, 0.75, -1.0, 0.25, 0.25, 0.5, -0.25, -0.75, -1.0, 0.5, 0.25, -0.5, 0.75, -0.75, -1.0, 0.0, -1.0, 1.0, 0.75, -0.25, 0.0, -0.25, 0.25, 0.5, 0.25, 0.75, -0.5, 1.0, 0.5, 0.0, 0.75, 1.0, 0.25, -0.25, 1.0, -0.75, 0.25, -1.0, 1.0, 0.5, 0.5, -0.25, 1.0, -0.25, -0.25, 0.5, 0.75, -1.0, -0.75, 0.5, 0.5, 0.5, -0.75, 0.75, -0.5, -0.75, -0.25, -0.25, -1.0, 0.25, 0.0, -0.75, -0.5, -1.0, 0.75, 0.25, 0.0, 0.0, -0.5, -0.75, -0.25, 1.0, -0.75, -0.75, 0.0, 0.0, 0.75, 0.5, -0.5, -0.75, -1.0, -0.25, 0.75, 1.0, -0.25, -1.0, 1.0, 0.25, ]);
    
    render_pass_encoder1000.setStencilReference(1);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    query003.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    command_encoder103.insertDebugMarker("mymarker");
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    texture105.destroy();
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    texture103.destroy();
    
    render_bundle_encoder003.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    
    
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    query003.destroy()
    device10.queue.writeBuffer(buffer108, 0, array5, 0, array5.length);
    
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    
    
    render_pass_encoder1001.insertDebugMarker("marker");
    query001.destroy()
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    render_pass_encoder1021.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    query102.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1000.insertDebugMarker("marker");
    
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder104.clearBuffer(buffer100);
    
    buffer005.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1011.insertDebugMarker("marker");
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query005.destroy()
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    query102.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer004,
        0,
        400
    );
    command_encoder101.clearBuffer(buffer108);
    query101.destroy()
    
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder101.clearBuffer(buffer105);
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder001.clearBuffer(buffer004);
    render_bundle_encoder003.insertDebugMarker("marker");
    
    
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
        occlusionQuerySet: query103
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1021.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
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
        occlusionQuerySet: query102
    });
    
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    command_encoder101.copyBufferToBuffer(
        buffer105,
        0,
        buffer107,
        0,
        400
    );
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query103.destroy()
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    buffer001.destroy()
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query103
    });
    
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    query100.destroy()
    
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    render_pass_encoder1002.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query103.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1050.setStencilReference(1);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder104.clearBuffer(buffer105);
    command_encoder102.insertDebugMarker("mymarker");
    
    query002.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1021.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    render_pass_encoder1011.insertDebugMarker("marker");
    
    
    render_pass_encoder1021.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    buffer002.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    render_pass_encoder1002.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    render_pass_encoder1002.setStencilReference(1);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1002.endOcclusionQuery()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1002.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1021.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
}