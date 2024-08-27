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
    const array0 = new Float32Array([0.25, 0.75, -0.25, 0.0, -0.75, 0.75, 0.75, 0.5, -0.5, 0.25, 0.5, 1.0, 1.0, 0.75, 1.0, -1.0, -0.75, -0.75, 0.0, 1.0, 0.25, -0.75, -0.75, 0.5, 0.75, 1.0, -1.0, -0.75, 0.25, 1.0, 1.0, 0.75, 1.0, -0.5, 1.0, -1.0, 0.75, 0.25, -0.25, 0.0, -0.25, -0.25, -0.75, -1.0, 0.5, 0.0, -0.25, 0.25, 0.25, 0.0, -0.25, 0.25, -0.25, 0.25, 1.0, 0.0, 0.5, 1.0, -1.0, 0.0, 0.5, 0.5, 0.75, -0.75, -0.5, 1.0, 0.0, 0.75, -0.5, 0.0, 0.5, 0.25, 1.0, 0.0, 1.0, 1.0, -0.5, -0.25, 0.75, 0.75, 0.75, 1.0, 0.75, -0.25, 0.75, 1.0, -1.0, -0.25, -0.5, 0.25, 0.5, 0.0, 0.0, 0.5, -0.5, -1.0, 1.0, 0.5, 0.25, 0.25, ]);
    
    const array1 = new Float32Array([-0.75, 0.75, 0.25, -1.0, 0.0, -0.5, -0.25, 0.75, 0.25, 1.0, -0.75, -0.5, 0.25, 1.0, -0.75, -0.5, -0.75, 0.25, 1.0, -1.0, -0.75, -1.0, 0.0, 0.75, 0.5, 1.0, 0.25, 0.25, -0.25, -0.5, -1.0, 0.25, 0.25, -0.25, -1.0, -0.75, -0.75, 0.75, 0.25, 0.0, 0.0, -0.5, -0.5, 0.25, -0.75, -0.25, 0.75, 0.75, -0.75, 0.25, 0.0, -0.5, 1.0, -0.75, -0.25, -0.5, 0.5, -0.75, 0.75, 0.5, -0.25, -1.0, 1.0, -0.75, 1.0, 0.5, -1.0, 0.5, 0.75, 0.5, 0.25, 0.0, -0.75, 0.75, 0.5, 0.25, 0.0, 0.0, -0.75, 0.25, -1.0, -1.0, 0.0, -0.5, 0.75, 1.0, -0.5, 1.0, 1.0, 0.0, -1.0, 0.25, -0.25, 0.25, 0.5, 0.0, 0.75, -0.5, 0.25, 1.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([1.0, 0.0, -0.25, 0.75, 0.5, -1.0, -1.0, 1.0, -0.5, 0.25, 1.0, 0.75, -0.75, -0.75, -0.75, -0.5, 0.0, -0.25, 0.25, 0.5, 1.0, 0.75, 0.25, 1.0, -0.5, -1.0, -1.0, 0.5, 0.0, -0.5, -1.0, 0.5, 0.5, 0.75, -0.25, 0.75, 1.0, -1.0, 0.25, 0.5, 0.75, 0.0, -1.0, -1.0, -0.25, 0.0, 0.5, 1.0, -1.0, -1.0, -0.5, 0.0, 0.0, -0.75, 0.0, 0.0, -0.25, -0.25, -1.0, 0.75, -0.5, 1.0, 1.0, 1.0, 0.0, -0.5, 0.5, -0.5, -0.5, -0.25, -0.5, 1.0, 0.0, -0.5, 0.75, 0.5, 0.25, -1.0, 0.5, 0.5, -0.75, 1.0, -0.5, 0.5, -0.5, 0.25, -1.0, -0.25, 0.75, -0.75, 0.5, -0.75, 0.25, 0.25, -0.75, 0.0, -0.5, 0.5, -0.25, -0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([-0.25, 0.75, 0.25, 0.75, -0.25, -0.75, -0.5, -0.5, 0.5, -0.75, 1.0, -1.0, -0.25, -1.0, -1.0, -0.5, 1.0, 0.75, 0.0, 0.75, 0.5, -0.75, -0.25, 0.5, 0.0, 0.25, -1.0, -0.25, 0.0, 0.0, 0.0, 0.75, 1.0, -0.25, 0.0, -0.25, -0.75, 0.75, 0.0, -0.25, -1.0, -0.25, 0.75, -0.75, -0.75, -0.5, -0.75, 0.25, -0.5, 0.75, 0.5, -0.25, -0.5, 0.0, 1.0, -0.5, -1.0, 0.75, -0.75, 0.0, 0.25, 1.0, 0.75, 0.0, -0.5, 1.0, 0.25, 1.0, -0.25, -0.25, 1.0, -0.25, 1.0, -0.25, 1.0, 1.0, 1.0, 0.25, 0.25, -1.0, -0.75, 0.0, -1.0, 0.25, -0.25, 0.25, 0.5, -0.75, 0.75, 0.5, 0.0, 0.75, 0.75, -0.5, 0.5, 0.5, 0.25, -0.25, -0.75, -0.5, ]);
    
    const array4 = new Float32Array([-1.0, 0.5, 0.75, -0.25, -0.5, -0.75, 1.0, -0.75, 1.0, 0.0, 0.25, 0.75, 0.0, -0.75, -0.75, 0.75, 0.5, -1.0, -1.0, 0.25, -0.25, -0.75, -0.25, -0.25, 0.25, 0.75, -0.75, -0.75, 0.0, 0.75, 0.5, 0.25, -0.25, 1.0, -0.75, -0.25, 0.5, 0.75, 0.25, 0.0, 0.25, 0.25, -1.0, -0.5, -1.0, 1.0, -0.75, 1.0, -1.0, 0.0, 0.75, 0.75, 0.5, -0.5, 0.25, 1.0, 1.0, -0.75, -0.25, -0.75, 0.25, 0.75, -1.0, 1.0, 0.75, -0.25, -1.0, 0.0, -1.0, -0.75, -1.0, -0.75, -0.75, 0.75, 0.75, -0.25, -1.0, 0.0, 0.75, -1.0, 0.0, -0.25, -0.75, -0.5, -1.0, -0.75, -0.25, -1.0, 0.5, 1.0, 0.25, -0.25, 0.25, 0.25, 0.25, 1.0, 0.0, -1.0, 1.0, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    
    
    const array5 = new Float32Array([1.0, 0.5, 1.0, -1.0, -0.5, 0.75, 0.0, 0.75, 0.0, 1.0, 0.25, -0.75, -0.25, -0.25, 1.0, 0.5, 1.0, -1.0, -0.5, -0.5, 1.0, 0.75, 0.25, -1.0, -0.25, 0.0, -0.25, 0.25, 0.0, -1.0, 0.5, 0.0, -0.75, 1.0, 0.75, -1.0, -0.5, 0.25, -1.0, 0.25, 0.75, 0.0, -0.5, -0.25, -0.25, -1.0, -0.5, 0.75, 0.75, 1.0, 0.25, 0.5, 0.75, 0.75, 0.75, 0.0, 1.0, 0.75, -0.5, -0.75, 0.75, 1.0, -0.5, 0.0, 0.75, 0.5, -0.5, -0.5, 0.25, -0.75, 0.0, -0.25, -0.25, 0.75, -0.75, 1.0, 1.0, 0.75, 0.25, 0.5, 0.0, 0.75, 0.5, -0.75, -1.0, -0.75, 1.0, 0.5, 0.25, -1.0, 0.0, -1.0, -0.25, -0.25, -1.0, -0.25, 1.0, -0.5, 0.5, 0.5, ]);
    const array6 = new Float32Array([0.25, -1.0, 0.75, 0.0, 1.0, -1.0, -0.25, -1.0, 0.0, -0.75, -0.5, 0.75, 0.5, 0.5, -0.75, -0.25, 0.25, 0.0, 0.5, 0.0, 0.0, 0.75, -1.0, 0.25, 0.75, -1.0, 1.0, -0.5, 0.25, -1.0, 0.0, -1.0, 0.75, 1.0, -0.25, -0.25, -0.75, -0.25, 0.5, -0.25, -0.25, 0.25, -0.75, -0.5, 0.0, 0.5, 0.75, 0.5, -0.25, -0.75, 0.5, -1.0, 0.25, 0.25, -1.0, -0.25, -0.25, 0.0, -0.75, -0.5, 0.5, 0.25, 0.75, -0.25, 0.5, -0.75, 1.0, 0.5, -1.0, 1.0, 0.5, -1.0, 0.75, -0.25, -0.75, 1.0, 0.5, 0.25, -0.75, 1.0, -0.5, 0.75, 0.75, 0.5, -0.75, -0.25, -0.25, 1.0, 0.5, 0.75, 1.0, 0.25, 0.25, -1.0, 0.0, 0.25, -0.5, -0.75, 1.0, 1.0, ]);
    
    const array7 = new Float32Array([0.0, -0.25, 0.5, -1.0, -0.5, 0.5, 0.25, 1.0, 0.75, -1.0, -0.5, 0.25, -1.0, 0.75, -0.5, 0.75, 0.0, 0.25, 0.25, 0.0, 0.0, -0.25, 0.5, 0.5, 0.25, 0.75, 1.0, 1.0, 0.0, 0.75, -1.0, 0.75, -0.75, -0.75, 0.25, -0.25, 1.0, 0.25, 0.25, -0.25, 1.0, -0.5, 0.25, -0.75, 0.5, 0.25, -1.0, -1.0, 0.75, 0.25, -1.0, -1.0, 0.75, 0.5, 0.5, -0.5, 0.5, -0.5, -0.5, 0.75, 0.75, -1.0, 1.0, 0.5, -0.5, 0.0, -0.25, -0.5, -0.75, -0.5, 0.5, -0.25, 0.5, 1.0, 0.25, 0.25, -1.0, -1.0, -1.0, -1.0, -0.75, -0.75, -0.5, 0.0, -1.0, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, 0.25, -1.0, -0.25, -0.5, 0.0, 0.25, -1.0, 0.25, -0.25, ]);
    const array8 = new Float32Array([-0.75, 0.0, 0.75, 1.0, -1.0, -0.25, 0.75, -1.0, 0.5, -0.75, 1.0, -0.25, 0.0, -0.5, 0.0, -1.0, 1.0, -0.75, 1.0, 0.25, -1.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.75, 0.5, 0.75, 0.75, 0.0, 0.75, 0.25, 0.0, -0.75, 0.0, 0.0, 1.0, 1.0, 0.0, -0.5, 0.75, 0.0, 0.5, -0.5, -0.75, -1.0, 1.0, -0.25, -0.75, 0.5, -1.0, -0.25, 0.5, 0.0, 0.5, 0.25, 0.75, 0.25, 0.25, -0.75, 1.0, 1.0, 0.25, -1.0, 0.25, -0.25, 0.0, 0.25, 0.25, -0.25, 0.75, -0.25, -1.0, 0.25, -1.0, 0.75, -1.0, 0.25, 0.75, -0.75, -1.0, -0.75, -0.25, 0.25, 1.0, 1.0, -0.5, 1.0, -0.25, 0.5, -0.25, 0.0, 0.0, -0.75, -1.0, 0.0, -0.75, -1.0, 0.5, ]);
    const array9 = new Float32Array([-1.0, 1.0, 0.75, 0.0, -0.5, 0.25, 1.0, 0.25, 0.25, 1.0, 0.0, 0.25, 0.25, 0.75, -1.0, -0.5, 1.0, 0.75, -0.25, -0.75, 0.5, -0.25, 0.25, -0.25, 0.5, 0.25, 0.5, 0.5, -0.75, -0.25, -0.5, 0.5, 0.5, 0.0, 0.5, -1.0, -0.25, 0.75, 0.25, 0.0, 0.0, -0.5, 0.75, -0.5, 1.0, 0.25, 0.25, 0.5, 0.5, -1.0, -0.75, 0.0, 0.5, -0.75, -0.75, -0.5, -0.75, -0.25, -0.5, 0.5, -1.0, 0.25, 0.75, -0.25, -0.25, -0.25, -0.5, 0.75, 1.0, 0.25, 1.0, 0.75, 1.0, -0.25, 0.0, -0.75, 0.25, -1.0, -1.0, -1.0, 0.75, -1.0, -0.25, -0.75, -1.0, 1.0, 0.25, 0.25, 1.0, 0.25, 1.0, -0.5, 1.0, -0.75, 0.5, -0.75, -0.75, -0.5, -0.75, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("out-of-memory");
    const array10 = new Float32Array([-0.5, 0.0, -0.25, -0.5, -0.5, 1.0, 0.5, 0.0, 0.0, 0.5, 0.25, -1.0, 1.0, 0.75, 0.25, 1.0, -0.25, -1.0, 0.25, 0.5, 0.0, 0.5, 1.0, 0.25, 1.0, 0.5, 0.5, 0.5, -1.0, -0.5, -0.5, -0.75, 1.0, 0.0, 0.5, -0.75, -0.75, 0.75, 0.25, -0.5, -1.0, -0.75, 0.25, 1.0, -0.75, 1.0, -0.75, 1.0, 1.0, -0.75, -1.0, 0.25, 0.75, -0.75, 0.0, -0.75, -0.75, -0.25, 1.0, 0.75, -0.5, -1.0, 0.0, 1.0, -0.75, -0.5, 0.25, 1.0, 0.75, -0.75, -1.0, 0.0, 1.0, 0.0, -0.75, 0.75, -1.0, 0.25, -0.75, 0.0, 0.5, 0.0, 0.25, -0.5, 0.25, 0.75, 0.75, -0.75, 0.75, 0.5, -0.75, 0.5, 0.25, 0.25, -0.5, 0.0, 0.25, 1.0, 0.0, 1.0, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query100.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder101.popDebugGroup();
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    query100.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder101.popDebugGroup();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1000.beginOcclusionQuery(0)
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    command_encoder101.clearBuffer(buffer100);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    
    command_encoder101.clearBuffer(buffer100);
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    texture100.destroy();
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
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

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    device10.queue.submit([command_buffer101, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device10.pushErrorScope("internal");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    buffer100.destroy()
    
    
    buffer101.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    command_encoder200.insertDebugMarker("mymarker");
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
    
    
    render_pass_encoder1000.setStencilReference(1);
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    query102.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query103.destroy()
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array11 = new Float32Array([-0.5, 0.25, 0.5, 0.25, -0.25, -0.5, 1.0, -0.75, 0.0, -0.5, 0.5, 0.5, 0.5, -0.75, 0.0, -0.75, 0.25, -0.5, 0.0, 0.5, 0.75, 0.25, -0.75, 0.0, 1.0, 0.75, 0.25, -0.5, 1.0, 0.5, 0.0, 0.75, 0.75, -1.0, -0.5, 0.75, -0.5, -0.75, 0.5, -0.25, 0.5, -1.0, -0.25, -0.25, 0.25, -0.5, 0.5, -0.25, -0.75, 1.0, 0.0, 0.25, 0.25, 0.5, 0.5, 1.0, -0.25, 0.25, -1.0, 0.25, -0.5, 1.0, 0.0, -0.75, 0.5, 0.5, 1.0, -1.0, -0.75, 1.0, -0.75, -1.0, -1.0, 0.75, 0.25, -0.5, 0.75, 1.0, -0.25, 1.0, -0.75, 1.0, -0.5, 0.75, 1.0, 0.0, -0.75, -0.5, 0.5, -1.0, -0.5, -0.75, 1.0, 0.5, 0.25, 0.75, 0.75, 1.0, -0.25, -0.25, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder201.insertDebugMarker("mymarker");
    device10.pushErrorScope("out-of-memory");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_buffer201 = command_encoder201.finish();
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1000.setStencilReference(1);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device30.pushErrorScope("out-of-memory");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    query200.destroy()
    
    
    render_pass_encoder1000.popDebugGroup();
    const array12 = new Float32Array([0.25, 0.5, -0.5, 1.0, 0.25, 0.75, 0.75, -0.5, 0.25, -0.5, 1.0, -0.75, 0.25, -1.0, 0.75, 1.0, -0.75, 0.5, 0.5, 0.25, 0.5, -0.5, 1.0, 0.0, 0.0, -1.0, -0.75, -1.0, -0.5, 0.5, -0.5, 0.25, -0.25, 0.75, 1.0, 0.25, 0.75, 0.25, 1.0, -0.5, -0.25, 0.25, -0.25, 0.25, 0.75, -0.75, 0.5, 0.5, 1.0, -0.5, -1.0, 0.25, 0.0, 0.5, -0.25, 0.25, 1.0, -0.25, 0.5, 0.75, 1.0, -0.25, -0.5, 1.0, 0.5, -0.5, 0.0, -0.5, 0.0, -0.25, -0.25, 0.75, 0.25, 0.5, 0.0, -1.0, 0.25, 0.0, -0.25, -1.0, 0.25, 0.75, -0.25, -0.5, 0.0, -0.75, 1.0, 0.5, 1.0, -0.75, 0.25, 0.0, 0.0, -0.5, 1.0, 0.75, 1.0, -1.0, 1.0, -0.75, ]);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer104.destroy()
    query201.destroy()
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    query201.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    buffer102.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder200.clearBuffer(buffer200);
    
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_bundle_encoder100.popDebugGroup();
    buffer103.destroy()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder1000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer108, 0, array11, 0, array11.length);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer108, 0, array8, 0, array8.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer108, 0, array4, 0, array4.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    texture200.destroy();
    query100.destroy()
    buffer108.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    device40.pushErrorScope("internal");
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer105.destroy()
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer201.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder101.popDebugGroup();
    
    buffer106.destroy()
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    buffer300.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    device20.pushErrorScope("internal");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    query100.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer109, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer109, 0, array12, 0, array12.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture202.destroy();
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    compute_pass_encoder4000.popDebugGroup()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture300.destroy();
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array10, 0, array10.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array8, 0, array8.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    query201.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    render_pass_encoder1000.popDebugGroup();
    device10.queue.writeBuffer(buffer109, 0, array12, 0, array12.length);
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.pushErrorScope("internal");
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    
    device10.queue.writeBuffer(buffer109, 0, array11, 0, array11.length);
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device10.queue.writeBuffer(buffer109, 0, array8, 0, array8.length);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const array13 = new Float32Array([0.0, 0.75, 0.25, -0.5, 0.75, -0.5, -1.0, -0.75, 1.0, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, 1.0, 0.75, -1.0, -0.75, 1.0, -0.75, 1.0, -1.0, -1.0, 0.0, 0.0, 1.0, 0.25, 0.25, 1.0, 0.5, 1.0, 0.5, 0.25, 0.25, -0.25, 0.5, -0.5, -0.75, 0.5, 0.25, -0.25, -0.75, 0.5, -0.75, 0.5, -0.5, -0.75, -0.25, 0.75, -1.0, 0.0, -0.75, 1.0, 0.5, -0.25, 0.75, 0.0, 0.25, 0.5, 0.25, 0.0, 1.0, -1.0, 0.25, -0.75, 1.0, 0.75, -1.0, 0.5, 1.0, 0.5, -0.5, 0.25, 1.0, -0.5, 0.25, -0.75, 0.25, -0.25, -1.0, 1.0, 1.0, -0.5, 0.75, 0.5, 1.0, 0.25, -0.5, -1.0, 0.25, 0.75, -0.75, 1.0, 0.5, 0.25, -0.5, 0.0, 0.5, -1.0, ]);
    
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    buffer400.destroy()
    buffer202.destroy()
    buffer107.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device20.queue.writeBuffer(buffer204, 0, array11, 0, array11.length);
    
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    query302.destroy()
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    device20.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    
    device50.destroy();
    device20.queue.writeBuffer(buffer204, 0, array12, 0, array12.length);
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    query105.destroy()
    const command_buffer402 = command_encoder402.finish();
    
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    
    render_bundle_encoder102.popDebugGroup();
    
    query104.destroy()
    query102.destroy()
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer109, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer109, 0, array9, 0, array9.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    compute_pass_encoder2000.popDebugGroup()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    texture302.destroy();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device20.queue.writeBuffer(buffer200, 0, array13, 0, array13.length);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer109, 0, array10, 0, array10.length);
    const array14 = new Float32Array([1.0, -0.25, 1.0, 1.0, 0.25, -0.75, 0.0, 0.0, 1.0, 0.75, -1.0, 0.25, -0.5, 0.75, -0.75, -0.75, -0.75, 0.0, -0.25, -0.5, -0.5, 0.5, 0.75, 0.75, 0.0, -1.0, 1.0, 0.25, 1.0, 0.0, 0.25, -0.75, -0.25, 1.0, -0.5, -1.0, 0.5, 1.0, 0.5, 1.0, -0.5, -0.25, 0.0, 0.25, -0.5, 0.5, 0.0, 0.75, 0.5, -1.0, -1.0, -0.5, -0.5, 0.5, -0.5, 0.5, -0.75, -0.25, 0.5, 0.5, 0.0, 0.75, 0.75, 0.0, 0.5, 0.25, 0.5, 0.75, -0.5, 0.5, -0.25, -1.0, -0.25, 0.0, -0.25, 0.75, 0.5, -0.25, 0.75, 1.0, 0.5, 0.0, 0.0, -0.5, -0.75, -1.0, -0.75, -1.0, 0.25, 0.75, -1.0, 0.25, -0.25, -1.0, 0.0, 0.25, 0.0, -0.25, 0.5, 0.75, ]);
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer200, 0, array14, 0, array14.length);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer204, 0, array8, 0, array8.length);
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device10.queue.writeBuffer(buffer109, 0, array13, 0, array13.length);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer109, 0, array12, 0, array12.length);
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query301
    });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2000.end();
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder4010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder3010.popDebugGroup()
}