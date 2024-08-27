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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer100 = command_encoder100.finish();
    device00.pushErrorScope("out-of-memory");
    
    device10.pushErrorScope("validation");
    const array0 = new Float32Array([0.75, 0.0, -0.5, 0.25, 0.0, 0.25, -0.5, 0.0, 0.0, 0.25, 0.75, 0.75, -0.75, 0.75, 0.5, 0.0, -1.0, 0.0, -0.75, 0.5, 0.75, -1.0, 0.0, 0.25, -0.25, 1.0, 1.0, 0.25, 0.0, -0.5, 0.75, 0.25, -0.75, -0.25, 0.5, -0.75, -0.25, 0.25, -0.75, 0.75, 0.25, -0.5, 0.5, -0.75, -0.5, 0.5, 0.25, 1.0, 0.0, -1.0, -0.25, 1.0, -0.25, 0.5, 0.75, 0.0, 1.0, 0.25, -0.5, 1.0, -0.5, 0.0, 1.0, -1.0, -0.75, 0.0, 0.25, -1.0, 1.0, -1.0, 0.5, 0.25, -1.0, 0.5, 0.5, 0.5, -0.5, 0.25, 0.0, -0.75, -0.5, -0.75, -0.75, -0.5, -0.75, 0.25, 0.75, 0.75, -0.25, 0.5, 0.75, 0.0, -1.0, 1.0, 0.0, 0.75, 0.5, 0.75, 0.5, 0.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.submit([command_buffer100, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device10.queue.submit([command_buffer100, ]);
    texture102.destroy();
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_buffer101 = command_encoder101.finish();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    texture100.destroy();
    device10.pushErrorScope("out-of-memory");
    device10.pushErrorScope("internal");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "2d"
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device00.pushErrorScope("out-of-memory");
    
    texture000.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    query101.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    query100.destroy()
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([-0.5, 0.25, -0.75, 0.5, -1.0, -0.75, -0.5, 1.0, -1.0, -0.5, -0.75, 0.75, -0.5, 0.0, -0.75, 0.25, 0.75, -0.75, -1.0, 0.25, 1.0, 1.0, 0.25, -0.25, 0.5, 0.0, -0.75, 0.25, 0.0, -0.25, -0.75, 0.75, -0.25, 1.0, 0.25, -1.0, 0.25, 0.25, 0.25, 0.75, 0.75, 0.5, -0.5, -0.5, 1.0, 0.0, -0.75, 0.0, -0.25, 0.5, -0.25, -0.25, 0.25, 0.0, -0.5, -0.75, 1.0, -1.0, -0.25, 0.75, -0.75, -1.0, 0.25, -0.25, 1.0, -0.75, 0.5, -0.5, 1.0, -0.5, 1.0, -0.25, -0.25, 1.0, -0.25, -0.25, 0.75, -1.0, 0.25, 0.0, 1.0, 0.5, -0.5, 0.0, -1.0, -0.75, 0.25, -0.75, 0.5, 0.25, 0.5, 0.25, 0.25, 0.5, -0.75, 0.75, 0.0, 0.25, 1.0, 1.0, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    render_pass_encoder1020.setStencilReference(1);
    texture103.destroy();
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1020.setStencilReference(1);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const array2 = new Float32Array([0.5, 0.0, -0.25, 0.25, -0.25, -0.25, 0.25, -0.5, 0.0, 0.5, 1.0, 0.25, -0.75, 0.5, -1.0, 1.0, -0.25, 0.5, -1.0, -0.5, 0.75, -1.0, -0.75, -1.0, 1.0, -0.25, 0.0, -1.0, -0.25, 1.0, -0.75, 0.75, 0.0, 0.5, 1.0, 0.0, 0.5, -0.75, -1.0, -1.0, -1.0, -0.25, 0.75, -0.5, 0.75, -0.25, -1.0, 1.0, -0.25, 0.75, -0.75, -0.5, -0.25, -1.0, 0.0, -1.0, 1.0, -0.5, 0.75, -0.5, -0.5, -0.5, -0.25, -1.0, 0.0, -1.0, -0.25, 0.0, 0.75, -1.0, -0.75, -1.0, -0.25, 0.5, -1.0, -1.0, -0.5, -0.75, -0.5, 0.25, 0.5, -1.0, 0.75, 0.75, -1.0, -1.0, 0.0, -0.25, 0.25, 0.0, 0.5, -0.25, -0.5, -0.75, -1.0, 1.0, -0.25, -0.5, 0.75, -1.0, ]);
    
    
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    texture002.destroy();
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1020.setStencilReference(1);
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    
    
    command_encoder102.insertDebugMarker("mymarker");
    
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    texture102.destroy();
    render_pass_encoder1021.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
        occlusionQuerySet: query102
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    command_encoder102.insertDebugMarker("mymarker");
    query102.destroy()
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder1021.setPipeline(render_pipeline100);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query000.destroy()
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_pass_encoder0000.setStencilReference(1);
    query000.destroy()
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    render_pass_encoder1030.setPipeline(render_pipeline100);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder1031.popDebugGroup();
    
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    
    texture001.destroy();
    const array3 = new Float32Array([-1.0, 0.0, -0.75, 1.0, 0.5, 0.0, 0.0, 1.0, 1.0, -0.25, 0.75, 0.5, 0.75, 0.0, 1.0, -0.75, 0.75, -1.0, -0.5, -0.5, 1.0, 0.5, 0.0, 0.75, -1.0, 1.0, -1.0, 0.5, 0.5, 0.25, 0.75, -0.25, -0.75, 0.75, -0.5, 0.0, 0.75, -0.25, 0.25, -0.75, 0.75, 0.25, -0.25, 0.75, 0.5, 0.0, 1.0, -0.5, 0.75, -0.25, -0.75, -0.75, -0.75, 0.5, -0.75, -0.5, -1.0, -1.0, 0.0, 0.0, -0.5, -0.75, 0.0, -1.0, -0.25, 0.0, -0.75, -0.75, -1.0, 0.25, -0.25, 0.0, 0.25, -0.5, 0.0, 0.5, 0.25, -0.5, 0.25, 0.0, 0.75, 0.75, 0.0, 0.25, 1.0, 1.0, -1.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.5, 0.25, -0.75, -0.5, -0.75, 0.5, 0.25, -0.25, ]);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query101.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const array4 = new Float32Array([-0.25, -0.75, -0.5, 0.75, -0.5, 0.25, 1.0, -0.25, -0.25, -0.5, 0.5, 1.0, -1.0, 0.0, -0.75, -0.75, -1.0, 1.0, -0.5, -0.5, -0.75, 0.0, 1.0, -1.0, 0.25, -0.5, 0.75, -0.75, 1.0, -0.25, -1.0, -0.25, -0.75, 0.5, -1.0, -0.5, -0.75, 0.75, -0.5, 0.0, -0.75, 0.25, 0.5, 0.75, 1.0, 0.75, -1.0, -0.5, 1.0, 0.5, -0.25, 1.0, 0.0, 0.75, 0.75, -1.0, 0.25, 0.5, -1.0, 0.0, 0.25, -0.5, 1.0, 1.0, 1.0, 1.0, -0.75, 0.0, 0.0, -0.75, 1.0, 0.5, -0.5, 0.5, -0.75, -0.25, -0.25, -0.75, 0.75, 0.25, 0.75, -0.25, -1.0, 1.0, 0.0, -0.25, -1.0, 1.0, 1.0, 0.5, 0.0, 0.5, -1.0, 0.5, 0.5, -0.5, 1.0, 0.25, -0.5, -1.0, ]);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.endOcclusionQuery()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1031.setPipeline(render_pipeline100);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.copyTextureToTexture(
        {
            texture: texture105
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1030.setStencilReference(1);
    
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    query102.destroy()
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder0010.executeBundles([])
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture105.destroy();
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query000.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const command_buffer000 = command_encoder000.finish();
    
    device10.queue.submit([command_buffer101, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    query100.destroy()
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder1031.popDebugGroup();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
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
    
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query101.destroy()
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder1031.setStencilReference(1);
    texture104.destroy();
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.submit([command_buffer000, ]);
    command_encoder102.popDebugGroup()
    device10.queue.submit([]);
    query001.destroy()
    
    render_pass_encoder1031.setStencilReference(1);
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0030.executeBundles([])
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, ])
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1031.pushDebugGroup("group_marker");
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    
    render_pass_encoder0031.pushDebugGroup("group_marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder0020.executeBundles([])
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1031.popDebugGroup();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0031.popDebugGroup();
    
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.executeBundles([])
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder0020.beginOcclusionQuery(0)
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    
    render_pass_encoder1030.setStencilReference(1);
    
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    query200.destroy()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder0031.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    query000.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder0020.endOcclusionQuery()
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    
    
    render_pass_encoder1020.setStencilReference(1);
    query100.destroy()
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    
    
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
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
    render_pass_encoder0000.setPipeline(render_pipeline000);
    
    render_pass_encoder1040.setPipeline(render_pipeline101);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    render_pass_encoder1020.setStencilReference(1);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder107.copyTextureToTexture(
        {
            texture: texture105
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
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.insertDebugMarker("marker");
    
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder1031.popDebugGroup();
    query101.destroy()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.insertDebugMarker("marker");
    texture105.destroy();
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder1041.setPipeline(render_pipeline102);
    render_pass_encoder1020.popDebugGroup();
    texture004.destroy();
    render_pass_encoder0031.beginOcclusionQuery(0)
    render_pass_encoder1050.setPipeline(render_pipeline101);
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder1070.insertDebugMarker("marker");
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    query000.destroy()
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query102
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder1061.setPipeline(render_pipeline101);
    compute_pass_encoder2001.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    
    render_pass_encoder1070.setPipeline(render_pipeline102);
    
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.beginOcclusionQuery(0)
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder0010.insertDebugMarker("marker");
    query100.destroy()
    const render_pass_encoder1032 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1032",
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
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0031.setPipeline(render_pipeline001);
    render_pass_encoder1060.setPipeline(render_pipeline101);
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1061.pushDebugGroup("group_marker");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder1061.popDebugGroup();
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1051.pushDebugGroup("group_marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1070.pushDebugGroup("group_marker");
    texture101.destroy();
    query002.destroy()
    query001.destroy()
    compute_pass_encoder2001.insertDebugMarker("marker")
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder1071 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1071",
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
    render_pass_encoder1071.setStencilReference(1);
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder1031.insertDebugMarker("marker");
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    query001.destroy()
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1041,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1032.executeBundles([])
    
    const render_pass_encoder1081 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1081",
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
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1080.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder1080.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1051.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1081.pushDebugGroup("group_marker");
    render_pass_encoder1080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0031.beginOcclusionQuery(0)
    command_encoder104.copyTextureToTexture(
        {
            texture: texture100
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query100.destroy()
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1032.setPipeline(render_pipeline101);
    render_pass_encoder1080.setPipeline(render_pipeline100);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0021.setPipeline(render_pipeline002);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1071.setPipeline(render_pipeline102);
    render_pass_encoder1051.setPipeline(render_pipeline102);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    const command_buffer108 = command_encoder108.finish();
    render_pass_encoder0011.setPipeline(render_pipeline000);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0010.setPipeline(render_pipeline001);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1081.setPipeline(render_pipeline102);
    render_pass_encoder1040.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1080.endOcclusionQuery()
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1051.endOcclusionQuery()
    const command_buffer107 = command_encoder107.finish();
    device10.queue.submit([command_buffer107, ]);
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1070.endOcclusionQuery()
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1081.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer105, command_buffer108, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    device30.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1061.endOcclusionQuery()
    device30.queue.submit([]);
    render_pass_encoder1070.endOcclusionQuery()
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, command_buffer105, ]);
    render_pass_encoder1080.endOcclusionQuery()
    render_pass_encoder1081.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([]);
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0031.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    device30.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    command_encoder001.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer104, ]);
    device20.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1080.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer105, ]);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1080.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1081.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer108, ]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1080.endOcclusionQuery()
    render_pass_encoder1080.endOcclusionQuery()
    render_pass_encoder1070.endOcclusionQuery()
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    device30.queue.submit([]);
    render_pass_encoder1051.popDebugGroup();
    device00.queue.submit([]);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1061.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1021.endOcclusionQuery()
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    device30.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device20.queue.submit([]);
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1071.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1080.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1080.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1061.endOcclusionQuery()
    device20.queue.submit([]);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer108, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1041.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer108, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1080.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1080.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1061.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1032.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer105, ]);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([]);
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1080.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1080.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1032.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.endOcclusionQuery()
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer106, command_buffer107, ]);
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1032.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([]);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1032.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1051.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1040.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1081.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1071.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device20.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1032.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1032.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1021.endOcclusionQuery()
    device20.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1080.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1081.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder1021.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1061.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1081.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1081.popDebugGroup();
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    device30.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([]);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1080.popDebugGroup();
    device20.queue.submit([]);
    device30.queue.submit([]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1080.endOcclusionQuery()
    render_pass_encoder1032.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1080.endOcclusionQuery()
    render_pass_encoder1081.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
}