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
    
    const array0 = new Float32Array([1.0, -0.5, -0.25, 0.5, 0.5, 0.5, 1.0, 0.0, 0.75, 0.0, -0.5, 0.5, 0.5, 0.5, 0.5, -0.25, -0.75, 1.0, 0.25, -1.0, 0.25, -0.75, -0.75, 1.0, 0.0, 1.0, 0.25, -0.25, 0.75, 0.5, 1.0, -0.75, -0.5, 0.25, 1.0, -0.75, 0.25, -1.0, -1.0, -0.25, 0.5, 0.5, 0.5, -0.25, 0.5, -0.25, 0.0, 0.5, 1.0, 0.75, -0.75, 1.0, 0.25, 1.0, -0.25, 0.75, 0.25, 0.5, 0.25, 0.75, 1.0, 0.0, 1.0, -0.25, 1.0, 0.0, -1.0, 0.5, 0.5, 0.5, -0.5, 0.5, 0.75, 1.0, 1.0, 0.25, 0.25, -0.25, 0.25, 0.75, -0.75, -0.75, -0.5, 0.0, -0.25, -0.75, -0.5, -0.5, -0.75, 0.5, 0.5, -1.0, 0.75, -0.75, -0.25, -0.5, -0.75, 0.0, 0.0, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query000.destroy()
    
    texture002.destroy();
    
    
    texture001.destroy();
    
    
    
    
    texture000.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    
    
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    texture003.destroy();
    
    const array1 = new Float32Array([-1.0, -0.5, 0.0, 0.25, -0.75, 0.0, -0.5, 0.5, 0.75, 0.0, 0.75, -0.5, 1.0, 0.5, -1.0, 1.0, -0.25, -0.25, 0.5, 0.75, 0.5, -0.75, -0.25, -1.0, 0.0, -0.25, 1.0, -0.75, 0.0, 1.0, -0.5, -0.25, -0.75, -0.75, 0.5, 0.5, 0.75, 0.75, 0.75, -0.5, -1.0, 1.0, -0.25, 0.25, -0.75, -1.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.75, 0.0, -0.5, -0.25, 0.0, -1.0, -0.25, 1.0, -1.0, -0.25, 1.0, 1.0, -1.0, -0.25, -0.25, -0.75, 1.0, 1.0, -0.75, 0.75, -0.25, -0.5, 0.75, 1.0, 0.25, 0.5, -0.25, -0.75, -1.0, -0.75, -0.25, 0.5, -0.25, -1.0, -0.75, 1.0, -0.75, 0.25, 0.75, -0.5, 0.5, -0.25, 0.25, -1.0, -0.25, 0.25, 0.75, -0.25, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query001.destroy()
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    query001.destroy()
    query001.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    
    render_pass_encoder0000.insertDebugMarker("marker");
    query201.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    query201.destroy()
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.executeBundles([])
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array2 = new Float32Array([0.0, 1.0, -0.25, 0.25, 0.25, -0.25, 1.0, 1.0, 0.5, -0.25, -0.75, 0.75, 0.75, 0.25, 0.5, -0.25, 0.75, 0.75, 0.5, 0.75, -0.5, 0.5, -0.25, -0.5, 0.0, 0.5, -0.25, 1.0, -1.0, 0.75, 0.75, -0.75, 1.0, 0.0, -0.5, 0.25, -1.0, -0.5, 0.5, -0.5, 0.5, -1.0, 1.0, -0.25, 0.5, 0.0, -0.5, -0.25, 0.75, -0.75, -0.25, 0.5, -0.5, -0.5, -0.75, -0.75, -0.75, 1.0, 0.75, 1.0, -0.25, 0.25, 0.25, -0.5, 0.5, -0.25, 0.75, 1.0, 0.25, 0.5, 0.75, -0.5, 0.25, -0.5, 0.0, -1.0, 0.75, 0.75, -1.0, -0.75, 0.0, -1.0, 0.25, -1.0, -0.5, 0.0, 1.0, 0.25, 0.5, 0.75, 0.0, -1.0, 1.0, 1.0, 1.0, 0.0, 0.5, -1.0, 1.0, 0.5, ]);
    query201.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    
    texture004.destroy();
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.popDebugGroup();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0000.setStencilReference(1);
    
    command_encoder100.insertDebugMarker("mymarker");
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    
    render_pass_encoder0020.setStencilReference(1);
    
    
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0010.setStencilReference(1);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder0020.executeBundles([])
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setStencilReference(1);
    query200.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0030.insertDebugMarker("marker");
    const array3 = new Float32Array([1.0, 1.0, -1.0, -0.75, -1.0, -0.75, 0.25, -0.75, 0.5, 0.25, 0.5, 0.25, 0.75, 0.5, 1.0, 0.75, 1.0, 1.0, -0.5, -0.25, 0.5, -0.5, -0.75, 0.0, -0.25, -1.0, 0.5, -0.75, -0.75, 0.5, 0.25, -0.25, -0.5, 0.75, -1.0, -0.75, -0.25, 1.0, -0.5, -0.25, -1.0, -0.75, -0.75, 0.5, 0.5, 0.25, -0.25, -0.25, 0.0, -0.5, -0.75, 0.5, 0.0, 0.5, -0.75, -0.5, 0.75, 0.25, -0.75, 1.0, 0.75, -0.75, 0.5, -1.0, -0.5, 0.75, -1.0, -0.5, 0.5, -0.75, 0.5, -0.75, 0.0, -0.75, 0.25, 0.75, 0.0, 0.25, 1.0, -0.25, -0.75, 0.0, 0.5, -0.75, 1.0, 1.0, -0.25, 0.75, -1.0, -0.5, -0.25, -1.0, 1.0, 0.75, -0.75, 0.5, -0.5, -0.5, -0.25, 0.0, ]);
    render_pass_encoder0030.setStencilReference(1);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    query001.destroy()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder0010.executeBundles([])
    
    render_pass_encoder0010.setStencilReference(1);
    query201.destroy()
    query000.destroy()
    
    
    
    query002.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture201.destroy();
    query200.destroy()
    query001.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_pass_encoder0020.executeBundles([])
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query201.destroy()
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.executeBundles([])
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    query000.destroy()
    render_pass_encoder0000.setStencilReference(1);
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder0020.executeBundles([])
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query101.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: query101
    });
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    query101.destroy()
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array4 = new Float32Array([0.0, 0.0, -1.0, -0.75, -1.0, 0.75, 0.5, 1.0, 1.0, 0.0, 0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 1.0, 0.75, 0.0, 0.75, -0.75, 0.25, 0.5, 0.25, 0.0, -0.5, 0.25, 0.75, -0.75, 0.5, 0.25, 0.0, -1.0, -0.25, 0.25, 0.75, -0.75, -0.75, 0.25, 0.5, -0.75, 0.75, -0.75, -0.25, 0.0, -0.75, 0.5, 0.0, 1.0, -0.5, 1.0, 1.0, 0.25, 0.75, -0.25, 0.25, -1.0, 0.75, 0.5, -0.25, 0.25, -1.0, 0.0, 0.75, 0.75, -1.0, 1.0, -1.0, 0.5, -1.0, 0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 0.75, 0.5, -1.0, 0.0, -0.25, -0.5, 0.5, 1.0, -0.75, -0.25, 0.25, -0.25, -0.25, 1.0, 0.25, -1.0, 1.0, 0.0, -0.5, 1.0, 0.75, 0.0, -0.5, 0.5, ]);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    query102.destroy()
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder0010.popDebugGroup();
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const array5 = new Float32Array([0.0, 0.5, -0.75, 0.25, 0.5, -0.5, 0.5, 0.5, 0.5, 0.5, -0.75, 0.25, 0.75, 0.25, -0.75, 0.75, -0.5, 0.0, -1.0, -0.25, -1.0, 0.75, 0.75, 0.0, 0.75, -0.5, -0.25, 0.0, 0.5, 0.25, -0.25, 0.75, 0.75, 0.25, 0.5, -0.75, -0.5, -0.25, -0.25, 0.0, 0.0, -0.75, 0.75, 0.25, 0.75, 0.0, 0.0, -0.75, -0.75, 0.5, 0.0, 1.0, 0.75, -1.0, -0.25, -0.75, -0.75, -0.75, 0.25, 1.0, 0.5, 0.25, 0.0, -0.75, -0.5, 0.0, 0.5, 0.0, 0.0, -0.75, -0.25, 1.0, 0.75, 0.5, -1.0, 0.0, 0.5, -0.5, -0.25, 0.0, -0.75, 0.5, -0.75, 0.25, -0.75, -0.5, 0.75, -0.25, -0.25, 0.5, 0.0, 0.25, 0.0, -0.75, 0.25, -1.0, -0.75, -0.75, 0.0, 0.0, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query101.destroy()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.popDebugGroup();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder0030.popDebugGroup();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    const array6 = new Float32Array([0.0, 0.0, 0.0, -0.25, -1.0, 0.25, 0.25, -0.25, 0.0, 1.0, -0.75, -0.5, -0.25, 0.25, 1.0, -0.75, 0.25, 0.0, -0.5, -0.5, -0.5, -0.75, 0.75, 1.0, -0.25, 0.25, -0.25, 0.75, 0.0, 0.5, 0.25, 0.5, 0.25, -0.25, -0.25, 0.5, -0.75, 0.75, 0.75, 1.0, 0.75, -1.0, 0.25, 0.5, 0.75, -0.25, 1.0, 0.25, -1.0, 1.0, 0.25, -1.0, 1.0, 0.25, -0.75, 0.75, 1.0, 0.5, -1.0, -0.75, -0.75, -0.5, 0.75, 0.75, 0.0, 0.25, 0.0, 0.0, -0.75, 0.0, -1.0, 0.25, 0.0, -0.75, 0.5, -0.5, -0.25, 1.0, 0.25, 0.75, -0.25, 0.5, -0.75, -0.25, -0.5, -1.0, -1.0, -0.5, 1.0, 0.25, -0.75, -0.5, -0.75, -0.5, -0.25, 0.25, -0.25, 0.5, 0.5, 0.75, ]);
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    query100.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0030.setStencilReference(1);
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.executeBundles([])
    query102.destroy()
    
    render_pass_encoder0000.executeBundles([])
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.popDebugGroup();
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.executeBundles([])
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture008 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    render_pass_encoder0000.executeBundles([])
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query004
    });
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    texture300.destroy();
    
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder0000.setStencilReference(1);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: query001
    });
    
    
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array7 = new Float32Array([-0.75, 1.0, -0.75, -1.0, 0.5, -0.75, 0.25, 0.75, -0.25, 0.25, 0.25, 0.75, 1.0, 0.0, 0.75, -1.0, 0.0, -1.0, -1.0, 1.0, -1.0, 0.75, -0.75, 0.0, 0.75, -0.75, 0.5, -1.0, -0.75, -0.5, -1.0, 0.0, 1.0, -0.25, 0.25, 1.0, -0.5, -0.25, 1.0, 0.5, -0.75, -0.5, -0.75, 0.25, -0.25, -0.25, 0.25, 0.75, -0.25, 0.75, 0.5, -0.75, -0.75, 0.25, 1.0, 1.0, 0.25, -0.5, -0.5, -0.75, -0.25, -0.25, -0.5, 1.0, 0.0, -1.0, 0.25, 0.0, 0.5, 1.0, -0.5, -0.75, 1.0, -0.5, -0.75, 0.5, 0.75, 0.5, 1.0, -0.25, 1.0, 1.0, 1.0, 0.25, 0.75, -1.0, -0.5, -0.75, -1.0, 0.0, -0.75, -0.75, 0.75, 0.75, 0.75, 1.0, -1.0, 0.75, -0.25, -0.5, ]);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.beginOcclusionQuery(0)
    
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query103
    });
    
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    
    query003.destroy()
    
    
    device00.queue.writeTexture({ texture: texture008 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    texture009.destroy();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0000.setStencilReference(1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1020.executeBundles([])
    query100.destroy()
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_pass_encoder0070.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0070.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder0000.executeBundles([])
    query003.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_pass_encoder1020.popDebugGroup();
    texture007.destroy();
    const texture_view0080 = texture008.createView({ label: "texture_view0080" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0040.beginOcclusionQuery(0)
    render_pass_encoder1000.executeBundles([])
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    query104.destroy()
    query104.destroy()
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    
    
    render_pass_encoder0040.insertDebugMarker("marker");
    
    
    render_pass_encoder0050.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
}