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
    
    
    
    
    const array0 = new Float32Array([0.75, -0.25, 0.0, 0.75, 0.75, -0.25, -1.0, -0.25, 0.75, -0.5, 0.5, -1.0, 0.75, -1.0, -0.5, -1.0, -0.25, -1.0, 0.0, 0.25, 0.5, 0.0, 0.0, 1.0, 0.25, 0.25, -1.0, -1.0, 1.0, 0.25, 0.0, -1.0, 0.5, -0.25, 1.0, 0.0, -1.0, -0.75, 0.75, -0.25, -0.75, -0.5, -0.25, 0.0, 0.25, -0.5, 0.0, 0.0, 1.0, -1.0, 0.75, 0.0, 0.5, -1.0, -0.75, -0.5, -0.75, -0.5, -1.0, 0.0, 0.25, -0.75, 0.75, -1.0, 0.5, -0.75, 0.75, -1.0, 0.25, 0.0, 1.0, 0.75, -0.25, -0.5, -0.25, -1.0, -0.75, 0.0, -0.75, 0.5, 0.25, 0.0, 0.75, 1.0, 0.25, -0.5, -0.5, -1.0, -0.5, 0.5, 0.0, -0.25, 1.0, -0.75, 0.5, 0.25, 0.75, 1.0, -0.75, -0.75, ]);
    const array1 = new Float32Array([-1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 1.0, -0.75, -0.5, -0.25, -1.0, -0.5, 0.5, 0.25, 0.5, 0.25, 0.75, 0.75, -0.75, 1.0, 0.25, 0.75, -0.25, -0.75, 0.5, -1.0, 0.25, -0.5, 0.0, -0.5, 0.0, 0.0, 0.75, 0.75, 0.75, -0.75, -0.25, -0.25, 0.0, 0.25, 0.5, 0.5, 0.5, 1.0, 0.75, -0.5, 0.5, 0.75, 0.5, -0.5, 0.0, -0.5, 1.0, -1.0, 0.0, -0.5, -0.75, 1.0, 1.0, 0.75, 0.25, 0.0, -0.25, -0.25, -0.5, -0.5, 0.0, -0.25, -0.5, 0.0, 1.0, -0.25, 0.5, -0.75, 0.0, 0.25, 0.25, -1.0, -0.5, -0.25, -0.75, -0.5, -1.0, -0.25, -0.75, 0.0, -1.0, -0.5, -1.0, 1.0, 1.0, 0.25, 0.5, -0.75, -1.0, -0.75, -0.25, -0.25, 1.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.0, 0.5, 0.25, -0.25, 0.5, 0.0, -0.5, 0.25, 0.25, -1.0, -0.25, 0.75, -0.5, -1.0, -0.25, 0.75, -0.25, 1.0, -0.5, -0.25, -1.0, -0.25, 0.5, 0.75, -0.5, -1.0, -1.0, 1.0, -0.5, 0.25, -0.75, 1.0, -1.0, 0.5, -0.25, -0.5, 0.25, -0.25, 0.0, -0.75, -0.75, -0.5, -0.5, 0.25, 0.25, 0.75, 0.25, 1.0, -1.0, 0.5, 0.75, -1.0, 1.0, -1.0, 0.25, 1.0, -0.5, 0.75, -0.5, -1.0, -1.0, -1.0, 0.75, -0.5, -1.0, 0.25, -0.5, -0.75, -0.25, 1.0, 1.0, -0.75, 0.75, 0.5, 0.25, 0.5, 0.25, -0.25, -0.75, 0.0, -0.25, 1.0, 1.0, 0.25, -0.25, 0.25, -0.25, -0.5, 0.0, -0.25, 0.5, 1.0, -0.25, -0.75, -0.25, 1.0, 0.75, -0.25, -1.0, -0.25, ]);
    
    const array3 = new Float32Array([-1.0, 1.0, -0.25, 0.0, 1.0, 0.5, -0.25, 0.5, -0.25, 0.0, 0.5, 1.0, -1.0, -1.0, 1.0, -1.0, 0.5, 0.0, 0.25, 0.5, -0.75, 0.5, 0.25, 0.25, -0.5, 1.0, 0.5, -0.25, 0.5, -1.0, -1.0, -1.0, -0.75, -0.75, 0.75, 0.0, 0.5, -0.5, -1.0, -1.0, -1.0, 0.5, 0.0, 0.5, 0.75, -0.5, 0.25, 0.75, -0.75, -0.25, -1.0, 0.5, 1.0, 0.75, 0.5, 0.5, -0.25, -1.0, 0.75, -0.25, -1.0, -1.0, 0.5, 0.5, 0.75, -0.5, -1.0, -0.75, -1.0, 0.25, -0.25, 1.0, 0.75, 0.0, 1.0, 1.0, 0.75, 1.0, 0.75, -0.5, 1.0, -0.25, -0.25, 0.25, 0.5, -1.0, 0.5, -0.5, 0.75, 0.0, 0.25, 0.75, -0.5, 0.0, -1.0, 0.25, 0.75, 0.0, -0.5, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.5, -1.0, 1.0, 0.25, -0.25, 0.5, -1.0, -1.0, 0.0, -0.25, 0.0, 0.5, -0.25, 1.0, 1.0, -0.5, -0.5, 1.0, 0.75, 1.0, 0.75, 0.75, -0.5, -0.25, 0.0, -1.0, 0.75, 0.0, 0.75, 0.75, 0.25, 0.0, -1.0, -0.75, 0.25, -0.75, 0.0, -0.5, 0.75, -0.25, 0.25, 0.0, -0.5, 0.75, 0.0, -0.5, 0.25, -0.75, 0.5, 1.0, -0.5, 0.25, -0.5, -0.75, -0.75, 0.5, 0.75, 0.75, 1.0, 0.75, 0.25, -0.5, -1.0, -0.5, 0.75, -0.5, -0.5, -0.75, 1.0, 0.25, -0.5, -0.5, -1.0, -0.25, -0.25, -0.75, -0.5, -1.0, -1.0, 0.75, -1.0, 0.5, -1.0, -1.0, 1.0, 0.25, 0.75, 1.0, 0.75, 0.25, 0.75, 0.75, -0.75, 0.25, 1.0, 0.5, 0.25, -0.5, -0.5, -0.25, ]);
    const array5 = new Float32Array([0.5, 0.5, 0.0, -0.75, -0.25, 0.0, 1.0, 0.5, 0.0, 0.0, 0.75, -1.0, -1.0, 0.75, 1.0, 0.0, 0.5, 1.0, 0.75, 1.0, 0.25, 0.75, -0.75, -0.75, 0.75, -0.75, -0.25, -0.25, -0.75, 1.0, -0.5, -0.25, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, -0.75, 0.25, 1.0, -0.5, -0.75, -0.75, -0.5, 1.0, 0.75, 0.75, 1.0, 1.0, -0.5, -0.25, 1.0, -0.5, 1.0, 1.0, 0.5, 0.0, -0.75, 0.0, 0.5, 0.0, 0.25, -0.5, -0.25, 0.25, -1.0, 0.25, -1.0, 0.0, 0.0, -0.5, -0.5, 0.75, -0.5, -0.25, 0.75, -0.75, 0.25, 0.75, -0.75, -0.25, -0.75, 0.25, 0.5, 0.5, -0.75, 0.25, -0.25, 0.25, 1.0, -1.0, 0.25, 0.5, 0.5, -0.25, -0.5, -1.0, -0.75, 0.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    buffer101.destroy()
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const array6 = new Float32Array([-1.0, -0.75, -0.5, 1.0, 0.25, 0.75, 0.5, 0.25, -0.25, -0.25, 1.0, 0.75, 0.0, 0.25, -0.5, -1.0, 0.5, 0.75, -1.0, -0.5, 0.5, 0.75, -0.5, -1.0, -1.0, 0.25, -1.0, -0.25, -1.0, -1.0, 0.5, 0.5, -0.75, 1.0, 0.75, -0.5, 0.0, -0.75, 0.75, 1.0, 0.5, -0.5, -0.5, -1.0, 0.0, 1.0, -0.25, -1.0, 0.0, -0.25, 0.25, 0.25, -0.75, 0.75, -0.25, 0.5, 0.75, 0.5, 0.25, -0.25, 0.75, -1.0, -0.5, -0.75, 1.0, -1.0, 0.5, -0.5, 0.75, 0.25, -1.0, 1.0, 0.75, 0.0, 0.0, 0.0, -0.5, -0.75, -0.25, -0.75, -0.5, 0.25, -1.0, -0.5, 0.0, -0.5, 0.0, 0.25, 0.75, 0.75, -0.75, -0.5, -0.25, -0.75, -1.0, -0.5, -1.0, -1.0, 0.0, 0.5, ]);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer100.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    device00.pushErrorScope("internal");
    
    render_bundle_encoder101.popDebugGroup();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.pushErrorScope("out-of-memory");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder100.insertDebugMarker("mymarker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    
    texture000.destroy();
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
        occlusionQuerySet: undefined
    });
    
    device10.pushErrorScope("validation");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder102.clearBuffer(buffer100);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    query100.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    
    
    texture003.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
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
        occlusionQuerySet: query101
    });
    
    
    
    render_pass_encoder1010.beginOcclusionQuery(0)
    texture001.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    query000.destroy()
    buffer200.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0001.setStencilReference(1);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1010.endOcclusionQuery()
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    compute_pass_encoder1010.popDebugGroup()
    query105.destroy()
    render_pass_encoder1010.setStencilReference(1);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    render_pass_encoder0001.setStencilReference(1);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    buffer104.destroy()
    render_pass_encoder1010.setStencilReference(1);
    buffer100.destroy()
    texture100.destroy();
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_bundle_encoder101.popDebugGroup();
    
    
    
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
        occlusionQuerySet: query103
    });
    const array7 = new Float32Array([0.75, 0.5, 0.5, -0.5, 0.0, -1.0, -0.25, -0.5, -0.25, -0.75, -1.0, -0.5, -1.0, -0.75, -0.5, -0.25, 0.5, 0.5, -0.5, -1.0, 1.0, -0.25, 1.0, 0.25, 0.25, 0.75, 0.0, 1.0, 0.75, -1.0, 0.5, -1.0, 0.5, -0.25, 0.5, 0.0, 0.5, 0.0, -0.75, -0.75, 0.25, 0.0, 0.5, -0.75, 1.0, -1.0, -0.75, -0.5, -0.5, -0.25, 0.75, -1.0, -0.75, -0.5, 0.0, 0.75, -0.5, 1.0, -0.25, -0.25, 0.5, 0.25, 0.25, 1.0, 0.5, -1.0, -0.75, 1.0, -0.25, 0.75, 0.75, -1.0, -0.75, 0.75, 0.0, 1.0, -1.0, -0.75, 0.75, -0.25, -1.0, 1.0, 1.0, -1.0, -1.0, 1.0, 0.75, -0.5, 0.75, -0.25, 0.0, 1.0, 0.0, 0.0, -0.75, -0.5, -0.75, -0.25, 0.75, 0.0, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder100.popDebugGroup();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0011.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer104.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
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
    command_encoder101.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder0011.beginOcclusionQuery(0)
    
    
    render_pass_encoder1010.setPipeline(render_pipeline102);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    render_pass_encoder1021.setPipeline(render_pipeline101);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const array8 = new Float32Array([0.75, -0.75, -0.5, -1.0, -0.25, -0.5, 0.0, -0.25, 0.25, 0.25, -0.5, 0.5, 0.75, -0.5, -0.5, -0.75, 0.25, 0.75, -0.5, -1.0, 1.0, 0.0, 0.75, 0.25, 0.25, 0.5, -1.0, -0.5, 0.25, -1.0, -0.5, 0.0, -0.25, -0.75, 1.0, -0.75, -0.25, -1.0, -0.75, 0.0, -0.25, 0.75, 0.5, 0.25, -0.75, 0.25, -1.0, -0.75, 0.0, -1.0, -0.75, -0.5, -1.0, -0.5, -0.25, 0.5, 1.0, -0.75, 0.0, 0.25, 0.25, -0.5, 0.0, -0.25, 0.75, -0.25, 0.5, -0.75, 0.5, -1.0, 0.75, -0.25, 1.0, -0.25, -0.25, -0.5, -0.75, -0.25, 0.0, -0.5, -0.75, 0.5, 0.75, 1.0, 0.25, -0.75, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, 1.0, 0.25, 0.5, 0.75, -1.0, 0.25, -0.75, -0.75, ]);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
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
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1040.beginOcclusionQuery(0)
    render_bundle_encoder100.setPipeline(render_pipeline104);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1040.setPipeline(render_pipeline101);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder1030.setPipeline(render_pipeline103);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1040.setStencilReference(1);
    query103.destroy()
    render_pass_encoder1010.beginOcclusionQuery(0)
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    compute_pass_encoder1040.popDebugGroup()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query104.destroy()
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group102);
    render_pass_encoder1000.draw(3);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query105
    });
    query400.destroy()
    device40.queue.submit([]);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0011.insertDebugMarker("marker");
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0011.setStencilReference(1);
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1001.setPipeline(render_pipeline103);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    buffer104.destroy()
    
    
    render_pass_encoder1031.setStencilReference(1);
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0011.setStencilReference(1);
    
    render_pass_encoder1041.setPipeline(render_pipeline102);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group103);
    render_pass_encoder1031.setPipeline(render_pipeline102);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    buffer101.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    query200.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer103.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.insertDebugMarker("marker");
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group104);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer1010,
        0
    )
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group105);
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query200.destroy()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    buffer1012.destroy()
    command_encoder300.pushDebugGroup("mygroupmarker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    query000.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer103,
        0,
        400
    );
    
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder201.pushDebugGroup("mygroupmarker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder1031.setVertexBuffer(0, buffer100);
    
    render_pass_encoder0010.setStencilReference(1);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer000.destroy()
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1011.setPipeline(render_pipeline104);
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    
    render_pass_encoder1030.setStencilReference(1);
    buffer109.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder102.copyBufferToBuffer(
        buffer1012,
        0,
        buffer100,
        0,
        400
    );
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder104.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder1001.setStencilReference(1);
    
    buffer300.destroy()
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
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
    query400.destroy()
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1041.setStencilReference(1);
    buffer102.destroy()
    query000.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    device10.queue.writeBuffer(buffer1013, 0, array1, 0, array1.length);
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    query103.destroy()
    compute_pass_encoder2011.insertDebugMarker("marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder401.insertDebugMarker("mymarker");
    render_pass_encoder0011.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer1014, 0, array8, 0, array8.length);
    render_pass_encoder1020.setPipeline(render_pipeline103);
    
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    buffer108.destroy()
    texture002.destroy();
    device10.queue.writeBuffer(buffer1014, 0, array7, 0, array7.length);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    command_encoder104.copyBufferToBuffer(
        buffer107,
        0,
        buffer102,
        0,
        400
    );
    render_pass_encoder1031.beginOcclusionQuery(0)
    render_pass_encoder1040.setStencilReference(1);
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer103,
        0
    )
    
    
    
    render_pass_encoder1040.setStencilReference(1);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    compute_pass_encoder2011.insertDebugMarker("marker")
    render_pass_encoder1001.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    
    render_pass_encoder1021.setVertexBuffer(0, buffer1010);
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_pass_encoder0011.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group106);
    device10.queue.writeBuffer(buffer1011, 0, array8, 0, array8.length);
    render_bundle_encoder102.setPipeline(render_pipeline101);
    
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query106.destroy()
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    buffer301.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder0001.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture400.destroy();
    
    
    
    
    render_pass_encoder1040.insertDebugMarker("marker");
    
    
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1014, 0);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.end();
    
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    buffer106.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.endOcclusionQuery()
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    buffer107.destroy()
    
    buffer1010.destroy()
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder2000.setStencilReference(1);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0000.setStencilReference(1);
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    command_encoder100.resolveQuerySet(
        query106,
        0,
        32,
        buffer1010,
        0
    )
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    compute_pass_encoder3000.popDebugGroup()
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group107);
    render_pass_encoder1030.setVertexBuffer(0, buffer1016);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group108);
    render_pass_encoder1011.setVertexBuffer(0, buffer1015);
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder2000.setPipeline(render_pipeline201);
    render_pass_encoder1001.setVertexBuffer(0, buffer108);
    render_pass_encoder1021.drawIndexed(3);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder2010.setPipeline(render_pipeline200);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1041.setVertexBuffer(0, buffer101);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1041.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1041.drawIndirect(buffer103, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1031.endOcclusionQuery()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    render_pass_encoder1030.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder2010.setVertexBuffer(0, buffer201);
    render_pass_encoder1020.setVertexBuffer(0, buffer1011);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group109);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder1040.setVertexBuffer(0, buffer102);
    render_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1021.end();
    render_pass_encoder1040.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1031.end();
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder1040.drawIndirect(buffer1019, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder1041.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.setVertexBuffer(0, buffer1024);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder2000.setVertexBuffer(0, buffer203);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1040.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1041.end();
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder1020.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1040.end();
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1030.end();
    device20.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1031.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1041.end();
    render_pass_encoder1010.end();
    render_pass_encoder1010.end();
    device00.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    device40.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    device40.queue.submit([]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder2000.end();
    render_pass_encoder1011.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1021.end();
    render_pass_encoder1000.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1000.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder1020.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1030.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder2010.end();
    device00.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2010.end();
    render_pass_encoder1021.end();
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndexed(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2010.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1021.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1020.end();
    device20.queue.submit([]);
    render_pass_encoder1030.end();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder2000.end();
    render_pass_encoder1010.drawIndexed(3);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder1031.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1011.draw(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.draw(3);
    device00.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1031.end();
    device20.queue.submit([]);
    device00.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder2010.end();
    render_pass_encoder1011.end();
    device20.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder0002.popDebugGroup();
    device30.queue.submit([]);
    device00.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1010.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder1031.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1041.drawIndirect(buffer1012, 0);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1040.end();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.draw(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1041.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    device10.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
}