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
    
    const array0 = new Float32Array([-1.0, 0.5, 0.5, -0.75, 0.75, -0.25, -0.25, 1.0, 0.0, -0.75, -0.5, -0.5, -0.5, -0.25, 1.0, -0.25, 1.0, 0.25, -0.25, 0.25, -0.25, -1.0, 0.75, -1.0, -1.0, 0.25, 1.0, -0.25, -0.25, -0.75, 0.25, 0.25, 0.75, -0.25, 0.0, 0.0, -0.25, -0.75, 1.0, 0.5, 0.5, 1.0, -0.25, 1.0, 0.5, -0.75, 0.25, 0.0, 0.75, 1.0, -1.0, 0.75, 0.5, 0.75, -0.5, -0.75, -0.25, 0.5, -1.0, 1.0, 0.25, 0.5, 0.75, -0.25, 0.5, 0.75, 0.25, 0.5, -0.5, 0.0, -0.25, 1.0, 0.0, -0.5, 0.25, -1.0, -0.75, 0.75, -1.0, 0.25, -0.75, -1.0, 0.5, -1.0, -0.5, 0.25, 0.25, -1.0, -0.25, 0.75, 0.75, -0.5, 0.5, -0.25, -0.25, 1.0, -0.25, 0.0, -0.5, 0.75, ]);
    const array1 = new Float32Array([-0.25, 0.75, -0.25, 0.25, 0.25, -0.5, 1.0, 1.0, 0.75, 0.75, 1.0, 1.0, 0.75, -0.5, -1.0, -0.5, 0.5, -0.25, -0.25, -0.25, 1.0, -0.25, 0.5, 0.25, 0.0, -0.75, -0.75, 0.25, -0.75, -0.5, 1.0, 0.75, -0.25, -0.5, 0.75, -0.25, 0.75, -0.25, -0.5, 1.0, -0.25, 0.75, -0.75, 0.5, -0.75, -0.75, -1.0, -1.0, 0.75, -1.0, -1.0, 0.25, 1.0, -0.25, 0.0, -0.75, 0.75, 1.0, 0.0, 0.5, -0.75, 0.0, 0.25, 0.25, 1.0, -0.5, -0.5, -0.75, -0.25, 0.5, 0.75, 0.5, 0.75, 0.5, 0.5, -1.0, -0.5, -0.75, 0.0, -1.0, 0.25, 0.75, -0.75, 0.0, -0.5, -0.75, 0.5, -0.75, 0.25, 0.0, -0.25, 0.0, 1.0, 1.0, 0.5, 0.25, 0.25, -1.0, 0.75, -0.5, ]);
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.5, 0.5, 0.75, 0.75, 0.5, 0.75, 1.0, 0.75, -0.25, 0.25, 0.0, 1.0, 0.5, 1.0, 0.75, -1.0, 0.75, -0.5, 0.5, -1.0, 0.25, -1.0, -0.75, -0.25, -0.25, -0.75, 0.75, 1.0, 0.75, -1.0, -1.0, -1.0, 0.0, 1.0, 0.25, 0.25, 1.0, 0.25, -0.5, 1.0, 0.0, 1.0, -1.0, 0.5, 0.0, 0.5, -1.0, -0.75, 0.75, -0.75, 1.0, 0.0, -0.75, -0.25, -0.5, 0.75, 0.5, -0.75, 0.5, 0.75, -1.0, 0.25, 0.0, -0.5, 0.25, 0.75, 0.75, -0.5, -0.25, 0.25, 0.25, 0.75, 1.0, 0.0, -1.0, -0.75, 0.0, -0.75, 1.0, 1.0, 1.0, -1.0, 1.0, -1.0, 0.5, 0.5, 0.5, 0.25, -0.25, 1.0, 0.5, 0.5, -1.0, -0.5, -0.25, -0.25, -0.75, 0.5, 1.0, 0.75, ]);
    
    
    const array3 = new Float32Array([1.0, -0.25, 0.5, 0.75, 1.0, 1.0, -0.5, 0.25, -0.5, -0.5, -0.75, -0.25, 1.0, 0.75, 1.0, 1.0, -1.0, -0.25, 1.0, 0.0, -1.0, -1.0, 0.25, 0.25, 0.25, -0.75, 0.0, -0.75, 0.5, 0.75, 1.0, -1.0, 0.25, 0.75, 0.0, -1.0, 0.5, 0.75, 0.75, 0.25, -0.25, 0.0, 0.25, -0.5, -0.5, 0.0, -0.25, 0.0, 1.0, 1.0, 0.5, 0.25, 0.5, -0.5, -1.0, -0.25, -1.0, -0.25, 0.75, 0.0, 0.25, 0.75, 0.5, -1.0, 0.75, 0.0, 0.25, -0.5, -0.25, 1.0, -0.25, -0.75, 0.25, 0.5, 0.5, 1.0, 1.0, 1.0, -0.5, -0.5, -0.5, 1.0, 1.0, -0.25, -0.75, 0.25, -0.75, -1.0, 0.0, 0.5, -0.25, -0.5, 0.25, -0.75, -0.75, 0.25, 0.75, 0.75, 1.0, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array4 = new Float32Array([0.0, 0.25, -1.0, -0.25, -0.5, 0.25, -1.0, -0.5, 0.0, -1.0, 1.0, 0.5, 0.25, 1.0, 0.5, 0.0, 0.75, 1.0, 0.25, -1.0, 0.0, -0.75, -1.0, -1.0, 0.5, 0.0, 0.5, -0.75, 1.0, 0.25, -0.75, 0.0, 0.0, -1.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.25, 1.0, -0.75, -0.75, -1.0, 1.0, -0.75, -0.5, 0.25, -1.0, -0.5, 0.0, -0.25, -1.0, -0.5, -0.75, -0.75, 0.0, -0.25, -0.25, -1.0, 0.0, 0.5, 0.5, 1.0, -0.25, 0.5, -0.75, -1.0, 0.25, 0.5, -0.5, 1.0, -0.25, -0.75, -1.0, -0.75, -1.0, -0.25, -0.75, 0.0, -0.75, 0.75, -0.5, -0.5, 0.75, 0.25, 0.5, -0.25, 0.0, -0.5, -0.25, -0.5, 0.5, -0.75, 0.5, 0.0, 0.75, 1.0, 0.75, -0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const array5 = new Float32Array([-0.5, 0.75, -0.5, -1.0, -0.5, 0.75, -1.0, -0.5, -0.5, 1.0, 0.0, -0.75, 0.75, 0.5, 1.0, 1.0, -1.0, -1.0, 0.5, 0.75, 0.75, -0.5, -1.0, -0.5, 0.0, 0.0, 0.25, 0.25, -0.5, -0.25, 1.0, -0.5, -0.75, 0.5, -0.25, -0.25, -0.75, 0.5, -0.25, 0.75, -0.75, -1.0, 1.0, 0.25, -1.0, -0.5, -0.5, -1.0, 1.0, -0.75, 0.0, 0.75, 0.25, 0.75, -0.25, 0.5, 0.75, -0.25, -1.0, -1.0, 0.75, 0.75, -1.0, 0.5, 0.5, -0.75, 1.0, 1.0, -1.0, -1.0, 0.25, 0.75, -1.0, 1.0, 1.0, -0.75, -0.5, 1.0, 0.0, 0.25, 1.0, -0.75, 0.25, -0.25, 0.0, -0.75, 1.0, -1.0, 1.0, 0.5, 1.0, 1.0, -0.75, -1.0, 0.0, -0.5, -0.75, 0.0, 0.25, 0.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
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
    
    command_encoder102.insertDebugMarker("mymarker");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    command_encoder103.pushDebugGroup("mygroupmarker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const array6 = new Float32Array([-0.75, -0.75, 0.75, -0.5, 0.25, -1.0, -0.5, -0.5, 0.75, 0.0, 0.5, -0.5, -0.75, 0.0, -1.0, 0.25, -0.75, -0.5, 0.75, 0.25, -0.25, 0.75, 0.5, -1.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.75, 0.0, 0.75, 0.0, -1.0, -0.5, -1.0, -0.5, -0.75, -0.75, -0.75, -0.5, 0.5, 1.0, -1.0, 0.0, -0.25, 0.5, -0.25, -0.5, 1.0, 0.5, 1.0, -0.25, 0.25, 0.0, -1.0, -1.0, 0.25, 0.5, -1.0, 0.0, 0.25, -0.25, 0.5, 0.25, 0.25, -0.75, -0.25, -0.5, -0.75, -0.25, -0.5, 0.5, -0.75, 1.0, -1.0, -0.75, 0.0, 0.75, 0.5, 0.5, -0.75, 0.25, 0.5, 1.0, 0.5, 0.25, -1.0, -0.5, -0.5, 0.75, 0.75, 0.75, -0.5, 0.0, -0.25, -0.25, -0.5, 0.75, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1030.setPipeline(render_pipeline100);
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer100.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    const array7 = new Float32Array([0.5, 0.5, 0.25, 0.0, -0.25, 1.0, -0.25, 0.0, -0.25, -0.25, -1.0, -0.75, 0.75, 0.25, -0.25, 1.0, -1.0, -0.25, 0.25, 0.75, -0.75, 0.5, -0.75, 0.0, -0.75, 0.0, -0.75, 0.0, 1.0, -0.75, 0.0, 1.0, 0.0, 0.75, -0.25, 0.0, 1.0, 0.0, -0.75, -0.25, -0.25, 1.0, 0.75, 1.0, 0.5, 0.0, 0.0, 0.0, 0.5, 0.25, 1.0, 0.0, -0.75, -0.75, -0.25, -0.25, 0.0, 0.5, 1.0, 0.75, -0.75, -1.0, -0.5, -0.25, 0.0, -0.75, 0.75, 0.0, -0.5, 0.75, 1.0, 0.5, -0.5, 0.0, 0.75, -0.5, 0.5, -0.25, -1.0, -1.0, -0.75, 1.0, 0.25, -0.25, -1.0, 0.5, 0.25, -0.25, 0.0, -0.25, 0.75, 0.5, 1.0, 0.75, 1.0, 0.75, -0.5, 0.0, -0.25, 1.0, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder1010.popDebugGroup()
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
    device00.destroy();
    compute_pass_encoder1000.popDebugGroup()
    query100.destroy()
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    
    query101.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    render_pass_encoder1050.setStencilReference(1);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    
    render_pass_encoder1000.popDebugGroup();
    
    const array8 = new Float32Array([0.75, 0.0, 0.25, 0.25, -0.25, -0.5, 0.5, -0.75, -1.0, 0.25, 0.0, 0.5, -0.75, -0.25, 1.0, -0.75, 0.0, -0.25, 0.5, 0.25, -0.75, 0.5, -0.25, 0.5, 0.25, 1.0, 0.0, 0.75, -0.75, -0.25, 0.75, -1.0, -0.75, 0.25, -1.0, -0.75, -1.0, 0.0, 0.0, 0.0, 0.5, -0.5, -1.0, -1.0, 0.5, 1.0, -1.0, -0.5, -0.75, -0.75, 1.0, -0.75, 0.25, 0.25, 0.25, 1.0, 0.25, 0.5, 0.25, 1.0, 0.75, -1.0, 0.0, 0.0, 0.0, 0.5, 1.0, -0.75, -0.75, -1.0, -1.0, -1.0, 0.5, 0.5, 0.0, 0.0, -1.0, -0.25, -1.0, 0.0, 0.75, -1.0, 0.75, 0.75, 1.0, -0.5, 0.0, -0.75, 0.25, 1.0, 0.25, -0.5, 0.5, 0.5, 1.0, -1.0, 1.0, 1.0, 0.5, -1.0, ]);
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_pass_encoder1050.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.75, 0.0, 1.0, 0.5, 0.0, 0.0, -0.5, 0.75, 0.25, 1.0, -0.25, 0.0, 1.0, -0.25, -0.75, -0.5, 0.5, 1.0, -1.0, 0.25, -1.0, 0.0, 0.5, 0.25, 0.5, 0.25, -0.75, -0.5, 1.0, 0.25, -0.75, 1.0, 0.75, 1.0, 0.0, -0.75, 0.0, 0.5, 0.0, -0.25, 0.5, 0.5, 0.25, 0.25, -0.5, -1.0, -0.75, 0.5, -1.0, -0.5, -0.75, 0.0, 0.75, -0.75, 0.5, 1.0, 0.5, -0.5, -1.0, -1.0, -1.0, -0.25, -1.0, 0.75, 0.25, -1.0, 0.0, -0.75, -1.0, -1.0, -0.25, 0.5, 0.25, -1.0, 0.25, -0.25, 0.0, -0.5, 0.25, 1.0, 1.0, 0.0, -0.75, 0.0, -1.0, 0.5, 0.5, -0.5, 0.5, 0.75, 0.5, -0.75, 0.25, 0.25, -0.25, -1.0, -1.0, 0.25, 0.25, -0.25, ]);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1060.pushDebugGroup("group_marker");
    render_pass_encoder1050.endOcclusionQuery()
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

    render_pass_encoder1030.setBindGroup(0, bind_group100);
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1060.insertDebugMarker("marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1060.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.insertDebugMarker("marker");
    command_encoder103.insertDebugMarker("mymarker");
    texture101.destroy();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1030.setVertexBuffer(0, buffer103);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1031.executeBundles([])
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    render_pass_encoder1030.draw(3);
    
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    render_pass_encoder1060.insertDebugMarker("marker");
    command_encoder100.clearBuffer(buffer103);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1031.executeBundles([])
    render_pass_encoder1050.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query102.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.insertDebugMarker("marker");
    query102.destroy()
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
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1031.pushDebugGroup("group_marker");
    const array10 = new Float32Array([0.25, 0.0, 0.0, -0.5, 0.75, 1.0, 0.5, 1.0, 0.5, 0.25, 0.5, -0.25, -1.0, -1.0, -0.25, -0.75, 0.75, 0.0, 0.5, 0.25, 0.0, 0.25, 0.5, 0.0, 1.0, 0.25, -0.75, -0.25, 0.5, 0.75, -1.0, 1.0, -1.0, -0.25, 0.25, -0.75, 1.0, -0.5, 0.0, 0.0, -0.25, -0.5, -0.5, -0.25, 0.5, -0.75, -0.75, -0.75, 0.5, -0.5, 0.5, 1.0, -0.75, 1.0, 0.5, 0.75, 0.25, -0.75, -0.5, -0.75, -0.75, 0.25, -1.0, -0.5, -1.0, -0.5, 0.5, -0.75, 0.0, -0.25, 0.0, 0.0, 0.5, 0.25, 0.25, -1.0, -0.25, 0.0, 0.5, 0.75, 0.0, 0.75, 1.0, -0.25, -0.5, 0.75, -0.5, 0.0, 0.25, -0.75, -0.75, 0.25, 0.75, -0.75, -0.75, 1.0, 0.25, 0.25, -0.5, 1.0, ]);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder1060.executeBundles([])
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
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
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    query103.destroy()
    render_pass_encoder1060.setPipeline(render_pipeline101);
    render_pass_encoder1000.setVertexBuffer(0, buffer103);
    render_pass_encoder1060.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1000.draw(3);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
        occlusionQuerySet: query101
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    query103.destroy()
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer106.destroy()
    
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1031.setPipeline(render_pipeline101);
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    buffer105.destroy()
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setPipeline(render_pipeline100);
    
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

    render_pass_encoder1060.setBindGroup(0, bind_group102);
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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

    render_pass_encoder1031.setBindGroup(0, bind_group103);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer101.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    
    render_pass_encoder1060.setVertexBuffer(0, buffer103);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.setStencilReference(1);
    query105.destroy()
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    buffer1010.destroy()
    render_pass_encoder1031.setVertexBuffer(0, buffer103);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    buffer107.destroy()
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group104);
    render_pass_encoder1001.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    render_pass_encoder1060.insertDebugMarker("marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    buffer1011.destroy()
    query101.destroy()
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1031.setStencilReference(1);
    buffer108.destroy()
    command_encoder101.resolveQuerySet(
        query104,
        0,
        32,
        buffer107,
        0
    )
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer104.destroy()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder1050.setVertexBuffer(0, buffer103);
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    command_encoder105.copyBufferToBuffer(
        buffer106,
        0,
        buffer104,
        0,
        400
    );
    
    
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    render_pass_encoder1030.insertDebugMarker("marker");
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
        occlusionQuerySet: query103
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1015, 0);
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    query103.destroy()
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
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query105.destroy()
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1050.popDebugGroup();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1020.popDebugGroup()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group106);
    
    render_pass_encoder1060.beginOcclusionQuery(0)
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    
    compute_pass_encoder1030.setPipeline(compute_pipeline105);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1060.pushDebugGroup("group_marker");
    device40.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer1015, 0, array0, 0, array0.length);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device10.queue.writeTexture({ texture: texture102 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    command_encoder105.copyBufferToBuffer(
        buffer1017,
        0,
        buffer106,
        0,
        400
    );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1018, 0);
    render_pass_encoder1050.setStencilReference(1);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.end();
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_pass_encoder1000.setStencilReference(1);
    buffer1018.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder1010.executeBundles([])
    
    
    device10.queue.writeBuffer(buffer1010, 0, array7, 0, array7.length);
    render_pass_encoder1060.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1017, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer1014, 0, array6, 0, array6.length);
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1015, 0, array4, 0, array4.length);
    render_pass_encoder1060.endOcclusionQuery()
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setStencilReference(1);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer1015, 0, array9, 0, array9.length);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    query104.destroy()
    device10.queue.writeBuffer(buffer1013, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer1015, 0, array7, 0, array7.length);
    render_pass_encoder1030.setStencilReference(1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer1015, 0, array10, 0, array10.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query104.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder100.clearBuffer(buffer1013);
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setPipeline(render_pipeline105);
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer1011.destroy()
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer1014, 0, array0, 0, array0.length);
    render_pass_encoder1001.popDebugGroup();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_pass_encoder1051.setPipeline(render_pipeline104);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_pass_encoder1060.setStencilReference(1);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer1015, 0, array9, 0, array9.length);
    buffer100.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder1051.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    query102.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1050.popDebugGroup();
    query103.destroy()
    render_pass_encoder1051.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer1015, 0, array10, 0, array10.length);
    device10.queue.writeTexture({ texture: texture102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.pushDebugGroup("group_marker");
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    texture300.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder1020.popDebugGroup()
    
    render_pass_encoder1051.insertDebugMarker("marker");
    command_encoder100.resolveQuerySet(
        query104,
        0,
        32,
        buffer1010,
        0
    )
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer109,
        0
    )
    render_pass_encoder1050.setIndexBuffer(buffer1017, "uint16");
    
    query102.destroy()
    device10.queue.writeBuffer(buffer1015, 0, array3, 0, array3.length);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline105.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group108);
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1010, 0);
    const command_buffer400 = command_encoder400.finish();
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1051.setBindGroup(0, bind_group109);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1051.setVertexBuffer(0, buffer103);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1051.drawIndirect(buffer1023, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1060.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    command_encoder102.popDebugGroup()
    compute_pass_encoder1000.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1030.end();
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1010);
    render_pass_encoder1050.end();
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group1011);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group1012);
    command_encoder103.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1010.setVertexBuffer(0, buffer103);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1001.setVertexBuffer(0, buffer1010);
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1051.end();
    const command_buffer105 = command_encoder105.finish();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.endOcclusionQuery()
    const command_buffer301 = command_encoder301.finish();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1030.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1051.drawIndirect(buffer1028, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1030.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder1000.end();
    device40.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1033, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1034, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1034, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1051.end();
    render_pass_encoder1051.end();
    render_pass_encoder1031.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.drawIndirect(buffer1018, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1050.drawIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1036, 0);
    device40.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    device30.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder1060.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1026, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1026, 0);
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1014);
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder1031.drawIndirect(buffer1034, 0);
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1035, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1051.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1051.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndirect(buffer1036, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1050.end();
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1051.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1030.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1060.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndirect(buffer1029, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1036, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1036, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1043, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1026, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1035, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1020.end();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1034, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1016);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer1043, "uint16");
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1060.drawIndirect(buffer1023, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1035, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1060.end();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1023, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    compute_pass_encoder1000.popDebugGroup()
    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1049,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1018);
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1017, 0);
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1020);
    render_pass_encoder1010.drawIndirect(buffer1034, 0);
    render_pass_encoder1031.drawIndexed(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1054, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1050, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.end();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1055, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1055, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1033, "uint16");
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1054, 0);
    device30.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1021);
    render_pass_encoder1050.setIndexBuffer(buffer1047, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1051.drawIndirect(buffer1041, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1001.drawIndirect(buffer1055, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1030.end();
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder1010.setIndexBuffer(buffer1058, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1061,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    compute_pass_encoder1010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder1031.end();
    device40.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1062, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1062, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1051.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndirect(buffer1034, 0);
    device30.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1001.draw(3);
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1059, 0);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1001.drawIndirect(buffer1056, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1059, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    device40.queue.submit([]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1062, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1024);
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1051.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1050.end();
    device10.queue.submit([]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer103, ]);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1025);
    render_pass_encoder1060.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1051.drawIndirect(buffer1065, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1057, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1067, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1067, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1062, 0);
    render_pass_encoder1051.drawIndirect(buffer1023, 0);
    render_pass_encoder1051.drawIndirect(buffer1064, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1068, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1068, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1016, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1050.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer1068, 0);
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1026);
    render_pass_encoder1050.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1050.drawIndirect(buffer1062, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.popDebugGroup();
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1027);
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1028);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1075, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1075, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1031.end();
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1031.drawIndirect(buffer1075, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1060.drawIndirect(buffer1075, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1060.drawIndirect(buffer1023, 0);
    render_pass_encoder1001.drawIndirect(buffer1075, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndirect(buffer1075, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.draw(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1000.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1062, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder1050.drawIndirect(buffer1054, 0);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.popDebugGroup();
    device30.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1067, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1031.drawIndirect(buffer1067, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1076, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1076, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1029);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1050.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1059, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1076, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1050.drawIndirect(buffer1037, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1050.drawIndirect(buffer1067, 0);
    render_pass_encoder1051.drawIndirect(buffer1069, 0);
    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1080,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1030);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer102, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1010.draw(3);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1081, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1081, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1030.drawIndirect(buffer1078, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1051.drawIndirect(buffer1026, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1051.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndirect(buffer1067, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1057, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1055, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1082, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1082, 0);
    render_pass_encoder1031.popDebugGroup();
    device40.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1057, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1051.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1083, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndirect(buffer1076, 0);
    render_pass_encoder1050.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndirect(buffer1077, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1084, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1084, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1082, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1026, 0);
    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1086,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1031);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1060.drawIndirect(buffer1081, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1051.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1068, 0);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1072, 0);
    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1088,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1032);
    render_pass_encoder1031.drawIndirect(buffer1064, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1070, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1055, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1037, "uint16");
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1033);
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1092,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1034);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndirect(buffer1062, 0);
    render_pass_encoder1050.drawIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer106, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer1081, 0);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1031.drawIndirect(buffer1017, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1001.draw(3);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1001.drawIndirect(buffer1066, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1031.drawIndirect(buffer1084, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer1039, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    render_pass_encoder1051.drawIndirect(buffer1067, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1001.endOcclusionQuery()
    compute_pass_encoder1030.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndirect(buffer1062, 0);
    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1094,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1035);
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1036);
    render_pass_encoder1051.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1000.drawIndirect(buffer1074, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.drawIndirect(buffer1084, 0);
    render_pass_encoder1010.drawIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1097, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1097, 0);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer106, ]);
    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1099,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1037);
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1050.end();
    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10101,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1038);
    render_pass_encoder1001.end();
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1030.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10102, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10102, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1010.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1060.drawIndirect(buffer1094, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1060.drawIndirect(buffer1074, 0);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1096, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1072, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer1082, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1060.drawIndirect(buffer1076, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10104,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1039);
    render_pass_encoder1030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1096, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1076, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1067, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1067, 0);
    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10106,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1040);
    render_pass_encoder1030.drawIndirect(buffer1084, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1082, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1032, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1051.drawIndirect(buffer1068, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    render_pass_encoder1000.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10107, 0);
    device30.queue.submit([command_buffer300, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10108, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10108, 0);
    render_pass_encoder1060.drawIndirect(buffer1091, 0);
    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10110,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1041);
    render_pass_encoder1050.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1001.draw(3);
    device10.queue.submit([]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1067, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    compute_pass_encoder1030.popDebugGroup()
    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10112,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1042);
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1060.drawIndirect(buffer10108, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1075, 0);
    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10114,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1043);
    render_pass_encoder1051.drawIndirect(buffer1097, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10115, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10115, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer10115, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1056, 0);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    render_pass_encoder1051.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1050.drawIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1051.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10117,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1044);
    render_pass_encoder1051.drawIndirect(buffer1097, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1051.setIndexBuffer(buffer1059, "uint16");
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer1076, 0);
    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10119,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1045);
    render_pass_encoder1000.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1059, 0);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10121,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1046);
    render_pass_encoder1031.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1001.setIndexBuffer(buffer1091, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1031.drawIndirect(buffer10117, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1076, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1087, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1077, 0);
    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10123,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1047);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer10121, "uint16");
    device30.queue.submit([command_buffer300, ]);
    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10125 = device10.createBuffer({
        label: "buffer10125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1048 = device10.createBindGroup({
        label: "bind_group1048",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10125,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1048);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    compute_pass_encoder1000.end();
    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1049 = device10.createBindGroup({
        label: "bind_group1049",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10127,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1049);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1050 = device10.createBindGroup({
        label: "bind_group1050",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10129,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1050);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer10109, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1036, 0);
    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1051 = device10.createBindGroup({
        label: "bind_group1051",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10131,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1051);
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    const buffer10132 = device10.createBuffer({
        label: "buffer10132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10133 = device10.createBuffer({
        label: "buffer10133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1052 = device10.createBindGroup({
        label: "bind_group1052",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10133,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1052);
    render_pass_encoder1051.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1083, 0);
    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10135 = device10.createBuffer({
        label: "buffer10135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1053 = device10.createBindGroup({
        label: "bind_group1053",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10135,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1053);
    render_pass_encoder1001.drawIndirect(buffer1097, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10136 = device10.createBuffer({
        label: "buffer10136",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10136, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10136, 0);
    render_pass_encoder1050.drawIndirect(buffer1071, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1067, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1001.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10115, 0);
    device30.queue.submit([]);
    render_pass_encoder1050.drawIndirect(buffer10131, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1020.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndirect(buffer10102, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1030, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1092, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1051.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    device30.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1075, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1076, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer1084, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.drawIndirect(buffer1039, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1010.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1034, 0);
    device40.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1050.drawIndexedIndirect(buffer10132, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer10122, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1031.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1031.drawIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndexed(3);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.drawIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndirect(buffer10136, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1060.drawIndirect(buffer1081, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1067, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer10124, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1097, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10137 = device10.createBuffer({
        label: "buffer10137",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10137, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10137, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1000.drawIndirect(buffer1075, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer1067, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1031.setIndexBuffer(buffer10129, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10115, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer10115, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndirect(buffer10115, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1064, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1050.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10129, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1066, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10136, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1090, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10107, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1001.drawIndirect(buffer10108, 0);
    render_pass_encoder1010.drawIndirect(buffer10104, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10101, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1031.drawIndirect(buffer1088, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1060.drawIndirect(buffer1097, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer1082, 0);
    const buffer10138 = device10.createBuffer({
        label: "buffer10138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1054 = device10.createBindGroup({
        label: "bind_group1054",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10139,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1054);
    render_pass_encoder1031.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1000.drawIndirect(buffer1034, 0);
    render_pass_encoder1051.drawIndirect(buffer10109, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1050.drawIndirect(buffer10131, 0);
    device30.queue.submit([]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndexedIndirect(buffer10133, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndirect(buffer1090, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1023, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1030.drawIndirect(buffer1083, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1010.drawIndirect(buffer1068, 0);
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1051.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1051.drawIndirect(buffer10137, 0);
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10140 = device10.createBuffer({
        label: "buffer10140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10140, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10140, 0);
    render_pass_encoder1031.drawIndirect(buffer1072, 0);
    device40.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1031.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1018, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1051.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1082, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1033, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10141 = device10.createBuffer({
        label: "buffer10141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10141, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10141, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1010.drawIndirect(buffer10141, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1030.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10123, 0);
    render_pass_encoder1060.drawIndirect(buffer10124, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer10131, 0);
}