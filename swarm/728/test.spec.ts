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
    
    
    
    const array0 = new Float32Array([0.0, -0.5, 0.5, 0.0, -0.75, 0.5, -0.25, -0.5, -1.0, 1.0, 0.0, 1.0, -0.5, 0.5, 1.0, -0.75, 0.75, -1.0, 0.25, 1.0, 0.0, 0.25, -0.75, -0.75, 0.25, -0.5, -0.75, -0.5, 1.0, -0.25, -0.5, 0.0, 1.0, -0.25, -1.0, 1.0, 1.0, 0.75, -0.75, 0.5, -0.25, 0.25, 1.0, 0.0, -0.75, 0.75, 1.0, 0.75, -0.75, -1.0, -1.0, 0.25, 0.25, 0.5, -0.25, 1.0, -0.75, -0.25, 0.75, 0.75, -1.0, 0.0, -0.75, -0.25, 0.0, -1.0, 0.0, -0.5, 0.75, 1.0, -0.5, 0.75, -1.0, -0.25, 0.75, -0.5, 0.0, 0.0, -1.0, -0.5, 0.5, 0.5, 0.75, -1.0, -0.75, 0.0, -0.25, 0.0, 0.5, -0.75, -0.75, -0.5, -0.75, -0.75, 0.75, -1.0, 0.25, -0.5, -0.25, -0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    device10.destroy();
    
    
    const array1 = new Float32Array([-0.75, -0.75, -0.75, 0.25, 0.75, -0.25, -0.75, -0.25, 0.75, 0.75, -1.0, 0.5, 0.5, 0.5, -0.75, 1.0, 1.0, 0.5, 0.5, 1.0, -1.0, 0.75, 0.5, 0.25, 0.75, 0.25, 1.0, 0.75, 0.75, 0.5, -1.0, 1.0, 0.25, 1.0, 1.0, -0.25, 0.5, 0.25, 0.25, -0.75, 0.0, 0.25, 0.25, -0.5, 1.0, 0.0, -1.0, 0.75, 0.5, -1.0, -0.25, 0.75, 0.5, -0.25, -0.25, -0.75, -0.5, -0.75, 0.75, 0.5, 0.75, -1.0, -1.0, -0.25, -0.25, -1.0, -0.75, -0.25, 0.0, 1.0, -0.25, -0.5, 0.75, -0.5, 0.25, 0.0, 0.5, 1.0, 0.75, 0.0, 0.5, 0.5, -1.0, 1.0, 0.5, 1.0, 0.25, 0.75, 0.5, -0.5, -0.75, 1.0, 0.0, 0.5, 0.75, 1.0, 0.25, -0.75, -0.5, -1.0, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([-0.25, -0.25, -1.0, 1.0, -0.25, 0.0, -0.75, -1.0, 0.0, -1.0, 0.0, -0.5, 0.0, -0.75, 0.0, -0.75, -0.5, 0.0, 0.75, -0.75, 0.0, -0.75, 0.75, -0.75, 1.0, 0.75, -0.25, -0.25, -0.25, -0.75, -0.25, 0.75, 0.25, 0.75, 0.5, 0.25, 0.0, 0.0, 0.75, 0.5, 1.0, -0.5, -1.0, 0.5, -1.0, -0.5, 0.75, 0.25, 1.0, 0.0, -0.25, 0.5, -0.25, 0.25, 0.5, -0.75, -0.25, -0.25, -0.5, -0.25, 0.5, -0.25, 0.25, -0.5, -0.25, -0.75, 1.0, 0.75, 1.0, 1.0, -1.0, 0.5, -0.75, -0.25, 0.25, 0.5, -0.25, 0.0, 0.25, 1.0, 0.25, 0.0, 1.0, 0.5, 1.0, -0.75, 0.0, -1.0, -0.25, 0.0, 0.75, 0.0, -0.75, 0.5, 0.5, 0.0, 0.75, -1.0, 0.25, 0.25, ]);
    const array3 = new Float32Array([0.25, -0.5, 0.75, 1.0, 1.0, 1.0, 0.25, -0.75, 0.75, -0.25, 0.0, 0.75, -0.75, -1.0, 0.5, 0.0, 0.75, -1.0, -1.0, -0.75, -0.25, 1.0, 0.0, -0.75, -1.0, 1.0, -1.0, 0.0, 0.75, -1.0, 0.75, -0.25, -0.25, -0.75, -0.5, -0.25, -1.0, 0.0, 0.5, 0.5, -1.0, -0.5, 1.0, 0.75, 0.25, 0.5, -1.0, 0.0, 0.75, 0.0, -0.75, 0.25, 0.0, 0.0, 0.5, 0.5, -0.75, -0.25, 0.5, -1.0, 0.25, 0.0, 0.5, -0.75, 0.75, 0.25, 0.5, 0.75, 0.5, -0.5, 1.0, 1.0, -0.5, -0.5, 1.0, 0.5, -0.75, -0.5, 0.0, 0.0, 0.25, 1.0, 0.25, 0.0, -0.25, 0.0, -0.5, 1.0, 0.25, -0.25, 0.5, -0.75, 1.0, -0.5, -1.0, 1.0, 1.0, -0.25, -0.75, -0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    device20.pushErrorScope("validation");
    const array4 = new Float32Array([-0.5, -1.0, 0.0, -0.25, -1.0, 1.0, 0.25, -0.25, 0.75, 1.0, -0.75, -0.5, -0.5, 0.75, 1.0, 0.75, -0.75, 1.0, 0.75, -0.75, 0.25, 1.0, 0.25, 0.0, 0.5, 0.25, 0.75, 0.0, 0.25, 0.25, 1.0, 0.25, -0.75, -0.5, -0.5, -0.75, -0.75, -1.0, -1.0, -1.0, -1.0, -1.0, 0.75, 0.5, -0.5, 0.0, -1.0, -0.25, 1.0, 0.25, -0.5, -0.5, 1.0, 1.0, -0.75, -0.5, 0.5, -0.75, 0.75, -0.5, 1.0, 0.0, 0.75, 1.0, 0.75, -1.0, 0.25, 0.25, 0.5, 0.25, -0.75, -0.25, -0.5, 0.25, 1.0, -0.25, -0.25, -1.0, 0.25, -0.5, -0.25, -0.75, 0.0, 0.0, 0.75, 0.75, -0.25, 0.75, 0.0, -1.0, -0.5, 0.75, 0.75, -0.75, 0.75, -0.5, 0.75, 0.25, 0.0, 0.0, ]);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder200.popDebugGroup();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_buffer002 = command_encoder002.finish();
    command_encoder000.popDebugGroup()
    
    device20.queue.submit([command_buffer200, ]);
    const command_buffer000 = command_encoder000.finish();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    texture200.destroy();
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture002.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder001.popDebugGroup()
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.setStencilReference(1);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setStencilReference(1);
    
    
    
    
    const array5 = new Float32Array([-0.25, 0.25, 0.75, 1.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.0, -0.25, -0.25, -0.5, -1.0, -1.0, 1.0, 0.5, 0.0, -0.25, 0.75, -1.0, 0.25, -0.5, -0.5, -0.25, -1.0, 0.0, 0.5, 0.25, 0.5, 1.0, -0.25, -0.75, -1.0, 0.5, -1.0, -0.75, -1.0, 1.0, 0.75, -0.25, -0.75, 1.0, -0.5, -0.25, 0.75, -1.0, 0.25, 0.25, 0.5, -0.5, 0.75, -0.75, 0.75, 0.25, 0.5, 0.0, -0.25, -0.75, -0.25, -0.75, 0.0, 0.25, 0.75, 0.0, -0.75, 0.0, 0.75, 0.0, -0.75, 0.75, -0.25, -1.0, 0.5, 0.75, 1.0, -0.5, -0.75, -0.5, -0.5, 0.5, 0.0, 0.0, -0.5, 0.75, 0.75, 0.0, 0.5, -1.0, 0.5, 0.75, 0.5, 0.0, -0.75, 0.5, 0.75, 0.0, -0.75, 0.5, 1.0, ]);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query201
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder200.popDebugGroup();
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device00.pushErrorScope("out-of-memory");
    
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder2010.executeBundles([])
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.executeBundles([])
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder201.popDebugGroup();
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder0010.setStencilReference(1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setStencilReference(1);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.executeBundles([])
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    
    device00.pushErrorScope("validation");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2020.executeBundles([])
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_buffer400 = command_encoder400.finish();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8uint",
        dimension: "2d"
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder2040.setStencilReference(1);
    texture400.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2050.setStencilReference(1);
    
    device40.queue.submit([command_buffer400, ]);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture401.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2050.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2040.beginOcclusionQuery(0)
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_pass_encoder2040.executeBundles([])
    texture003.destroy();
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder0010.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder2040.setStencilReference(1);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture004.destroy();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2020.executeBundles([])
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2010.setStencilReference(1);
    const command_buffer403 = command_encoder403.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    
    render_pass_encoder2030.beginOcclusionQuery(1)
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.setStencilReference(1);
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    render_pass_encoder2050.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query003
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder2020.setStencilReference(1);
    
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    render_pass_encoder2060.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2040.setStencilReference(1);
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    texture005.destroy();
    
    render_pass_encoder2050.beginOcclusionQuery(0)
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2020.executeBundles([])
    
    render_pass_encoder0040.setStencilReference(1);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("internal");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture202.destroy();
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_pass_encoder2050.setStencilReference(1);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder2020.setStencilReference(1);
    
    texture000.destroy();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder2060.beginOcclusionQuery(0)
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_pass_encoder2060.insertDebugMarker("marker");
    
    
    render_bundle_encoder400.popDebugGroup();
    
    render_pass_encoder0010.executeBundles([])
    
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    render_pass_encoder2010.executeBundles([])
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder2070.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_pass_encoder2040.endOcclusionQuery()
    
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.executeBundles([])
    
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder2070.beginOcclusionQuery(0)
    render_bundle_encoder401.popDebugGroup();
    
    render_pass_encoder0010.executeBundles([])
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_pass_encoder2070.executeBundles([])
    render_pass_encoder2050.setStencilReference(1);
    
    render_pass_encoder2060.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2040.beginOcclusionQuery(5)
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2070.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder2050.insertDebugMarker("marker");
    
    render_pass_encoder2070.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2070.executeBundles([])
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.executeBundles([])
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder2050.insertDebugMarker("marker");
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2050.executeBundles([])
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder000.popDebugGroup();
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2060.insertDebugMarker("marker");
    render_pass_encoder2060.endOcclusionQuery()
    render_pass_encoder0040.executeBundles([])
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    render_pass_encoder2050.setStencilReference(1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_bundle_encoder401.popDebugGroup();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.insertDebugMarker("marker");
    texture300.destroy();
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_pass_encoder2070.endOcclusionQuery()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_pass_encoder2040.endOcclusionQuery()
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0013,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_pass_encoder2060.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const array6 = new Float32Array([-0.5, 0.75, -0.25, -0.75, 0.75, -0.75, 0.25, -0.25, 0.5, 0.0, 0.0, -0.75, 0.25, -0.75, 0.5, -0.5, 0.75, 0.75, -0.75, 0.0, -1.0, 0.5, 0.0, -0.5, 0.5, -0.5, -0.75, 0.25, 0.25, -1.0, -1.0, -0.25, 1.0, -0.25, 0.75, -1.0, -1.0, 0.75, -0.5, 0.5, 0.75, -1.0, -0.75, 0.25, 0.75, 0.75, 0.75, 0.5, 0.75, -0.75, 1.0, 0.75, -0.75, -0.25, 1.0, 1.0, -0.25, 0.75, 0.0, 1.0, 0.5, -0.5, 1.0, -0.5, -0.75, 0.0, 0.75, 0.25, -0.75, 0.25, 0.0, 0.0, 0.5, 0.25, 0.0, 0.5, -0.25, 0.0, 0.5, 1.0, -0.25, -0.25, -0.75, -0.75, -1.0, 0.25, 1.0, 0.0, 0.75, 0.25, 0.75, 0.5, 0.75, 1.0, -0.25, -0.75, -1.0, 1.0, -0.75, 0.0, ]);
    const command_buffer301 = command_encoder301.finish();
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder0010.endOcclusionQuery()
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer403, command_buffer404, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}